<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
	<title>LawGuard</title>
	    <!-- CSS -->
	    <link rel="stylesheet" href="css/style.css" />
	    <!-- Boxicons CSS -->
	    <link
	      href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css"
	      rel="stylesheet"
	    />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>

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
		img
		{
			padding-top:100px
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
		<div>
			<center><img src="https://sscportal.in/sites/default/files/Maharashtra-Police.jpeg" height="600px" width="900px" ></center>
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
