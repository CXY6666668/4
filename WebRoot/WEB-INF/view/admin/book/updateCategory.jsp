<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page language="java" contentType="text/html;charset=gb2312" import="java.util.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateCategory.jsp' starting page</title>
    
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
    类别修改： <br>
     <FORM name="cateUpdateForm"  method="post"  action="/bookStore/updateCategory.do" onSubmit="return chk();">
    <TABLE>
    <TR><td><LABEL>类别名称</LABEL></td>
    <td><INPUT type="hidden" name="id" value='<c:out value="${cate.id}"/>' > </td>
    <td><INPUT name="categoryname" value='<c:out value="${cate.categoryname}"/>' > </td>
    <td><BUTTON type="submit">保存</BUTTON></td>
    </TR>
    
    </TABLE>
   </FORM> 
  </body>
</html>
