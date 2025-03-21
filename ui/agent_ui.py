import streamlit as st
import sys
import os
# ✅ Add the project root to `sys.path` so Python can find `agents`
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))

# ✅ Import the AI agent from `agents.ecom_agent`
from agents.ecom_agent import ai_chatbot  

# ✅ Streamlit Page Config
st.set_page_config(page_title="Ecom-Mind AI Chatbot", page_icon="🤖", layout="wide")

# ✅ Custom CSS for professional design
st.markdown("""
    <style>
        /* Set chat container height */
        .chat-container {
            height: 500px;
            overflow-y: auto;
            border: 1px solid #ddd;
            padding: 10px;
            background-color: #f9f9f9;
            border-radius: 8px;
        }

        /* Style user and AI messages */
        .user-message {
            background-color: #DCF8C6;
            padding: 8px 12px;
            border-radius: 8px;
            margin-bottom: 8px;
            text-align: left;
        }
        
        .ai-message {
            background-color: #E3E3E3;
            padding: 8px 12px;
            border-radius: 8px;
            margin-bottom: 8px;
            text-align: left;
        }

        /* Style input area */
        .input-container {
            position: fixed;
            bottom: 10px;
            width: 100%;
            background-color: white;
            padding: 10px;
            border-top: 1px solid #ddd;
        }
        
        /* Hide Streamlit footer */
        footer {visibility: hidden;}
    </style>
""", unsafe_allow_html=True)

# ✅ Initialize session state for chat history
if "chat_history" not in st.session_state:
    st.session_state.chat_history = [
        {"role": "ai", "message": "Hello! I am Ecom-Mind AI, your personal e-commerce assistant. How can I assist you today?"}
    ]

# ✅ Display Chat History
st.markdown("## 🛍️ Ecom-Mind AI Chatbot 🤖")
chat_container = st.container()
with chat_container:
    st.markdown('<div class="chat-container">', unsafe_allow_html=True)
    for chat in st.session_state.chat_history:
        if chat["role"] == "user":
            st.markdown(f'<div class="user-message"><strong>You:</strong> {chat["message"]}</div>', unsafe_allow_html=True)
        else:
            st.markdown(f'<div class="ai-message"><strong>Ecom Agent:</strong> {chat["message"]}</div>', unsafe_allow_html=True)
    st.markdown('</div>', unsafe_allow_html=True)

# ✅ User Input (Fixed at Bottom)
with st.container():
    user_input = st.text_input("Type your message...", key="user_input", help="Ask me anything related to e-commerce.")

# ✅ Process User Input
if user_input:
    # Append user query to chat history
    st.session_state.chat_history.append({"role": "user", "message": user_input})

    # Get AI response
    ai_response = ai_chatbot(user_input)

    # Append AI response to chat history
    st.session_state.chat_history.append({"role": "ai", "message": ai_response})

    # Rerun script to refresh chat history
    st.experimental_rerun()
