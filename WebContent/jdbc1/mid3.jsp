<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  button { padding: 0.4em 2em; margin-top: 10px; }
</style>
</head>
<body>
<%
String cmd = request.getParameter("cmd");
if (cmd == null) cmd ="one";

 %>

  <div class="container">
    <form>

           <select name="cmd">
              <option <%= "one".equals(cmd) ? "selected" : "" %> value="one">one</option>
              <option  <%= "two".equals(cmd) ? "selected" : "" %> value="two" >two</option>
              <option  <%= "three".equals(cmd) ? "selected" : "" %> value="three" >three</option>
           </select>      

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