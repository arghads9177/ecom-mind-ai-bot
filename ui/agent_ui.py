import os
import sys
import streamlit as st

# ✅ Add the project root directory to sys.path
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))

# ✅ Import the AI agent
from agents.ecom_agent import ai_chatbot  

# ✅ Streamlit Page Config
st.set_page_config(page_title="Ecom-Mind AI Chatbot", page_icon="🤖", layout="wide")

# ✅ Custom CSS for a professional chatbot UI
# height: 60vh;
# background-color: #f9f9f9;
# border-radius: 8px;
st.markdown("""
    <style>
        .chat-container {
            
            overflow-y: auto;
            border: 1px solid #ddd;
            padding: 10px;
            
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        .user-message, .ai-message {
            padding: 10px 15px;
            border-radius: 10px;
            max-width: 80%;
        }
        .user-message {
            background-color: #DCF8C6;
            text-align: right;
            margin-bottom:5px;
        }
        .ai-message {
            background-color: #E3E3E3;
            align-self: flex-start;
            margin-bottom:5px;
        }
        .system-message {
            font-size: 20px;
            text-align: center;
        }
        .input-container {
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: white;
            padding: 10px;
            border-top: 1px solid #ddd;
        }
        .chat-wrapper {
            display: flex;
            flex-direction: column;
            height: 80vh; /* Ensures chat area takes most of the page */
        }
        footer {visibility: hidden;} /* Hide Streamlit footer */
    </style>
""", unsafe_allow_html=True)

# ✅ Initialize session state for chat history
# if "chat_history" not in st.session_state:
#     st.session_state.chat_history = [
#         {"role": "Ecom Assitant", "message": "Hello! I am Ecom-Mind AI, your personal e-commerce assistant. How can I assist you today?"}
#     ]

# ✅ Chat Display Section (Inside a Container)
st.markdown("## 🛍️ Ecom-Mind AI Chatbot 🤖")
if "chat_history" not in st.session_state:
    st.session_state.chat_history = []
# Store last query in session state to prevent re-execution
if "last_query" not in st.session_state:
    st.session_state["last_query"] = ""

if len(st.session_state.chat_history) == 0:
    st.markdown("""
                <div style='padding-top: 100px; padding-left: 40px; padding-right: 40px; text-align: center'>
                <span class='system-message'>Hello! I am Ecom-Mind AI, your personal e-commerce assistant. How can I assist you today?</span>
                """, unsafe_allow_html=True)
    # User Input Section 
    user_input = st.text_input("Type your query...")
    st.markdown("</div>", unsafe_allow_html=True)
else:
# with st.container():
# st.markdown('<div class="chat-wrapper">', unsafe_allow_html=True)  # Wrapper for full chat
    # st.markdown('<div class="chat-container" id="chat-box">', unsafe_allow_html=True)  # Scrollable chat area

    for chat in st.session_state.chat_history:
        role_class = "user-message" if chat["role"] == "user" else "ai-message"
        st.markdown(f'<div class="{role_class}"><strong>{chat["role"].capitalize()}:</strong> {chat["message"]}</div>', unsafe_allow_html=True)

    # st.markdown('</div>', unsafe_allow_html=True)  # Close chat-container
    # st.markdown('</div>', unsafe_allow_html=True)  # Close chat-wrapper 

    # ✅ Scroll to the bottom automatically (Fix for chat staying within container)
    st.markdown("""
        <script>
            var chatBox = document.getElementById("chat-box");
            if (chatBox) {
                chatBox.scrollTop = chatBox.scrollHeight;
            }
        </script>
    """, unsafe_allow_html=True)

    
    # ✅ User Input Section (Fixed at Bottom)
    user_input = st.chat_input("Type your query...")
if user_input:
    st.session_state.chat_history.append({"role": "user", "message": user_input})


# ✅ Process User Input and Generate Response
if user_input and user_input != st.session_state["last_query"]:
    st.session_state["last_query"] = user_input  # ✅ Store last query

    with st.spinner("🔍 Ecom-Mind AI is thinking..."):
        ai_response = ai_chatbot(user_input)  # ✅ Calls the AI agent
        st.session_state.chat_history.append({"role": "Ecom Assitant", "message": ai_response})

    # ✅ Refresh UI after user input
    st.rerun()
