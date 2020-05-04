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

if(request.getParameter("multiple") != null){ 
	       num += 1;
}
 %>
    <form>
        <input type="text" name="num" value="<%= num %>"  />
        <button type="submit" name="multiple">단</button>
    </form>  
<table>
<tr>
<% 				for (int i=1; i<10; i++) {
				out.print( "<td>");
				out.print( num + "x" + i + "=" + num*i);
				out.print("</td>");
			}
%>
			</tr>
</table>
</body>
</html>