<%-- 
    Document   : displayValue.jsp
    Created on : 11 Jun, 2024, 12:31:06 PM
    Author     : avinash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Page</title>
    </head>
    <body>
        <%!
            int ageInNumbers;
            String EMAIL_REGEX="^([\\w-\\.]+){1,64}@([\\w&&[^_]]+){2,255}.[a-z]{2,}$";
        %>
        <%
        
String name=request.getParameter("Name");
String Eid=request.getParameter("Eid");
String age=request.getParameter("age");
String Role=request.getParameter("Role");
String email=request.getParameter("email");
String Salary=request.getParameter("Salary");
String gender=request.getParameter("gender");
String nothing=""; 
  if(name.equals(nothing)) {
  out.println("<font color=red>Please fill the Name!!</font><br>");
            }  
if(!email.matches(EMAIL_REGEX)){
out.println("<font color=red>Please provide correct email!!</font><br>");
            }
      ageInNumbers=Integer.parseInt(age.trim());
      if(ageInNumbers<18 && ageInNumbers>60){
      out.println("<font color=red>Please provide Age within given range!!</font><br>");

            }
        %>
        
        <fieldset style="background-color: aliceblue;"><legend> <h1>Employee Details</h1></legend>
            <div style="text-align-last:" center;">
        Employee Name:<%=name%><br>
         Age:<%=age%><br> 
          Role:<%=Role%><br> 
          Email:<%=email%><br> 
            Salary:<%=Salary%><br> 
             Gender:<%=gender%><br>
             
             <div>
            </fieldset> 
             
             <button>  <a href="index.html">Click Here to Go Back</a></button>
             
    </body>
</html>
