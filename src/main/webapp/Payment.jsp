<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Page</title>
    <style>
         *{
            margin: 0;
            padding: 0;
       }
       body {
            height: 100vh;
		    background: linear-gradient(to top,rgba(0,0,0,0.7)50%,rgba(0,0,0,0.7)50%), url(pictures/bg.jpg);
		    background-position: center;
		    background-size: cover;
            overflow-y:hidden;
        }
        .container {
            max-width: 400px;
            padding: 25px 30px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.9);
            border-radius:20px;          
            margin-top:60px;
            margin-left:550px;
        }
        h1 {
            text-align: center;
            color: black;
        }
        form {
            display: flex;
            flex-direction: column;
            font-size: 20px;
        }
        label {
            color:white;
            margin: 10px 0 5px;
        }
        input {
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            padding: 10px 20px;
            background-color: #ff7200;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 20px;
            transition: 0.5s ease-in-out;
            font-weight:bolder;
            font-size:17px;
        }
        button:hover {
            background-color: green;
        }
    </style>
</head>
<body>

    <%
       if(session.getAttribute("uname")==null)
       {
    	   response.sendRedirect("index.html");
       }
    
    %>
    <div class="container">
        <h1>Payment Information</h1>
        <form action="#" method="post">
            <label >Name </label>
            <input type="text" id="name" name="name" placeholder="Enter your name as in Card" required>

            <label >Card Number</label>
            <input type="text" id="card-number" name="card-number" placeholder="1234 5678 9012 3456" required>

            <label >Expiration Date</label>
            <input type="text" id="exp-date" name="exp-date" placeholder="MM/YY" required>

            <label >CVV</label>
            <input type="text" id="cvv" name="cvv" placeholder="123" required>

            <button type="submit" onsubmit="paymentDone()";>Submit Payment</button>
        </form>
    </div>
    <script>
          function paymentDone()
          {
        	  window.alret("hi");
          }
    </script>
</body>
</html>
