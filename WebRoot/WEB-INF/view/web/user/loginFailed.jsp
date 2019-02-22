<%@ page language="java" contentType="text/html;charset=gb2312" import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'regSuccess.jsp' starting page</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    
    <link rel="stylesheet" type="text/css" href="styles/main.css">
    <style type="text/css">

    </style>
  </head>
  
  <body>
   <BR>
  &nbsp;&nbsp;&nbsp;&nbsp;用户名或密码错误！<BR>
   <BR> 
  &nbsp;&nbsp;&nbsp;&nbsp;<A href="login.do">重新登陆</A>
  <BR>
  
  </body>
</html>
