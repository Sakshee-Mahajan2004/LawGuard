<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
		/* Reset and common styles */
		* {
		    margin: 0;
		    padding: 0;
		    box-sizing: border-box;
		    font-family: 'Poppins', sans-serif;
		}

		/* Root variables for the color palette */
		:root {
		    --primary-light-blue: #e3f2fd; /* Soft blue for background */
		    --primary-blue: #64b5f6;       /* Button and accent color */
		    --primary-gray: #f8f9fa;       /* Light gray for containers */
		    --text-dark: #333;             /* Dark gray for text */
		    --text-muted: #555;            /* Muted gray for secondary text */
		    --accent-blue: #42a5f5;        /* Button hover color */
		    --accent-green: #66bb6a;       /* Success link color */
		}

		/* Body styles */
		body {
		    background: var(--primary-light-blue);
		    height: 100vh;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    color: var(--text-dark);
		}

		/* Login Container */
		.login-container {
		    width: 100%;
		    max-width: 400px;
		    padding: 20px;
		    background: var(--primary-gray);
		    border-radius: 10px;
		    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
		    animation: fadeIn 1s ease-in-out;
		}

		/* Form Box */
		.form-box h1 {
		    font-size: 24px;
		    text-align: center;
		    margin-bottom: 15px;
		    color: var(--text-dark);
		    animation: slideDown 1s ease-out;
		}

		.form-box p {
		    text-align: center;
		    margin-bottom: 20px;
		    font-size: 14px;
		    color: var(--text-muted);
		}

		.form-box form {
		    display: flex;
		    flex-direction: column;
		    gap: 15px;
		}

		/* Input Group */
		.input-group {
		    position: relative;
		}

		.input-group input {
		    width: 100%;
		    padding: 12px;
		    padding-left: 10px;
		    background: var(--primary-light-blue);
		    border: 1px solid #ccc;
		    border-radius: 5px;
		    outline: none;
		    color: var(--text-dark);
		    font-size: 14px;
		    transition: border-color 0.3s ease;
		}

		.input-group input:focus {
		    border-color: var(--primary-blue);
		}

		.input-group label {
		    position: absolute;
		    left: 10px;
		    top: 50%;
		    transform: translateY(-50%);
		    color: var(--text-muted);
		    font-size: 14px;
		    pointer-events: none;
		    transition: all 0.3s ease;
		}

		.input-group input:focus + label,
		.input-group input:not(:placeholder-shown) + label {
		    top: -8px;
		    left: 8px;
		    font-size: 12px;
		    color: var(--primary-blue);
		    background: var(--primary-gray);
		    padding: 0 5px;
		    border-radius: 3px;
		}

		/* Button */
		.login-btn {
		    padding: 12px;
		    background: var(--primary-blue);
		    border: none;
		    border-radius: 5px;
		    color: white;
		    font-size: 16px;
		    font-weight: bold;
		    cursor: pointer;
		    transition: background-color 0.3s ease;
		}

		.login-btn:hover {
		    background: var(--accent-blue);
		    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
		}

		/* Signup Text */
		.signup-text {
		    text-align: left;
		    font-size: 12px;
		    color: var(--text-muted);
		}

		.signup-text a {
		    color: var(--primary-blue);
		    text-decoration: underline;
		    transition: color 0.3s ease;
		}

		.signup-text a:hover {
		    color: var(--accent-green);
		}

		/* Animations */
		@keyframes fadeIn {
		    from {
		        opacity: 0;
		        transform: translateY(-10px);
		    }
		    to {
		        opacity: 1;
		        transform: translateY(0);
		    }
		}

		@keyframes slideDown {
		    from {
		        transform: translateY(-20px);
		        opacity: 0;
		    }
		    to {
		        transform: translateY(0);
		        opacity: 1;
		    }
		}

</style>
</head>
<body>
    <div class="login-container">
        <div class="form-box">
            <h1>Login</h1>
            <p>Crime Rate Management</p>
            <form action="/LoginCred" method="post">
                <div class="input-group">
                    <input type="text" id="username" placeholder="Username" name="us" required>
                    <label for="username">Username</label>
                </div>
                <div class="input-group">
                    <input type="password" id="password" placeholder="Password"  name="ps" required>
                    <label for="password">Password</label>
                </div>
                <button type="submit" class="login-btn">Login</button>
                <p class="signup-text"><a href="#">Forget Password</a></p>
				<p class="signup-text"><a href="#">Forget Username</a></p>
            </form>
        </div>
    </div>
</body>
</html>
