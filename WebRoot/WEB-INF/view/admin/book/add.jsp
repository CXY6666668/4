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
    
    <title>My JSP 'addBook.jsp' starting page</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    

    <link rel="stylesheet" type="text/css" href="styles/main.css">
  </head>
  
  <body>
    ����ͼ��. <br>
      <FORM name="addBookForm"  method="post"  action="addBook.do" >
    <TABLE>
    <TR><td><LABEL>����</LABEL></td><td> <INPUT name="name"></td></TR>
    <TR><td><LABEL>���</LABEL></td><td>
     <SELECT name="categoryid">
    <c:forEach var="cate" items="${cate}">
      <OPTION value='<c:out value="${cate.id}"/>'>
      <c:out value="${cate.categoryname}" />
      </OPTION>
      
      </c:forEach>
     
      </SELECT>
    
      </td></TR>
    <TR><td><LABEL>����</LABEL></td><td> <INPUT name="author"></td></TR>
    <TR><td><LABEL>������</LABEL></td><td> <INPUT name="press"></td></TR>
    <TR><td><LABEL>����</LABEL></td><td> <INPUT name="price"></td></TR>
    <TR><td><LABEL>�ۼ�</LABEL></td><td> <INPUT name="saleprice"></td></TR>
    <TR><td><LABEL>���</LABEL></td><td> <textarea name="descript" cols="100" rows="5"></textarea></td></TR>
    <TR><td><LABEL>����Ŀ¼</LABEL></td><td> <textarea name="content" cols="100" rows="10"></textarea></td></TR>
    <TR>
    <td><BUTTON type="submit">ȷ��</BUTTON></td>
  
    </TR>
    </TABLE>
   </FORM>
   <a href="javascript:history.back()">����</a>
  </body>
</html>
