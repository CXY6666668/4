<%@ include file="/WEB-INF/view/include/taglibs.jsp" %>
<%@ page language="java" contentType="text/html;charset=gb2312" import="java.util.*"%>
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
   
  </head>
  
  <body>
   
   <CENTER>
       所有用户如下：
   
  
  
  <pg:pager
  maxPageItems="10" 
  url="/bookStore/userList.do"
  maxIndexPages="5" 
  export="currentPageNumber=pageNumber">
  
    <TABLE>
    <TR>
    <td>登陆名</td>
    <td>真实姓名</td>
    <td>电子邮件</td>
    <td>联系电话</td>
    <td>通信地址</td>
    <td>注册时间</td>
   <TD>操作</TD>
   
   
    </TR>
    
    <c:forEach var="user" items="${userlist}">
     <pg:item>
    
    <TR>
    <td><c:out value="${user.loginname}"/></td>
    <td><c:out value="${user.realname}"/></td>
    <td><c:out value="${user.email}"/></td>
       <td><c:out value="${user.phone}"/></td>
          <td><c:out value="${user.address}"/></td>
         <td><c:out value="${user.regtime}"/></td>
    <td>      <a href="<c:url value="/delUser.do">
			<c:param name="user_id" value="${user.id}" />
			</c:url>
			" >
			删除</a>
</td>    </TR>
    
    </pg:item>
    </c:forEach>
      
    </TABLE>
  
  
    <pg:index>
    <table width="95%" cellspacing="1" cellpadding="0" align="center"><tr><td align="center"><p>
    <font face=Helvetica size=-1>结果页码:
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


</pg:pager>
  </CENTER>
  </body>
</html>
