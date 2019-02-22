
<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    
    
    <link rel="stylesheet" type="text/css" href="styles/main.css">
    
  </head>
  
  
  
	<frameset rows="130,*,23" cols="*" framespacing="2" border="2" bordercolor="#999999">
  <frame src="adminhead.do" name="topFrame" scrolling="NO" noresize>
  <frameset rows="*" cols="200,*" framespacing="0" frameborder="NO" border="0">
		<frame src="adminleft.do" name="leftFrame" scrolling="NO" noresize>
		<frame src="adminright.do" name="mainFrame">
  </frameset >
  <frame src="bottom.do" name="bottomFrame" scrolling="NO" noresize>
</frameset>
 <noframes><body>
</body></noframes>
</html>
