<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
       <script>
			function msgSented() 
			{
			   window.alert("Message Sent");
			}
	  </script>
  </head>    
<body>
    <%--   <%! int count=0; %> --%>
     <%
        
         try{
        	/*   if(true)
        	  {   count=1;
        	      out.print("please wait a minute....The message is in the process");
        	  }
              
        	  if(count==1) */
        	              Thread.sleep(5000);
         }
         catch(Exception e)
         {
        	 out.println(e);
         }
      %>
      
      <% response.sendRedirect("home.jsp");%>

      
      
</body>
</html>