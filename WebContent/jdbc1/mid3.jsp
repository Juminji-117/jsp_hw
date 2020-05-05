<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  button { padding: 0.4em 2em; margin-top: 10px; }
  select { margin-top:10px; }
</style>
</head>
<body>
<%
String cmd = request.getParameter("cmd");
if (cmd == null) cmd ="one";

 %>
    <form>
    	<div>
        <input <%= "one".equals(cmd) ? "checked" : "" %> id="one" type="radio" name="cmd" value="one"  /> 
        <label for="r1">one</label>
        
        <input <%= "two".equals(cmd) ? "checked" : "" %> id="two" type="radio" name="cmd" value="two" /> 
        <label for="two">two</label>    

        <input <%= "three".equals(cmd) ? "checked" : "" %>id="three" type="radio" name="cmd" value="three" /> 
        <label for="three">three</label>   
    	</div>
    	
        <select name="cmd">
          <option <%= "one".equals(cmd) ? "selected" : "" %> value="one">one</option>
          <option  <%= "two".equals(cmd) ? "selected" : "" %> value="two" >two</option>
          <option  <%= "three".equals(cmd) ? "selected" : "" %> value="three" >three</option>
        </select>      

		<div>	
        <button type="submit"> Ok </button>
		</div>
      
    </form>
</body>
</html>