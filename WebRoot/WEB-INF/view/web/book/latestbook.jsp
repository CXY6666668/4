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
    
    <title>My JSP 'list.jsp' starting page</title>
    
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
  <script>
   function chkdelete(){
   if(confirm("是否确实删除？"))
   return true;
   else return false;
  }
  </script>  
  <CENTER>
  
    最新图书列表. <br>
  
   
   <BR>
   <pg:pager
  maxPageItems="10" 
  url="latestbook.do"
  maxIndexPages="10" 
  export="currentPageNumber=pageNumber">
  
   <TABLE border="0" bordercolor="#FFFFCC">
    <TR bgcolor="#CCCCCC">
    <td><LABEL>书名</LABEL></td>
    <td><LABEL>图书类别</LABEL></td>
    <td><LABEL>作者</LABEL></td>
   <td><LABEL>出版社</LABEL></td>
   <td><LABEL>定价（元）</LABEL></td>
   <td><LABEL>售价（元）</LABEL></td>
   <td><LABEL>操作</LABEL></td><!--包括 查看、订购-->
   </TR>
 
 
 <c:forEach var="bookinfo" items="${bookList}" end="99">
     <pg:item>
   <tr>
   <td><c:out value="${bookinfo.name}"/></td>
   <td><c:out value="${bookinfo.categoryid}"/></td>
   <td><c:out value="${bookinfo.author}"/></td>
   <td><c:out value="${bookinfo.press}"/></td>
   <td><c:out value="${bookinfo.price}"/></td>
   <td><c:out value="${bookinfo.saleprice}"/></td>
   <td>
   <a href="<c:url value="/detailBook.do">
			<c:param name="book_id" value="${bookinfo.id}"  />
			</c:url>
			" >
			查看此书</a>
   <a href="<c:url value="/buyBook.do">
			<c:param name="book_id" value="${bookinfo.id}" />
			</c:url>
			" target="_blank">
			订购</a>
	
			
  </td><!--包括 查看、订购-->
  </tr>
  
   </pg:item>
  </c:forEach>
   </TABLE>
 
 <TABLE>
 <TR>
 <td>
  <pg:index>
    <table align="left"><tr><td align="center"><p>
    <font face=Helvetica size=-1>页码:
    <pg:prev>&nbsp;<a href="<%= pageUrl %>">[&lt;&lt; 前一页]</a></pg:prev>
    <pg:pages><%
      if (pageNumber.intValue() < 10) { 
        %>&nbsp;<%
      }
      if (pageNumber == currentPageNumber) { 
        %><b><%= pageNumber %></b><%
      } else { 
        %><a href="<%= pageUrl %>"><%= pageNumber %></a><%
      }
    %>
    </pg:pages>
    <pg:next>&nbsp;<a href="<%= pageUrl %>">[后一页 &gt;&gt;]</a></pg:next>
    <br></font></p></td></tr></table>
  </pg:index>
 
 </td>
 
 </TR>
 
 </TABLE> 
  
</pg:pager>
  </center>
  
 
  </body>
</html>
