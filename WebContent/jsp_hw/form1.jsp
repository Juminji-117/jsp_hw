<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  div.container { width: 400px; margin: 20px auto; }
  form div { margin-bottom: 10px; }
  input { width: 200px; padding: 4px; }
  button { padding: 0.4em 2em; margin-top: 10px; }

</style>
</head>
<body>
<%
String number = request.getParameter("num");
int num = (number == null) ? 0 : Integer.parseInt(number); 

if(request.getParameter("add") != null){ 
	       num += 1;
}
 %>

  <div class="container">
    <form>
    
      <div>
        <input type="text" name="num" value="<%= num %>"  />
      </div>

      <div>
        <button type="submit" name="add">++</button>
      </div>
      
    </form>  
  </div>
  
</body>
</html>

