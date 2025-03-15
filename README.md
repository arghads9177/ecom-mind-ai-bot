# **EcomMind - AI-Powered E-commerce Chatbot**

## 🚀 Overview
**EcomMind** is an AI-powered chatbot designed to assist customers in an e-commerce platform. It helps users with product discovery, recommendations, order tracking, and customer support using advanced Generative AI capabilities.

## 🛠️ Tech Stack
| Component            | Technology |
|----------------------|------------|
| **Backend**         | Python, Flask |
| **Generative AI**   | LangChain, LlamaIndex |
| **LLM**             | Groq’s LLaMA, OpenAI GPT-4 |
| **Vector Database** | ChromaDB (OpenAI Embeddings) |
| **Database**        | MySQL (Transactional Data) |
| **Frontend**        | Streamlit |
| **Deployment**      | DigitalOcean / AWS |

## ✨ Features
- **Product Discovery & Recommendations** 📌
- **Product Comparison** 🔍
- **Order Tracking & Assistance** 📦
- **Customer Support (FAQ Handling)** 💬
- **Personalized Shopping Experience** 🛍️
- **Multi-Channel Support (Website, WhatsApp, Telegram)** 📲

## 📂 Project Structure
```
EcomMind/
│── backend/         # Flask-based API backend
│── frontend/        # Streamlit UI
│── models/          # AI models & embeddings
│── database/        # MySQL scripts
│── vector_db/       # ChromaDB storage
│── scripts/         # Web scraping & data processing
│── requirements.txt # Dependencies
│── README.md        # Project documentation
```

## 🚀 Installation & Setup
### 1️⃣ Clone the Repository
```bash
git clone https://github.com/yourusername/EcomMind.git
cd EcomMind
```

### 2️⃣ Set Up a Virtual Environment
```bash
python -m venv venv
source venv/bin/activate   # On macOS/Linux
venv\Scripts\activate      # On Windows
```

### 3️⃣ Install Dependencies
```bash
pip install -r requirements.txt
```

### 4️⃣ Set Up Environment Variables
Create a `.env` file and add:
```
OPENAI_API_KEY=your_openai_api_key
GROQ_API_KEY=your_groq_api_key
DATABASE_URL=mysql://username:password@localhost/ecommind_db
```

### 5️⃣ Run the Backend Server
```bash
cd backend
python app.py
```

### 6️⃣ Run the Frontend UI
```bash
cd frontend
streamlit run app.py
```

## 📖 Usage
- Visit **http://localhost:8501** to interact with EcomMind.
- Ask for **product recommendations, order status, or store policies.**

## 🛠️ Future Enhancements
- 🔹 Voice-based shopping assistant
- 🔹 Multi-language support
- 🔹 Advanced sentiment analysis for personalized shopping

## 📜 License
This project is licensed under the **MIT License**.

## 💡 Contact
- **[https://www.upwork.com/freelancers/~012f4bbab3859fc1b2]** - Argha Dey Sarkar
- **[email2argha@gmail.com]** - Email Me
