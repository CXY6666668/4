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
       ���Ѿ�ע��.����ע����ϸ��Ϣ����
       
   <br>
   <TABLE>
   <tr><td>��½��</td><td>  <c:out value="${userinfo.loginname}"/></td></tr>
   <tr><td>��ʵ����</td><td> <c:out value="${userinfo.realname}"/></td></tr>
   <tr><td>����</td><td> <c:out value="${userinfo.password}"/></td></tr>
   <tr><td>��ϵ�绰</td><td> <c:out value="${userinfo.phone}"/></td></tr>
   <tr><td>email</td><td> <c:out value="${userinfo.email}"/></td></tr>
   <tr><td>��ϵ��ַ</td><td> <c:out value="${userinfo.address}"/></td></tr>
    <tr><td>ע��ʱ��</td><td> <c:out value="${userinfo.regtime}"/></td></tr>
  
   </TABLE>
   <br>
   
   �����ڿ�������ߵ�½�ˣ����ȷ��أ�<br>
     
      
       <br><a href="latestbook.do" >����</a> <br>
  
  
  
  
  
  
  
  
  </body>
</html>
