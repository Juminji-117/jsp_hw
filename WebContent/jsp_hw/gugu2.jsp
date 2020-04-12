<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv = "Content-Type" content="text/html; charset=UTF-8">
<title>gugu2</title>
<style>
	table {border-collapse: collapse;  border: 1px solid #aaa; }
	td, tr {border: 1px solid #aaa; font-size: 6pt; font-weight: 600; font-family:나눔고딕; padding: 3px; }
</style>
</head>
<body>
<table>
<tr>

<% 		for (int i=2;i<10; i++) { 
			out.println("<td>");
			 for (int j=1; j<10; j++) {
				out.print( i + "x" + j + "=" + i*j  ); 
				out.print("<br/>"); 
					 }
			out.println("</td>");
							}
	%>
	</tr>
	</table>
</body>
</html>