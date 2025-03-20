import os
from langchain.agents import initialize_agent, AgentType
from langchain_openai import ChatOpenAI
from langchain.memory import ConversationBufferMemory
from langchain.tools import Tool
from dotenv import load_dotenv
from product_search_tool import ProductSearchTool
from order_tracking_tool import OrderTrackingTool
from faq_tool import FAQTool

# Load environment variables
load_dotenv()
os.environ["OPENAI_API_KEY"] = os.getenv("OPENAI_API_KEY")

# Initialize LLM for agent
llm = ChatOpenAI(model_name="gpt-4o", temperature=0)

# Initialize memory for personalization
memory = ConversationBufferMemory(memory_key="chat_history", return_messages=True)

# Define agent tools
tools = [ProductSearchTool, OrderTrackingTool, FAQTool]

# Create an AI agent that selects the correct tool
agent = initialize_agent(
    tools=tools,
    llm=llm,
    agent=AgentType.ZERO_SHOT_REACT_DESCRIPTION,
    memory=memory,
    verbose=True,  # Debugging: Set to False in production
    handle_parsing_errors=True
)

# Function to interact with the AI agent
def ai_chatbot(user_input):
    response = agent.run(user_input)
    return response

# Example Test Queries
if __name__ == "__main__":
    test_queries = [
        "Show me price and brand of Wheat Flour abve $30",
        "Where is my order #4?",
        "Do you have any membership rewards?"
    ]
    
    for query in test_queries:
        print("\nUser Query:", query)
        print("Bot Response:", ai_chatbot(query))
