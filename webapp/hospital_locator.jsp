<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, com.saveLife.Model.Hospital, com.saveLife.ServiceImpl.HospitalServiceImpl" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospitals</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
       :root {
  --main-bg: #f0f4f8;              
  --accent-color: #007b8f;      
  --calm-blue: #d0f0f6;            
  --white: #ffffff;                 
  --card-bg: #0e3b44;            
}

body {
  background-color: var(--main-bg);
  color: var(--accent-color);
  font-family: 'Arial', sans-serif;
  margin: 0;
  padding: 0;
}

.navbar {
  background-color: var(--accent-color); 
  padding: 10px 30px;
  border-bottom: 2px solid var(--calm-blue); 
  display: flex;
  justify-content: space-between;
  align-items: center;
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
  margin: 0 10px;
  transition: color 0.3s ease-in-out;
}

.nav-link:hover {
  color: var(--calm-blue) !important;
}

.container1 {
  margin-top: 40px;
  margin-left: 50px;
  width: 200vh;
  padding: 50px;
  background: linear-gradient(rgba(3, 104, 120, 0.85), rgba(1, 115, 133, 0.85));
  border-radius: 10px;
  box-shadow: 0px 0px 15px var(--calm-blue);
  color: var(--white);
}

.card {
  background-color: var(--card-bg);
  color: var(--white);
  border: 1px solid var(--calm-blue);
  padding: 20px;
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(208, 240, 246, 0.3);
}

.card-title {
  color: var(--calm-blue);
}

.card-text {
  color: var(--white);
}

.btn-custom {
  background-color: var(--accent-color);
  color: var(--white);
  padding: 10px 20px;
  font-size: 18px;
  border-radius: 5px;
  border: none;
  transition: background-color 0.3s ease;
}

.btn-custom:hover {
  background-color: #005f73;
  color: var(--white);
}

footer {
  margin-top: 60px;
  text-align: center;
  padding: 15px;
  background: var(--accent-color);
  border-top: 1px solid var(--calm-blue);
  color: var(--white);
  font-size: 14px;
}

@media (max-width: 768px) {
  .container1 {
    margin: 20px 10px;
    padding: 20px;
    width: auto;
  }

  .navbar {
    flex-direction: column;
    align-items: flex-start;
  }

  .nav-link {
    margin: 5px 0;
  }
}

    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Hospitals</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Login</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <h3 class="text-center text-cyan">Available Hospitals</h3>
        <div class="row">
            <% 
                HospitalServiceImpl service = new HospitalServiceImpl();
                List<Hospital> hospitals = service.fetchAll();
                for (Hospital hospital : hospitals) {
            %>
            <div class="col-md-4 mb-4">
                <div class="card p-3">
                    <h5 class="card-title"><%= hospital.getName() %></h5>
                    <p class="card-text">Location: <%= hospital.getLocation() %></p>
                    <p class="card-text">Contact: <%= hospital.getContact() %></p>
                    <p class="card-text">Available Beds: <%= hospital.getAvailableBeds() %></p>
                    <p class="card-text">Specialties: <%= hospital.getSpecialties() %></p>
                    <p class="card-text">Emergency Ready: <%= hospital.getEmergencyReady() %></p>
                </div>
            </div>
            <% } %>
        </div>
    </div>

    <footer>
        <p>&copy; 2025 AI Healthcare Chatbot. All Rights Reserved.</p>
    </footer>
</body>
</html>
