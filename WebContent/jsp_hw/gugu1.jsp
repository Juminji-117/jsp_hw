<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv = "Content-Type" content="text/html; charset=UTF-8">
<title>gugu1</title>
<style>
	table {border-collapse: collapse;  border: 1px solid black; }
	td {border: 1px solid black; font: 6pt 나눔고딕; padding:3px; }
</style>
</head>
<body>
<table>
<% 		for (int i=1;i<10; i++) {
			out.print("<tr>");
			for (int j=2; j<10; j++) {
				out.print( "<td>");
				out.print( j + "x" + i + "=" + j*i);
				out.print("</td>");
			}
			out.print("</tr>");
		}

	%>
	</table>
</body>
</html>