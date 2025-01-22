<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crime Data Entry</title>
    <link rel="stylesheet" href="styles.css">
	<title>LawGuard</title>
		    <!-- CSS -->
		    <link rel="stylesheet" href="css/style.css" />
		    <!-- Boxicons CSS -->
		    <link
		      href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css"
		      rel="stylesheet"
		    />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	    
</head>
<body>
	<nav>
		      <div class="logo">
		        <i class="bx bx-menu menu-icon"></i>
		        <span class="logo-name">Crime Rate Management System</span>
		      </div>
		      <div class="sidebar">
		        <div class="logo">
		          <i class="bx bx-menu menu-icon"></i>
		          <span class="logo-name">LawGuard</span>
		        </div>
		        <div class="sidebar-content">
		          <ul class="lists">
		            <li class="list">
		              <a href="#" class="nav-link">
		                <i class="bx bx-home-alt icon"></i>
		                <span class="link">Dashboard</span>
		              </a>
		            </li>
					
					<li class="list">
						              <a href="CrimeEntry" class="nav-link">
						                <i class="fa-regular fa-address-book"></i> &nbsp;&nbsp;&nbsp;&nbsp;
						                <span class="link">Add Crime Data</span>
						              </a>
						            </li>
		            <li class="list">
		              <a href="#" class="nav-link">
		                <i class="bx bx-bar-chart-alt-2 icon"></i>
		                <span class="link">Report</span>
		              </a>
		            </li>
		            <li class="list">
		              <a href="#" class="nav-link">
		                <i class="bx bx-bell icon"></i>
		                <span class="link">Notifications</span>
		              </a>
		            </li>
		            
		            <li class="list">
		              <a href="#" class="nav-link">
		                <i class="bx bx-pie-chart-alt-2 icon"></i>
		                <span class="link">Analytics</span>
		              </a>
		            </li>
					
					<li class="list">
									  <a href="#" class="nav-link">
										<i class="fa-thin fa-calendar-days"></i>
								     <span class="link">History</span>
								     </a>
								 </li>
		            
		          </ul>
		          <div class="bottom-cotent">
		            <li class="list">
		              <a href="#" class="nav-link">
		                <i class="bx bx-cog icon"></i>
		                <span class="link">Settings</span>
		              </a>
		            </li>
		            <li class="list">
		              <a href="#" class="nav-link">
		                <i class="bx bx-log-out icon"></i>
		                <span class="link">Logout</span>
		              </a>
		            </li>
		          </div>
		        </div>
		      </div>
		    </nav>
    <div class="container">
        <h1>Crime Data Entry</h1>
        <form id="crimeDataForm" action="SaveCrimeInfo" method="post">
            <!-- Crime Type -->
            <div class="form-group">
                <label for="crimeType">Crime Type</label>
                <select id="crimeType" name="crimeType" required>
                    <option value="">-- Select Crime Type --</option>
                    <option value="Robbery">Robbery</option>
                    <option value="Assault">Assault</option>
                    <option value="Fraud">Fraud</option>
                    <option value="Domestic abuse">Domestic abuse</option>
					<option value="Cybercrime">Cybercrime</option>
                </select>
            </div>

            <!-- Location -->
            <div class="form-group">
                <label for="location">Location</label>
                <input type="text" id="location" name="location" placeholder="Enter location" required>
            </div>

            <!-- Date -->
            <div class="form-group">
                <label for="crimeDate">Date</label>
                <input type="date" id="crimeDate" name="Date" required>
            </div>

            <!-- Description -->
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" rows="4" placeholder="Provide a detailed description" required></textarea>
            </div>

            <!-- Suspects -->
            <div class="form-group">
                <label for="suspects">Suspects</label>
                <input type="text" id="suspects" name="suspect" placeholder="Enter suspect names" required>
            </div>

            <!-- Submit Button -->
            <div class="form-actions">
                <button type="submit" class="btn">Submit</button>
                <button type="reset" class="btn secondary">Reset</button>
            </div>
        </form>
    </div>
	<section class="overlay"></section>
	    <script>
			const navBar = document.querySelector("nav"),
			       menuBtns = document.querySelectorAll(".menu-icon"),
			       overlay = document.querySelector(".overlay");
			     menuBtns.forEach((menuBtn) => {
			       menuBtn.addEventListener("click", () => {
			         navBar.classList.toggle("open");
			       });
			     });
			     overlay.addEventListener("click", () => {
			       navBar.classList.remove("open");
			     });
		</script>
</body>
</html>

<style>
	


	/* Container */
	.container {
		padding-top:100px;
	    max-width: 600px;
	    margin: 50px auto;
	    padding: 20px;
	    border: 1px solid #ddd;
	    border-radius: 8px;
	    background-color: #f9f9f9;
	    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
	}

	/* Header */
	h1 {
	    text-align: center;
	    margin-bottom: 20px;
	    color: #333;
	}

	/* Form Group */
	.form-group {
	    margin-bottom: 15px;
	}

	label {
	    display: block;
	    font-weight: bold;
	    margin-bottom: 5px;
	    color: #555;
	}

	input[type="text"],
	input[type="date"],
	select,
	textarea {
	    width: 100%;
	    padding: 10px;
	    border: 1px solid #ccc;
	    border-radius: 4px;
	    font-size: 16px;
	}

	textarea {
	    resize: none;
	}

	/* Form Actions */
	.form-actions {
	    display: flex;
	    justify-content: space-between;
	}

	.btn {
	    padding: 10px 20px;
	    font-size: 16px;
	    border: none;
	    border-radius: 4px;
	    cursor: pointer;
	}

	.btn:hover {
	    opacity: 0.9;
	}

	.btn.primary {
	    background-color: #007bff;
	    color: white;
	}

	.btn.secondary {
	    background-color: #6c757d;
	    color: white;
	}

	/* Responsive Design */
	@media (max-width: 768px) {
	    .form-actions {
	        flex-direction: column;
	        gap: 10px;
	    }

	    .btn {
	        width: 100%;
	    }
	}
	
	@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap");
			* {
			  margin: 0;
			  padding: 0;
			  box-sizing: border-box;
			  font-family: "Poppins", sans-serif;
			}
			body {
			  min-height: 100%;
			  background: #e3f2fd;
			}
			nav {
			  position: fixed;
			  top: 0;
			  left: 0;
			  height: 70px;
			  width: 100%;
			  display: flex;
			  align-items: center;
			  background: #fff;
			  box-shadow: 0 0 1px rgba(0, 0, 0, 0.1);
			}
			nav .logo {
			  display: flex;
			  align-items: center;
			  margin: 0 24px;
			}
			.logo .menu-icon {
			  color: #333;
			  font-size: 24px;
			  margin-right: 14px;
			  cursor: pointer;
			}
			.logo .logo-name {
			  color: #333;
			  font-size: 22px;
			  font-weight: 500;
			}
			nav .sidebar {
			  position: fixed;
			  top: 0;
			  left: -100%;
			  height: 100%;
			  width: 260px;
			  padding: 20px 0;
			  background-color: #fff;
			  box-shadow: 0 5px 1px rgba(0, 0, 0, 0.1);
			  transition: all 0.4s ease;
			}
			nav.open .sidebar {
			  left: 0;
			}
			.sidebar .sidebar-content {
			  display: flex;
			  height: 100%;
			  flex-direction: column;
			  justify-content: space-between;
			  padding: 30px 16px;
			}
			.sidebar-content .list {
			  list-style: none;
			}
			
			
			.list .nav-link {
			  display: flex;
			  align-items: center;
			  margin: 8px 0;
			  padding: 14px 12px;
			  border-radius: 8px;
			  text-decoration: none;
			}
			.lists .nav-link:hover {
			  background-color: #4070f4;
			}
			.nav-link .icon {
			  margin-right: 14px;
			  font-size: 20px;
			  color: #707070;
			}
			.nav-link .link {
			  font-size: 16px;
			  color: #707070;
			  font-weight: 400;
			}
			.lists .nav-link:hover .icon,
			.lists .nav-link:hover .link {
			  color: #fff;
			}
			.overlay {
			  position: fixed;
			  top: 0;
			  left: -100%;
			  height: 1000vh;
			  width: 200%;
			  opacity: 0;
			  pointer-events: none;
			  transition: all 0.4s ease;
			  background: rgba(0, 0, 0, 0.3);
			}
			nav.open ~ .overlay {
			  opacity: 1;
			  left: 260px;
			  pointer-events: auto;
			}



	
	

	</style>