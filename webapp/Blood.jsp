<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Bank</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
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
  margin-top: 40px;
  margin-left: 50px;
  width: 200vh;
  padding: 50px;
  background:  linear-gradient(rgba(3, 104, 120, 0.8), rgba(1, 115, 133, 0.8));  
  border-radius: 10px;
  box-shadow: 0px 0px 10px var(--calm-blue);
}
.card {
  background-color: var(--blue) ;  
  color: var(--white);
  border: 1px solid var(--calm-blue);
}

.btn-custom {
  background-color: var(--accent-color);  
  color: var(--white);
  padding: 10px 20px;
  font-size: 18px;
  border-radius: 5px;
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
}

    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Blood Bank</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Donate</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Request</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="container1">
        <h2 class="text-center">Blood Bank Management</h2>
        <div class="d-flex justify-content-between my-3">
            <input type="text" id="search" class="form-control w-25" placeholder="Search by Name or Location">
            <select id="bloodGroup" class="form-select w-25">
                <option value="">All Blood Groups</option>
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
                <option value="AB+">AB+</option>
                <option value="AB-">AB-</option>
            </select>
            <button class="btn btn-custom" onclick="addBlood()">Add Blood Details</button>
            <button class="btn btn-warning" onclick="requestBlood()">Request Blood</button>
        </div>
        
        <div id="bloodData" class="row">
            <div class="col-md-4">
                <div class="card p-3 mb-3">
                    <h5>John Doe</h5>
                    <p>Blood Group: A+</p>
                    <p>Location: New York</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card p-3 mb-3">
                    <h5>Jane Smith</h5>
                    <p>Blood Group: O-</p>
                    <p>Location: Los Angeles</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card p-3 mb-3">
                    <h5>David Johnson</h5>
                    <p>Blood Group: B+</p>
                    <p>Location: Chicago</p>
                </div>
            </div>
        </div>
    </div>
    
    <footer class="text-center p-3 mt-3" >
        <p>&copy; 2025 Blood Bank Management. All Rights Reserved.</p>
    </footer>
  </body>
  </html>
    <script>
        $(document).ready(function() {
            $("#search, #bloodGroup").on("input", function() {
                loadBloodData();
            });
        });

        function loadBloodData() {
            let search = $("#search").val();
            let bloodGroup = $("#bloodGroup").val();
            
            $.ajax({
                url: "fetchBloodData.jsp",
                type: "GET",
                data: { search: search, bloodGroup: bloodGroup },
                success: function(response) {
                    $("#bloodData").html(response);
                }
            });
        }

        function addBlood() {
            window.location.href = "addBlood.jsp";
        }
        
        function requestBlood() {
            window.location.href = "requestBlood.jsp";
        }
    </script>