import json
import os
from langchain_chroma.vectorstores import Chroma
from langchain_openai.embeddings import OpenAIEmbeddings
from langchain_huggingface.embeddings import HuggingFaceEmbeddings
from langchain.schema import Document
from dotenv import load_dotenv

# Set OpenAI API Key
load_dotenv()
# os.environ["OPENAI_API_KEY"] = os.getenv("OPENAI_API_KEY")
os.environ["HUGGINGFACE_API_KEY"] = os.getenv("HUGGINGFACE_API_KEY")

# Initialize OpenAI Embedding Model
# embedding_model = OpenAIEmbeddings(model="text-embedding-ada-002")
embedding_model = HuggingFaceEmbeddings(model_name="BAAI/bge-small-en-v1.5")

# Initialize ChromaDB storage
chroma_db_path = "../vector_db/ecom_db"
vector_db = Chroma(persist_directory=chroma_db_path, embedding_function=embedding_model)

# Load Cleaned Customer Reviews
customer_reviews_path = "../data/cleaned_customer_reviews.json"
with open(customer_reviews_path, "r", encoding="utf-8") as file:
    customer_reviews = json.load(file)

# Load Cleaned FAQs
faqs_path = "../data/cleaned_faq.json"
with open(faqs_path, "r", encoding="utf-8") as file:
    faqs = json.load(file)

# Convert Customer Reviews into LangChain Document format and add to ChromaDB
review_docs = []
for review in customer_reviews:
    doc = Document(
        page_content=review["comment"],
        metadata={"type": "review", "rating": review["rating"], "customer_id": review["customer_id"]}
    )
    review_docs.append(doc)

vector_db.add_documents(review_docs)

# Convert FAQs into LangChain Document format and add to ChromaDB
faq_docs = []
for faq in faqs:
    doc = Document(
        page_content=faq["question"] + " " + faq["answer"],
        metadata={"type": "faq", "question": faq["question"]}
    )
    faq_docs.append(doc)

vector_db.add_documents(faq_docs)

# Persist ChromaDB storage
# vector_db.persist()

print("✅ Cleaned customer reviews and FAQs successfully stored in ChromaDB using LangChain!")
