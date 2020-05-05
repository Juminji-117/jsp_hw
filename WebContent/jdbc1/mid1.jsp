<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
	table {border-collapse: collapse; margin-top:5px;}
	td, tr {border: 1px solid black; padding-right: 70px; text-align:left; }
	button {padding: 3px 20px; }
</style>
</head>
<body>
<%
   String number = request.getParameter("num");
   int num = number == null ? 0 : Integer.parseInt(number);
   String multiple = request.getParameter("multiple");
%>
    <form>
        <input type="text" name="num" value="<%= num %>"  />
        <button type="submit" name="multiple">단</button>
    </form>  
   <table>
<%   for (int i = 1; i < 10; i++) {   %>
      <tr>
         <td>
<%
         if (multiple != null) {
            out.print(num + "x" + i + "=" + num * i);
         } else {
            out.print("0x" + i + "=0");
         }
%>
         </td>
      </tr>
<%   }   %>
   </table>    
</body>
</html>