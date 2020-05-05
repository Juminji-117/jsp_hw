<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
table {border-collapse: collapse; }
tr, td {border: 1px solid black; }
div.s {margin: 10px 5px; }
table.error {border: 1px solid #ffccbb; background-color:#ffccbb; margin:10px 5px; }
</style>
</head>
<body>
<% 
String userid = "";
String 에러메시지 = null;
String sex ="";
if (request.getMethod().equals("POST")) {
    userid = request.getParameter("userid");
    sex = request.getParameter("sex");
    if (userid == null || userid.length() == 0)
        에러메시지 = "회원등록 실패: 이름을 입력하세요";
    else if (sex== null)
   	에러메시지 = "회원등록 실패: 성별을 입력하세요";
    else 
        return;
}
%>

  <form method="post"> 
      <h1>회원 등록</h1>

  
    <div class="s">
        <label>이름</label>
        <input type="text" name="userid" value="<%= userid %>" />
    </div>
    
    <div class="s">
		<div>
        <label>성별:</label>
        </div>

        <div>
        <input id="r1" type="radio" name="sex" value="male" /> 
        <label for="r1">남자</label>
        </div>
        
        <div>
        <input id="r2" type="radio" name="sex" value="female" /> 
        <label for="r2">여자</label>    
    	</div>
    </div>	
    
  		<div class="s">
        <button type="submit">회원 등록</button>
        </div>

</form>


<% if (에러메시지 != null) { %>
<table class="error">
	<tr>
		<td>			
			<%	out.print(에러메시지); %>
		</td>
	</tr>
</table>
<% } %>

<table>
<tr> 
	<td> 이름 </td>
	<td> <%= (userid==null) ? "        " : userid  %>  </td>
</tr>
<tr>
	<td> 성별</td>
	<td> <%= (sex==null) ? "        " : sex  %>  </td>
	</tr>
</table>


</body>
</html>