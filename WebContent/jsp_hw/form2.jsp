<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  div.container { width: 400px; margin: 20px auto; }
  form div { margin-bottom: 10px; }
  input { width: 200px; padding: 4px; }
  select { width: 50px; padding: 4px; }
  button { padding: 0.4em 2em; margin-top: 10px; }
</style>
</head>
<body>
<%
String number = request.getParameter("cmd");
String cmd = (number == null) ? "one" : request.getParameter("cmd");

 %>

  <div class="container">
    <form>

		<div>
          <select name="cmd">
              <option value="one">one</option>
              <option value="two" >two</option>
              <option value="three" >three</option>
           </select>
       </div> 
      
      <div>
        <input type="text" value="<%= cmd %>" />
      </div>
      
      <div>
        <button type="submit"> Ok </button>
      </div>
      
    </form>
  </div>
</body>
</html>
