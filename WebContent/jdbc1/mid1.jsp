<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<%
String number = request.getParameter("num");
int num = (number == null) ? 0 : Integer.parseInt(number); 
 %>
    <form>
        <input type="text" name="num" value="<%= num %>"  />
        <button type="submit" name="multiple">단</button>
    </form>  
<%
out.print("<table>");
out.print("<tr>");
 				for (int i=1; i<10; i++) {
				out.print( "<td>");
				if(request.getParameter("multiple") != null){ 
				 out.print( num + "x" + i + "=" + num*i);
				 out.print("</td>");
				 }
				else {
					out.print ("0" + "x" + i + "=" + "0");
				 	out.print("</td>");
				}
 				}
out.print("</tr>");
out.print("</table>");
%>    
</body>
</html>