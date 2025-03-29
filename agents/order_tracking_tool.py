import pymysql
import os
import re
from langchain.tools import Tool
from langchain_openai import ChatOpenAI
from langchain_groq import ChatGroq
from langchain.prompts import PromptTemplate

from dotenv import load_dotenv

# Load environment variables
load_dotenv()
MYSQL_PWD = os.getenv("MYSQL_PWD")
# os.environ["OPENAI_API_KEY"] = os.getenv("OPENAI_API_KEY")
os.environ["GROQ_API_KEY"] = os.getenv("GROQ_API_KEY")

# Database connection settings
DB_CONFIG = {
    "host": "localhost",
    "user": "root",
    "password": MYSQL_PWD,
    "database": "EcomMindDB"
}

# SQL Query Generation Template
sql_prompt = PromptTemplate(
    input_variables=["query"],
    template="""
    Given the following user query: "{query}", generate an optimized SQL query 
    to retrieve order tracking details from the OrderHistory table in MySQL.

    The table structure is:
    - order_id (INT, Primary Key)
    - customer_id (INT)
    - sku (VARCHAR)
    - product_name (VARCHAR)
    - category (VARCHAR)
    - quantity (INT)
    - price (DECIMAL)
    - total_price (DECIMAL)
    - order_date (DATETIME)
    - status (ENUM('Pending', 'Shipped', 'Delivered', 'Cancelled'))

    Ensure:
    - If an order ID is mentioned, filter by `order_id` in the WHERE clause.
    - If a customer asks for "recent orders", retrieve the latest orders based on `order_date`.
    - If a customer asks for "all my orders", retrieve all orders grouped by `order_id`.
    - Do not use placeholders. Return a fully executable SQL statement.
    - Return only the SQL statement without markdown formatting.
    """
)

# Initialize OpenAI LLM
# llm = ChatOpenAI(model_name="gpt-4o", temperature=0)
llm = ChatGroq(model_name="llama-3.3-70b-versatile", temperature=0)

# LLM Chain to generate SQL queries
sql_chain = sql_prompt | llm

# Function to execute SQL query
def execute_sql_query(sql_query):
    print("Generated SQL Query:", sql_query)  # Debugging

    try:
        conn = pymysql.connect(**DB_CONFIG)
        cursor = conn.cursor()
        cursor.execute(sql_query)
        result = cursor.fetchall()

        # Fetch column names dynamically
        column_names = [desc[0] for desc in cursor.description]

        cursor.close()
        conn.close()
        return result, column_names  # Return both data and column names
    except Exception as e:
        return f"Error executing query: {str(e)}", None

# Define Order Tracking Tool
def track_order(query):
    # Generate SQL query using LLM
    sql_query = sql_chain.invoke(query)
    raw_sql = sql_query.content.strip()  # Get the response content

    # **Fix**: Remove markdown syntax (```sql ... ```)
    cleaned_sql = re.sub(r"```sql|```", "", raw_sql).strip()

    # Execute SQL and fetch results
    results, columns = execute_sql_query(cleaned_sql)

    if isinstance(results, str):  # If there's an error message
        return results

    if results:
        # ✅ Format response as JSON
        response_data = []
        for row in results:
            response_data.append({col: val for col, val in zip(columns, row)})

        return {"order_details": response_data}  # JSON response

    return {"message": "No orders found matching your criteria."}

# Wrap function as a LangChain Tool
OrderTrackingTool = Tool(
    name="OrderTrackingTool",
    func=track_order,
    description="Fetch order details from OrderHistory table based on user queries."
)

# Example Test Queries
if __name__ == "__main__":
    test_queries = [
        "Where is my order #4?",
        "Show me my last 3 orders my customer id is 3041"
    ]
    
    for query in test_queries:
        print("\nUser Query:", query)
        print(OrderTrackingTool.invoke(query))
