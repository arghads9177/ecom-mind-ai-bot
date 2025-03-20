import os
from langchain.tools import Tool
from langchain_chroma.vectorstores import Chroma
from langchain_openai import OpenAIEmbeddings
from langchain.schema import Document
from dotenv import load_dotenv

# Load environment variables
load_dotenv()
os.environ["OPENAI_API_KEY"] = os.getenv("OPENAI_API_KEY")

# Initialize OpenAI Embeddings
embedding_model = OpenAIEmbeddings(model="text-embedding-ada-002")

# Initialize ChromaDB Client
chroma_db_path = "../vector_db/ecom_db"
vector_db = Chroma(persist_directory=chroma_db_path, embedding_function=embedding_model)

# Function to retrieve FAQ response
def retrieve_faq(query):
    docs = vector_db.similarity_search(query, k=3)  # Fetch top 1 most relevant FAQ
    if docs:
        faq_answer = docs[0].page_content
        return f"FAQ Response: {faq_answer}"
    return "No relevant FAQ found. Please try rephrasing your question."

# Wrap function as a LangChain Tool
FAQTool = Tool(
    name="FAQTool",
    func=retrieve_faq,
    description="Retrieve answers to customer support questions from ChromaDB."
)

# Example Test Queries
if __name__ == "__main__":
    test_queries = [
        "What is your return policy?",
        "How do I track my order?",
        "What payment methods do you accept?",
        "Do you offer cash on delivery?"
    ]
    
    for query in test_queries:
        print("\nUser Query:", query)
        print(FAQTool.run(query))
