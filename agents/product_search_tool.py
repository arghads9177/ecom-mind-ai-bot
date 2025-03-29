import pymysql
import os
import re
from langchain.tools import Tool
from langchain_openai import ChatOpenAI
from langchain_huggingface import HuggingFaceEndpoint
from langchain_groq import ChatGroq
from langchain.prompts import PromptTemplate
from huggingface_hub import login

from dotenv import load_dotenv

# Load environment variables
load_dotenv()
MYSQL_PWD = os.getenv("MYSQL_PWD")
os.environ["OPENAI_API_KEY"] = os.getenv("OPENAI_API_KEY")
os.environ["HUGGINGFACE_API_KEY"] = os.getenv("HUGGINGFACE_API_KEY")
os.environ["GROQ_API_KEY"] = os.getenv("GROQ_API_KEY")

# login()

# Database connection settings
DB_CONFIG = {
    "host": "localhost",
    "user": "root",
    "password": MYSQL_PWD,
    "database": "EcomMindDB"
}

# SQL Query Generation Template with Case-Insensitive Search
sql_prompt = PromptTemplate(
    input_variables=["query"],
    template="""
    Given the following user query: "{query}", generate an optimized SQL query 
    to retrieve product details from the PricingInventory table in MySQL.

    The table structure is:
    - sku (VARCHAR)
    - product_name (VARCHAR)
    - category (VARCHAR)
    - brand (VARCHAR)
    - price (DECIMAL)
    - stock (INT)

    Ensure:
    - If a price range is mentioned (e.g., "under ₹20,000"), include it in the WHERE clause.
    - If a category or brand is mentioned, filter accordingly using LOWER() to ensure case-insensitive search.
    - Convert all text comparisons to lowercase, e.g., WHERE LOWER(product_name) LIKE LOWER('%query_value%').
    - If stock availability is required, add "stock > 0".
    - Do not use placeholders. Return a fully executable SQL statement.
    - Return only the SQL statement without markdown formatting in single line.
    """
)

# Initialize OpenAI LLM
llm = ChatOpenAI(model_name="gpt-4o", temperature=0)
# llm = HuggingFaceEndpoint(repo_id="defog/sqlcoder-7b-2")  
# llm = ChatGroq(model_name="llama3-8b-8192", temperature=0)

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

# Define Product Search Tool
def product_search(query):
    # Generate SQL query using LLM
    sql_query = sql_chain.invoke(query)
    print(sql_query)
    raw_sql = sql_query.content.strip()  # Get the response content
    # raw_sql = sql_query.strip() 

    # **Fix**: Remove markdown syntax (```sql ... ```)
    cleaned_sql = re.sub(r"```sql|```", "", raw_sql).strip()

    # Execute SQL and fetch results
    results, columns = execute_sql_query(cleaned_sql)

    if isinstance(results, str):  # If there's an error message
        return results

    if results:
        # Format response dynamically based on returned columns
        response = "\n".join(
            [", ".join(f"{col}: {val}" for col, val in zip(columns, row)) for row in results]
        )
    else:
        response = "No products found matching your criteria."

    return response

# Wrap function as a LangChain Tool
ProductSearchTool = Tool(
    name="ProductSearchTool",
    func=product_search,
    description="Retrieve product details from PricingInventory table based on user queries."
)

# Example Test Query
if __name__ == "__main__":
    test_query = "Show me price and brand of Wheat Flour"
    print(ProductSearchTool.invoke(test_query))

# import pymysql
# import os
# import re
# from langchain.tools import Tool
# from langchain.prompts import PromptTemplate
# from langchain_huggingface import HuggingFacePipeline
# from transformers import pipeline
# from dotenv import load_dotenv

# # Load environment variables
# load_dotenv()
# MYSQL_PWD = os.getenv("MYSQL_PWD")

# # Database connection settings
# DB_CONFIG = {
#     "host": "localhost",
#     "user": "root",
#     "password": MYSQL_PWD,
#     "database": "EcomMindDB"
# }

# # Initialize HuggingFace model (Flan-T5)
# sql_generation_pipeline = pipeline(
#     "text2text-generation",
#     model="defog/sqlcoder-7b-2",  
#     tokenizer="defog/sqlcoder-7b-2",
#     max_length=512,
#     temperature=0.0
# )

# llm = HuggingFacePipeline(pipeline=sql_generation_pipeline)

# # SQL Query Generation Template
# sql_prompt = PromptTemplate(
#     input_variables=["query"],
#     template="""
#     You are an SQL expert. Generate a valid SQL query for the following natural language query.
#     Given the following user query: "{query}", generate an optimized SQL query 
#     to retrieve product details from the PricingInventory table in MySQL.

#     The table structure is:
#     - sku (VARCHAR)
#     - product_name (VARCHAR)
#     - category (VARCHAR)
#     - brand (VARCHAR)
#     - price (DECIMAL)
#     - stock (INT)

#     Ensure:
#     - Provide a valid SQL query that can be run directly in a MySQL database.
#     - Ensure that the query is correctly structured with SELECT, FROM, and WHERE clauses.
#     - If a price range is mentioned (e.g., "under ₹20,000"), include it in the WHERE clause.
#     - If a category or brand is mentioned, filter accordingly using LOWER() to ensure case-insensitive search.
#     - Convert all text comparisons to lowercase, e.g., WHERE LOWER(product_name) LIKE LOWER('%query_value%').
#     - If stock availability is required, add "stock > 0".
#     - Do not use placeholders. Return a fully executable SQL statement.
#     - Return only the SQL statement without markdown formatting in single line.
#     """
# )

# # Function to execute SQL query
# def execute_sql_query(sql_query):
#     print("Generated SQL Query:", sql_query)  # Debugging
    
#     try:
#         conn = pymysql.connect(**DB_CONFIG)
#         cursor = conn.cursor()
#         cursor.execute(sql_query)
#         result = cursor.fetchall()
        
#         # Fetch column names dynamically
#         column_names = [desc[0] for desc in cursor.description]

#         cursor.close()
#         conn.close()
#         return result, column_names  # Return both data and column names
#     except Exception as e:
#         return f"Error executing query: {str(e)}", None

# # Define Product Search Tool
# def product_search(query):
#     # Generate SQL query using HuggingFace model
#     prompt = sql_prompt.format(query=query)
#     raw_sql = llm.invoke(prompt).strip()

#     # **Fix**: Remove markdown syntax (```sql ... ```)
#     cleaned_sql = re.sub(r"```sql|```", "", raw_sql).strip()

#     # Execute SQL and fetch results
#     results, columns = execute_sql_query(cleaned_sql)

#     if isinstance(results, str):  # If there's an error message
#         return results

#     if results:
#         # Format response dynamically based on returned columns
#         response = "\n".join(
#             [", ".join(f"{col}: {val}" for col, val in zip(columns, row)) for row in results]
#         )
#     else:
#         response = "No products found matching your criteria."

#     return response

# # Wrap function as a LangChain Tool
# ProductSearchTool = Tool(
#     name="ProductSearchTool",
#     func=product_search,
#     description="Retrieve product details from PricingInventory table based on user queries."
# )

# # Example Test Query
# if __name__ == "__main__":
#     test_query = "Show me the price and brand of Wheat Flour"
#     print(ProductSearchTool.run(test_query))
