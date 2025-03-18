import json
import re
from pypdf import PdfReader
from langchain.schema import Document

# Define file paths
input_pdf = "../data/ecom_faq.pdf"
output_json = "../data/cleaned_faq.json"

# Function to extract text from PDF using PyPDF
def extract_text_from_pdf(pdf_path):
    reader = PdfReader(pdf_path)
    text = "\n".join([page.extract_text() for page in reader.pages if page.extract_text()])
    return text

# Function to clean and structure FAQs
def clean_faq_text(raw_text):
    # Improved regex pattern to correctly extract each Q&A pair separately
    faq_pattern = re.compile(r"(?:Q[:.-]?\s*)(.+?)(?:\s*A[:.-]?\s*)(.+?)(?=\s*Q[:.-]?|\Z)", re.DOTALL)
    matches = faq_pattern.findall(raw_text)

    cleaned_faqs = []
    for question, answer in matches:
        question = question.strip()
        answer = answer.strip()

        # Standardize formatting
        question = re.sub(r"\s+", " ", question)  # Remove extra spaces
        answer = re.sub(r"\s+", " ", answer)

        cleaned_faqs.append({"question": question, "answer": answer})

    return cleaned_faqs

# Extract and clean FAQ data
raw_text = extract_text_from_pdf(input_pdf)
cleaned_faqs = clean_faq_text(raw_text)

# Remove duplicate questions
unique_faqs = {faq["question"]: faq for faq in cleaned_faqs}.values()

# Save cleaned FAQs to JSON file
with open(output_json, "w", encoding="utf-8") as file:
    json.dump(list(unique_faqs), file, indent=4, ensure_ascii=False)

print(f"✅ Cleaned FAQ data saved to: {output_json}")