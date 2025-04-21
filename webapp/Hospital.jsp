<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.saveLife.Model.Hospital" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-4">
        <h2 class="mb-4">Hospital List</h2>
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>Hospital ID</th>
                    <th>Name</th>
                    <th>Location</th>
                    <th>Contact</th>
                    <th>Available Beds</th>
                    <th>Specialties</th>
                    <th>Emergency Ready</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Hospital> hospitals = (List<Hospital>) request.getAttribute("hospitals");
                    if (hospitals != null && !hospitals.isEmpty()) {
                        for (Hospital hospital : hospitals) {
                %>
                    <tr>
                        <td><%= hospital.gethId() %></td>
                        <td><%= hospital.getName() %></td>
                        <td><%= hospital.getLocation() %></td>
                        <td><%= hospital.getContact() %></td>
                        <td><%= hospital.getAvailableBeds() %></td>
                        <td><%= hospital.getSpecialties() %></td>
                        <td><%= hospital.getEmergencyReady() %></td>
                    </tr>
                <%
                        }
                    } else {
                %>
                    <tr>
                        <td colspan="7" class="text-center">No hospitals found.</td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
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
      color: var(--text-dark);
      font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
    }
  
    h2 {
      text-align: center;
      color: var(--accent-color);
      font-weight: bold;
      margin-bottom: 30px;
    }
  
    .container {
      margin-top: 40px;
      padding: 30px;
      background: linear-gradient(rgba(3, 104, 120, 0.1), rgba(1, 115, 133, 0.1));
      border-radius: 12px;
      box-shadow: 0px 0px 15px rgba(0, 123, 143, 0.1);
      max-width: 100%; 
      width: 100%;
    }
  
    /* Table Styling */
    .table {
      background-color: var(--white);
      border-radius: 8px;
      overflow: hidden;
      box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.05);
      width: 100%;
      table-layout: fixed; 
      border-collapse: collapse; 
    }
  
    .table thead {
      background-color: var(--accent-color);
      color: var(--white);
      font-size: 1rem;
      text-align: center;
    }
  
    .table th,
    .table td {
      vertical-align: middle;
      text-align: center;
      padding: 14px 10px;
      font-size: 0.95rem;
      color: var(--text-dark);
      word-wrap: break-word; 
    }
  
    .table tbody tr:hover {
      background-color: var(--calm-blue);
      transition: background-color 0.3s ease-in-out;
    }
  
    .text-center {
      font-style: italic;
      color: #6c757d;
    }
  
    @media (max-width: 992px) {
      .container {
        padding: 20px;
      }
  
      h2 {
        font-size: 1.5rem;
      }
  
      .table th, .table td {
        font-size: 1rem;
        padding: 12px 8px;
      }
  
      .table-wrapper {
        overflow-x: auto;
      }
  
      .table {
        font-size: 1rem;
      }
    }
  
    @media (max-width: 576px) {
      h2 {
        font-size: 1.25rem;
      }
  
      .table th, .table td {
        font-size: 0.9rem;
        padding: 10px;
      }
      .table {
        width: 100%;
        font-size: 1rem;
      }
  
      .container {
        padding: 10px;
        margin: 10px 0;
      }
  
      .table-wrapper {
        overflow-x: auto;
      }
    }
  </style>
  </html>
