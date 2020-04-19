<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="webprogramming.form02.*" %> 
<%
int id = 0;
String studentNumber= "";
String name="";
int departmentId=0;
int year=0;
String 에러메시지 = null;
request.setCharacterEncoding("UTF-8");
if (request.getMethod().equals("POST")) {
 	String a = request.getParameter("id");
    id =  Integer.parseInt(a);
    studentNumber =  request.getParameter("studentNumber");
    name = request.getParameter("name");
    String b = request.getParameter("year");
    year = Integer.parseInt(b);
    String c = request.getParameter("departmentId");
    departmentId = Integer.parseInt(c);
    
    if (a == null || a.length() == 0) 
        에러메시지 = "아이디를 입력하세요";
    else if (studentNumber == null || studentNumber.length() == 0) 
        에러메시지 = "학번을 입력하세요";
    else if (name == null || name.length() == 0) 
        에러메시지 = "이름을 입력하세요";
    else if (b == null || b.length() == 0) 
        에러메시지 = "학년을 입력하세요";
    else {
        Student student = new Student(id, studentNumber, name, departmentId, year); 
        session.setAttribute("student", student); 
        response.sendRedirect("studentCreate_success.jsp"); 
        return; 
    }    
}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="https://kit.fontawesome.com/68abb170e0.js" crossorigin="anonymous"></script>
<style>
  body { font-family: 굴림체; font-size: 10pt; }
  div.container { width: 400px; margin: 20px auto; }
  form, form div { margin-bottom: 20px; }
  label { display: block; }   
  input.text { width: 200px; padding: 5px; }
  select { width: 150px; padding: 5px; }
  .btn { padding: 0.7em 2em; border: 1px solid #aaa; border-radius: 4px; 
         background: linear-gradient(#fff, #ddd); color: black;       
         font-family: 굴림체; font-size: 10pt; line-height: 1em;   
         text-decoration: none; cursor: pointer; display: inline-block; }
  .btn:active {
      -ms-transform: translateY(2px);
      -webkit-transform: translateY(2px);
      transform: translateY(2px);
      background: #ccc;  }
   hr { margin-top: 80px; }
   div.info { margin: 10px; padding: 10px 20px; background-color: #dff; border: 1px solid #8ff; }
   div.error { margin: 10px; padding: 10px 20px; background-color: #fdd; border: 1px solid #faa; }
</style>
</head>
<body>

<div class="container">


<form method="post">
  <h1>학생 등록</h1>
  <div>
    <label>아이디</label>
    <input type="text" class="text" name="id" value="<%= id %>" />
  </div>
  <div>
    <label>학번</label>
    <input type="text" class="text" name="studentNumber" value="<%= studentNumber %>" />
  </div>
  <div>
    <label>이름</label>
    <input type="text" class="text" name="name" />
  </div>
  <div>
    <label>학과</label>
    <select class="form-control" name="department">
      <option value="1" <%= departmentId == 1 ? "selected" : "" %>>소프트웨어공학과</option>
      <option value="2" <%= departmentId == 2 ? "selected" : "" %>>컴퓨터공학과</option>
      <option value="3" <%= departmentId == 3 ? "selected" : "" %>>정보통신공학과</option>
      <option value="4" <%= departmentId == 4 ? "selected" : "" %>>글로컬IT공학과</option>
    </select>
  </div>
    <div>
    <label>학년</label>
    <input type="text" class="text" name="year" value="<%= year %>" />
  </div>
  <button type="submit" class="btn">
      <i class="fas fa-user-plus"></i> 학생등록
  </button>
</form>

<% if (에러메시지 != null) { %>
  <div class="error">
    학생등록 실패: <%= 에러메시지 %>
  </div>
<% } %>
</div>
</body>
</html>
