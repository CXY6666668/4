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
     
   订单基本信息. <br>
    <TABLE>
    <TR><td><LABEL>订单号</LABEL></td><td><LABEL><c:out value="${orderinfo.id}"/></LABEL></td></TR>
    <TR><td><LABEL>总金额</LABEL></td><td><LABEL><c:out value="${orderinfo.totalprice}"/></LABEL></td></TR>
    <TR><td><LABEL>提交时间</LABEL></td><td><LABEL><c:out value="${orderinfo.submittime}"/></LABEL></td></TR>
    </TABLE>
    订单详细信息. <br>
    <TABLE>
    <TR><TD>序号</td><td><LABEL>图书id</LABEL></td><td><LABEL>数量</LABEL></td></TR>
    <c:forEach var="orderdetail" items="${orderdetail}" varStatus="status" >
    <TR>
    <TD><c:out value="${status.count}"/></TD>
    <td><c:out value="${orderdetail.bookid}"/></td><td><c:out value="${orderdetail.amout}"/></td></TR>
    
    </c:forEach>
  
    </TABLE>
   <a href="javascript:history.back()">返回</a>
   
  </body>
</html>
