<%@ include file="/WEB-INF/view/include/taglibs.jsp" %>
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
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
  </head>
  
  <body>
       您已经注册.您的注册详细信息如下
       
   <br>
   <TABLE>
   <tr><td>登陆名</td><td>  <c:out value="${userinfo.loginname}"/></td></tr>
   <tr><td>真实姓名</td><td> <c:out value="${userinfo.realname}"/></td></tr>
   <tr><td>密码</td><td> <c:out value="${userinfo.password}"/></td></tr>
   <tr><td>联系电话</td><td> <c:out value="${userinfo.phone}"/></td></tr>
   <tr><td>email</td><td> <c:out value="${userinfo.email}"/></td></tr>
   <tr><td>联系地址</td><td> <c:out value="${userinfo.address}"/></td></tr>
    <tr><td>注册时间</td><td> <c:out value="${userinfo.regtime}"/></td></tr>
  
   </TABLE>
   <br>
   
   您现在可以在左边登陆了，请先返回！<br>
     
      
       <br><a href="latestbook.do" >返回</a> <br>
  
  
  
  
  
  
  
  
  </body>
</html>
