<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, com.saveLife.Model.Patient, com.saveLife.ServiceImpl.PatientServiceImpl" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patients</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
 :root {
  --main-bg: #f0f4f8;              
  --accent-color: #007b8f;          
  --calm-blue: #d0f0f6;            
  --white: #ffffff;                
  --text-dark: #1e1e1e;             
}

body {
  background-color: var(--main-bg); 
  color: #007b8f;             
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
  margin-top: 40px;
  margin-left: 50px;
  width: 200vh;
  padding: 50px;
  background: linear-gradient(rgba(3, 104, 120, 0.8), rgba(1, 115, 133, 0.8)); 
  border-radius: 10px;
  box-shadow: 0px 0px 10px var(--calm-blue); 
}

.card {
  background-color: var(--calm-blue); 
  color: var(--white);                
  border: 1px solid var(--calm-blue); 
}

.card-title {
  color: var(--accent-color);        
}

.card-text {
  color: black;               
}

.btn-custom {
  background-color: var(--accent-color); 
  color: black;                
  padding: 10px 20px;
  font-size: 18px;
  border-radius: 5px;
  border: none;
}

.btn-custom:hover {
  background-color: var(--accent-color); 
  color: var(--white);
}

footer {
  margin-top: 60px;
  text-align: center;
  padding: 10px;
  background: var(--accent-color); 
  border-top: 1px solid var(--calm-blue); 
  color: var(--white);              
}

@media (max-width: 768px) {
  .container1 {
    margin: 20px 10px;
    padding: 20px;
    width: auto;
  }

  .navbar-brand {
    font-size: 20px;
    padding: 8px;
  }

  .btn-custom {
    width: 100%;
    padding: 12px 0;
  }

  .card {
    margin-bottom: 20px;
    width: 100%;
  }

  footer {
    font-size: 14px;
  }
}

    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Patients</a>
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

    <div class="container"><br><br>
        <h3 class="text-center text-cyan">Patient List</h3>
        <div class="row">
            <% 
                PatientServiceImpl service = new PatientServiceImpl();
                List<Patient> patients = service.fetchAll();
                for (Patient patient : patients) {
            %>
            <div class="col-md-4 mb-4">
                <div class="card p-3">
                    <h5 class="card-title"><%= patient.getName() %></h5>
                    <p class="card-text"><strong>Patient ID:</strong> <%= patient.getpId() %></p>
                    <p class="card-text"><strong>Unique ID:</strong> <%= patient.getUniqueId() %></p>
                    <p class="card-text"><strong>Date of Birth:</strong> <%= patient.getDOB() %></p>
                    <p class="card-text"><strong>Blood Type:</strong> <%= patient.getBloodType() %></p>
                    <p class="card-text"><strong>Conditions:</strong> <%= patient.getConditions() %></p>
                    <p class="card-text"><strong>Medications:</strong> <%= patient.getMedications() %></p>
                    <p class="card-text"><strong>Emergency Contact:</strong> <%= patient.getEmergencyContact() %></p>
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
