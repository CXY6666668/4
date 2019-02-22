
<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'right.jsp' starting page</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    
   
    <link rel="stylesheet" type="text/css" href="../../../styles/main.css">
   
    <style type="text/css">
<!--
.样式1 {
	font-family: "楷体_GB2312";
	font-size: 16px;
	font-weight: bold;
	color: #666699;
}
-->
    </style>
  </head>
  
  <body>
 <table align="center">
 <tr>
 <td>
   <div align="center" class="样式1">欢迎来到管理系统主页
   </div></td>
 </tr>
 </table>
 <p align="center">本系统有如下几个大的功能点：
 </p>
 <table align="center">
 <tr align="left"><td><div align="left">1.图书管理：负责图书的分类管理及图书维护管理。</div></td></tr>
 <tr align="left"><td><div align="left">2.用户管理：对在线网上书店系统的用户进行监督和管理。</div></td></tr>
 <tr align="left"><td><div align="left">3.订单管理：对在线网上书店系统的订单进行管理。</div></td></tr>
 <tr align="left"><td><div align="left">4.系统功能：管理员的一些系统功能。</div></td></tr>
 </table>
  <p></p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  </body>
</html>
