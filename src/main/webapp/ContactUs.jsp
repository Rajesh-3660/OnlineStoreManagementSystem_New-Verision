<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


     <style type="text/css">
     
		* {
			margin: 0;
			padding: 0;
		}
		
		body {
			height: 100vh;
			background: linear-gradient(to top, rgba(0, 0, 0, 0.7) 50%,
				rgba(0, 0, 0, 0.7) 50%), url(pictures/bg.jpg);
			background-position: center;
			background-size: cover;
			overflow-y: hidden;
		}
		
		.container {
			max-width: 400px;
			padding: 20px 40px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 1);
			border-radius: 40px;
			margin-left: 550px;
			margin-top: 40px;
		}
		
		h1 {
			text-align: center;
			color: black;
		}
		
		p {
			font-size: 16px;
			color: white;
		}
		
		.contact-details {
			margin: 20px 0;
		}
		
		.contact-details h2 {
			font-size: 20px;
			color: black;
		}
		
		.contact-details p {
			margin: 5px 0;
		}
		
		.contact-details a {
			color: #4CAF50;
			text-decoration: none;
		}
		
		.form-container {
			margin-top: 30px;
		}
		
		.form-container form {
			display: flex;
			flex-direction: column;
		}
		
		.form-container input, .form-container textarea {
			padding: 10px;
			margin: 10px 0;
			border: 1px solid #fff;
			border-radius: 5px;
		}
		
		.form-container  .msgSent {
			text-decoration: none;
			background-color: #ff7200;
			padding: 15px;
			border-radius: 20px;
			color: white;
			font-size: 20px;
			font-weight: bolder;
			transition: 0.7s ease-in-out;
			text-align: center;
			cursor:pointer;
		}
		
		.form-container a:hover {
			background-color: green;
			color: white;
		}
</style>
</head>
<body>
  <div class="container">
        <h1>Contact Us</h1>
        <p>We are here to help you with any questions or concerns you may have. Please feel free to reach out to us using any of the methods below, and we will get back to you as soon as possible.</p>

        <div class="contact-details">
            <h2>Customer Service</h2>
            <p>Email: <a href="https://mail.google.com/mail/">rcservice@gmail.com</a></p>
            <p>Phone: +91 6302603660</p>
            <p>Address: Arilova, VSP-40, India</p>
        </div>

        <div class="form-container">
            <h2>Send Us a Message</h2>
            <form action="MessageSended.jsp" method="post">
                <input type="text" name="name" placeholder="Your Name" required>
                <input type="email" name="email" placeholder="Your Email" required>
                <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
                <input class="msgSent"  value="submit" type="submit"> 
            </form>
        </div>
    </div>
</body>
</html>