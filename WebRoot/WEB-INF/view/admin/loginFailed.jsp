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
  <CENTER>
   <BR>
  &nbsp;&nbsp;&nbsp;&nbsp;µÇÂ½ĞÅÏ¢ÌîĞ´´íÎó£¬Çë×ĞÏ¸ÌîĞ´£¡<BR>
   <BR> 
  &nbsp;&nbsp;&nbsp;&nbsp;<A href="adminlogin.do">ÖØĞÂµÇÂ½</A>
  <BR>
  </CENTER>
  </body>
</html>
