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
     
   ����������Ϣ. <br>
    <TABLE>
    <TR><td><LABEL>������</LABEL></td><td><LABEL><c:out value="${orderinfo.id}"/></LABEL></td></TR>
    <TR><td><LABEL>�ܽ��</LABEL></td><td><LABEL><c:out value="${orderinfo.totalprice}"/></LABEL></td></TR>
    <TR><td><LABEL>�ύʱ��</LABEL></td><td><LABEL><c:out value="${orderinfo.submittime}"/></LABEL></td></TR>
    </TABLE>
    ������ϸ��Ϣ. <br>
    <TABLE>
    <TR><TD>���</td><td><LABEL>ͼ��id</LABEL></td><td><LABEL>����</LABEL></td></TR>
    <c:forEach var="orderdetail" items="${orderdetail}" varStatus="status" >
    <TR>
    <TD><c:out value="${status.count}"/></TD>
    <td><c:out value="${orderdetail.bookid}"/></td><td><c:out value="${orderdetail.amout}"/></td></TR>
    
    </c:forEach>
  
    </TABLE>
   <a href="javascript:history.back()">����</a>
   
  </body>
</html>
