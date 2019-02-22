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
    
    <title>My JSP 'detail.jsp' starting page</title>
    
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
 <center> 
   图书详细信息. <br>
    <TABLE>
    <TR ><td width="80"><LABEL>书名</LABEL></td><td><LABEL><c:out value="${bookinfo.name}"/></LABEL></td></TR>
   
    <TR><td><LABEL>作者</LABEL></td><td> <LABEL><c:out value="${bookinfo.author}"/></LABEL></td></TR>
    <TR><td><LABEL>出版社</LABEL></td><td><LABEL><c:out value="${bookinfo.press}"/></LABEL></td></TR>
    <TR><td><LABEL>定价</LABEL></td><td><LABEL><c:out value="${bookinfo.price}"/></LABEL></td></TR>
    <TR><td><LABEL>售价</LABEL></td><td><LABEL><c:out value="${bookinfo.saleprice}"/></LABEL></td></TR>
    <TR><td><LABEL>简介</LABEL></td><td><LABEL><c:out value="${bookinfo.descript}"/></LABEL></td></TR>
    <TR><td><LABEL>内容目录</LABEL></td><td> <textarea name="content" cols="100" rows="10" readonly="true"><c:out value="${bookinfo.content}"/></textarea></td></TR>
    
    <TR><td align="center">
   
<a href="javascript:history.back()">返回</a>
    
    </td></TR>
    </TABLE>
   </center>
   
  </body>
</html>
