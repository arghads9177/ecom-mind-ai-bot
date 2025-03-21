import os
import chromadb
from langchain.agents import initialize_agent, AgentType
from langchain_openai import ChatOpenAI, OpenAIEmbeddings
from langchain.memory import VectorStoreRetrieverMemory
from langchain.prompts import PromptTemplate
from langchain_chroma.vectorstores import Chroma
from dotenv import load_dotenv
from product_search_tool import ProductSearchTool
from order_tracking_tool import OrderTrackingTool
from faq_tool import FAQTool

# Load environment variables
load_dotenv()
os.environ["OPENAI_API_KEY"] = os.getenv("OPENAI_API_KEY")

# Initialize OpenAI Embeddings
embedding_model = OpenAIEmbeddings(model="text-embedding-ada-002")

# Initialize ChromaDB Client for long-term memory
chroma_db_path = "../vector_db/ecom_memory"
vector_db = Chroma(persist_directory=chroma_db_path, embedding_function=embedding_model)

# Create Memory Storage in ChromaDB
retriever = vector_db.as_retriever(search_kwargs={"k": 1})  # Fetch top 1 similar past interaction
long_term_memory = VectorStoreRetrieverMemory(retriever=retriever)

# Initialize LLM for agent
llm = ChatOpenAI(model_name="gpt-4o", temperature=0)

# Define agent tools
tools = [ProductSearchTool, OrderTrackingTool, FAQTool]

# Define Classification Prompt (Allowing Memory Queries)
classification_prompt = PromptTemplate(
    input_variables=["query"],
    template="""
    You are an AI classifier that determines whether a user query is relevant to an e-commerce chatbot.

    **Relevant Topics**:
    - Product search (e.g., "Show me smartphones under ₹20,000", "Find Wheat Flour above $35")
    - Order tracking (e.g., "Where is my order #12345?")
    - Customer support (e.g., "What is your return policy?")
    - Memory-related questions (e.g., "Remind me what I searched last time")

    **Rules for Classification**:
    - Queries **about buying products, filtering by price, or brands** are **ALWAYS** relevant.
    - Queries **about tracking orders, past purchases, or delivery status** are **ALWAYS** relevant.
    - Queries **about return policy, payments, or refunds** are **ALWAYS** relevant.
    - Queries **asking about past interactions, search history, or previously discussed topics** are **ALWAYS** relevant.
    - Queries **asking general knowledge, jokes, math, coding, or non-shopping topics** are **NOT relevant**.

    **Expected Output:**
    - If the query is relevant, return **ONLY "YES"**.
    - If the query is NOT relevant, return **ONLY "NO"**.

    User Query: "{query}"
    """
)

classification_chain = classification_prompt | llm

# Function to classify the query BEFORE passing it to the agent
def is_query_relevant(query):
    result = classification_chain.invoke(query).content.strip().upper()
    return result.startswith("YES")

# Function to retrieve memory for queries like "Remind me what I searched last time"
def retrieve_memory():
    retrieved_docs = retriever.get_relevant_documents("past searches")
    if retrieved_docs:
        return f"Your last search was: {retrieved_docs[0].page_content}"
    return "I don't have any previous searches recorded yet."

# AI chatbot function with memory retrieval
def ai_chatbot(user_input):
    if "remind me what I searched" in user_input.lower():  # Special case for memory retrieval
        return retrieve_memory()
    
    if is_query_relevant(user_input):  
        response = agent.run(user_input)  # Process only relevant queries
        # Store the query in memory for future recall
        vector_db.add_texts([user_input])
    else:
        response = "I'm here to assist with shopping-related queries like product search, order tracking, and customer support. Could you please ask something related to shopping?"
    
    return response

# Create AI agent with memory
agent = initialize_agent(
    tools=tools,
    llm=llm,
    agent=AgentType.ZERO_SHOT_REACT_DESCRIPTION,
    memory=long_term_memory,  # Use ChromaDB for long-term memory
    # verbose=True,
    handle_parsing_errors=True
)

# Example Test Queries
if __name__ == "__main__":
    test_queries = [
        "Show me price and brand of corn Flour above $35",  # ✅ Relevant (Product Search)
        "Where is my order #4",  # ✅ Relevant (Order Tracking)
        "Tell me a joke",  # ❌ Irrelevant → Should politely decline
        "What is 2 + 2?",  # ❌ Irrelevant → Should politely decline
        "How do I return an item?",  # ✅ Relevant (FAQ)
        "Remind me what I searched last time"  # ✅ Should recall last search
    ]
    
    for query in test_queries:
        print("\nUser Query:", query)
        print("Bot Response:", ai_chatbot(query))
