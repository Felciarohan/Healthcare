<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>About Us</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
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
  background-color: var(--accent-color); 
  padding: 10px;
  border-bottom: 2px solid var(--calm-blue); 
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
  color: var(--calm-blue) !important; 
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

.about-section {
  padding: 50px 20px;
  background: linear-gradient(rgba(3, 104, 120, 0.8), rgba(1, 115, 133, 0.8)); 
  border-radius: 10px;
  box-shadow: 0px 0px 12px var(--calm-blue); 
}

h1 {
  color: white;  
  font-weight: bold;
}

p {
  font-size: 18px;
  line-height: 1.6;
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
  background: var(--accent-color);  
  border-top: 1px solid var(--calm-blue); 
  color: var(--white);
}

  </style>
</head>
<body>

  <nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
      <a class="navbar-brand" href="#">
        <i class="bi bi-heart-pulse-fill"></i> SEHS
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Patients</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Hospitals</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="container1">
    <div class="about-section">
      <h1>About Us</h1>
      <p>Welcome to <strong>AI Healthcare</strong>, your trusted healthcare companion. Our mission is to provide
        seamless healthcare management by connecting patients with top hospitals and offering instant access
        to medical services.</p>
      <p>We leverage cutting-edge technology to ensure efficient healthcare solutions, bridging the gap
        between patients and healthcare providers. Our AI-driven system helps in managing medical records,
        finding the best healthcare facilities, and ensuring timely medical attention.</p>
      <a href="#" class="btn-custom">Learn More</a>
    </div>
  </div>

  <footer>
    <p>&copy; 2025 AI Healthcare Chatbot. All Rights Reserved.</p>
  </footer>

</body>
</html>
