<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AI Healthcare Chatbot</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/js/all.min.js"></script>
    <style>
    :root {
    --main-bg: #f0f4f8;              
    --accent-color: #007b8f;       
    --calm-blue: #d0f0f6;            
    --white: #ffffff;              
}

body {
    background-color: var(--main-bg);
    color: var(--white);
    font-family: 'Arial', sans-serif;
}

.navbar {
    background-color: #007b8f;
    padding: 10px;
    border-bottom: 2px solid var(--accent-color);
}

.navbar-brand {
    color: var(--white) !important;
    font-size: 24px;
    font-weight: bold;
    font-family: 'Horizon', sans-serif;
    display: flex;
    align-items: center;
    gap: 8px;
}

.navbar-brand i {
    font-size: 26px;
}

.nav-link {
    color: var(--white) !important;
    transition: color 0.3s ease-in-out;
}

.nav-link:hover {
    color: #caf0f8 !important;
}

.container1 {
    margin-top: 50px;
    text-align: center;
    width: 950px;
    margin-left: 180px;
}

@media (max-width: 1200px) {
    .container1 {
        width: 85%;
        margin-left: auto;
        margin-right: auto;
    }
}

@media (max-width: 768px) {
    .container1 {
        width: 90%;
        margin-left: auto;
        margin-right: auto;
        margin-top: 30px;
    }
}

@media (max-width: 480px) {
    .container1 {
        width: 95%;
        margin-left: auto;
        margin-right: auto;
        margin-top: 20px;
    }
}

.hero-section {
    text-align: center;
    padding: 100px 20px;
    background: linear-gradient(rgba(0, 123, 143, 0.8), rgba(0, 123, 143, 0.8));
}

.hero-section h1 {
    font-size: 50px;
    color: var(--white);
    font-weight: bold;
    font-family: 'Horizon', sans-serif;
    animation: fadeIn 2s ease-in-out;
}

@keyframes fadeIn {
    from { opacity: 0; transform: translateY(-20px); }
    to { opacity: 1; transform: translateY(0); }
}

.chat-container {
    max-width: 600px;
    margin: 50px auto;
    background: var(--white);
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px var(--accent-color);
}

.chat-box {
    height: 300px;
    overflow-y: auto;
    padding: 10px;
    border: 1px solid var(--accent-color);
    border-radius: 10px;
    background: var(--calm-blue);
}

.chat-message {
    margin: 10px 0;
    padding: 10px;
    border-radius: 10px;
    max-width: 80%;
}

.bot-message {
    background: var(--accent-color);
    color: var(--white);
    align-self: flex-start;
}

.user-message {
    background: #b2ebf2;
    color: #004d4d;
    align-self: flex-end;
    text-align: right;
}

.input-group input {
    background: var(--white);
    color: #004d4d;
    border: 1px solid var(--accent-color);
}

.btn-custom {
    background-color: var(--accent-color);
    color: var(--white);
    padding: 10px 20px;
    font-size: 18px;
    border-radius: 5px;
    text-decoration: none;
}

.btn-custom:hover {
    background-color: var(--white);
    color: var(--accent-color);
}

footer {
    margin-top: 60px;
    text-align: center;
    padding: 10px;
    background: #007b8f;
    border-top: 1px solid var(--accent-color);
    color: var(--white);
}

    </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">AI Healthcare Chatbot</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Services</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Chatbot</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <section class="hero-section">
        <div class="container">
            <h1>24/7 AI Healthcare Assistance</h1>
            <p>Get real-time medical advice from our AI-powered chatbot.</p>
            <a href="#chatbox" class="btn-custom">Start Chat</a>
        </div>
    </section>

    <div class="chat-container">
        <h3 class="text-center" style="color: var(--white);">Healthcare Chatbot</h3>
        <div class="chat-box" id="chatbox">
            <div class="chat-message bot-message">Hello! I am your AI Healthcare Assistant. How can I help you?</div>
        </div>
        <div class="input-group mt-3">
            <input type="text" id="userInput" class="form-control" placeholder="Type a message..." onkeypress="handleKeyPress(event)">
            <button class="btn btn-custom" onclick="sendMessage()">Send</button>
        </div>
    </div>

    <script>
        function sendMessage() {
            var inputField = document.getElementById("userInput");
            var userMessage = inputField.value.trim();
            if (userMessage === "") return;

            var chatbox = document.getElementById("chatbox");

            // User message
            var userMessageDiv = document.createElement("div");
            userMessageDiv.classList.add("chat-message", "user-message");
            userMessageDiv.innerHTML = userMessage;
            chatbox.appendChild(userMessageDiv);

            // Bot Response
            setTimeout(function () {
                var botMessageDiv = document.createElement("div");
                botMessageDiv.classList.add("chat-message", "bot-message");
                botMessageDiv.innerHTML = getBotResponse(userMessage);
                chatbox.appendChild(botMessageDiv);

                chatbox.scrollTop = chatbox.scrollHeight;
            }, 1000);

            inputField.value = "";
        }

        function handleKeyPress(event) {
            if (event.key === "Enter") {
                sendMessage();
            }
        }

        function getBotResponse(input) {
            input = input.toLowerCase();
            if (input.includes("fever")) return "If you have a fever, stay hydrated and take rest. If symptoms persist, consult a doctor.";
            if (input.includes("headache")) return "Try drinking water, resting, or taking a pain reliever like paracetamol.";
            if (input.includes("covid")) return "COVID-19 symptoms include fever, cough, and difficulty breathing. Please isolate and get tested.";
            if (input.includes("emergency")) return "Call 911 immediately for urgent medical help.";
            return "I'm not sure about that. Please contact a medical professional.";
        }
    </script>

    <footer>
        <p style="color: var(--white);">&copy; 2025 AI Healthcare Chatbot. All Rights Reserved.</p>
    </footer>

</body>
</html>
