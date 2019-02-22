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

    订单列表. <br>
 
   <BR>
   <pg:pager
  maxPageItems="10" 
  url="/bookStore/orderList.do"
  maxIndexPages="10" 
  export="currentPageNumber=pageNumber">
  
   <TABLE border="1">
    <TR>
    <td><LABEL>订单号</LABEL></td>
    <td><LABEL>用户id</LABEL></td>
    <td><LABEL>总金额（元）</LABEL></td>
   <td><LABEL>提交时间</LABEL></td>
   <td><LABEL>是否付款</LABEL></td>
   <td><LABEL>是否发货</LABEL></td>
   <td><LABEL>操作</LABEL></td><!--包括 查看、付款、发货-->
   </TR>
 
 
 <c:forEach var="orderinfo" items="${orderList}">
     <pg:item>
   <tr>
   <td><c:out value="${orderinfo.id}"/></td>
   <td><c:out value="${orderinfo.userid}"/></td>
   <td><c:out value="${orderinfo.totalprice}"/></td>
   <td><c:out value="${orderinfo.submittime}"/></td>
   <td><c:out value="${orderinfo.ispay}"/></td>
   <td><c:out value="${orderinfo.isdeliver}"/></td>
   <td>
   <a href="<c:url value="/detailOrder.do">
			<c:param name="order_id" value="${orderinfo.id}" />
			</c:url>
			">
			查看</a>
			
	<a href="<c:url value="/updateOrder.do">
			<c:param name="order_id" value="${orderinfo.id}" />
			</c:url>
			">
			发货</a>
 			
  </td>
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
   
  </body>
</html>
