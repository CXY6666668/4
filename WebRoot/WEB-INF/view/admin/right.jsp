
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
.��ʽ1 {
	font-family: "����_GB2312";
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
   <div align="center" class="��ʽ1">��ӭ��������ϵͳ��ҳ
   </div></td>
 </tr>
 </table>
 <p align="center">��ϵͳ�����¼�����Ĺ��ܵ㣺
 </p>
 <table align="center">
 <tr align="left"><td><div align="left">1.ͼ���������ͼ��ķ������ͼ��ά������</div></td></tr>
 <tr align="left"><td><div align="left">2.�û������������������ϵͳ���û����мල�͹���</div></td></tr>
 <tr align="left"><td><div align="left">3.���������������������ϵͳ�Ķ������й���</div></td></tr>
 <tr align="left"><td><div align="left">4.ϵͳ���ܣ�����Ա��һЩϵͳ���ܡ�</div></td></tr>
 </table>
  <p></p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  </body>
</html>
