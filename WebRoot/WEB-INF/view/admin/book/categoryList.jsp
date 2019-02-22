<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page language="java" contentType="text/html;charset=gb2312" import="java.util.*"%>
<%@ include file="/WEB-INF/view/include/taglibs.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'categoryList.jsp' starting page</title>
    
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
    function chk(){     
    
    if(document.categoryForm.categoryname.value=='')
    {
        alert("请填写图书分类名！");
      	document.categoryForm.categoryname.focus();
        return false;
    }  
     
    return true;
    } 
    
   function chkdelete(){
   if(confirm("是否确实删除？"))
   return true;
   else return false;
   
   }
      
</script>  
  
  
  
    图书类别列表<br>
    <TABLE>
    <c:forEach var="cate" items="${cateList}">
 
    <TR>
    <td><c:out value="${cate.categoryname}"/></td>
    
    <TD><a href="<c:url value="/cateBook.do">
			<c:param name="cate_id" value="${cate.id}" />
			</c:url>
			">
			查看此类图书</a></TD>
	
    
    <TD><a href="<c:url value="/showUpdateCate.do">
			<c:param name="cate_id" value="${cate.id}" />
			</c:url>
			">
			修改</a></TD>
			
	<TD><a href="<c:url value="/delCate.do">
			<c:param name="cate_id" value="${cate.id}" />
			</c:url>
			" onClick="return chkdelete();">
			删除</a></TD>
    </TR>

     </c:forEach>
  </TABLE>
 
  
   <FORM name="categoryForm"  method="post"  action="/bookStore/addCategory.do" onSubmit="return chk();">
    <TABLE>
    <TR><td><LABEL>类别名称</LABEL></td>
    <td><INPUT name="categoryname"></td>
    <td><BUTTON type="submit">新增</BUTTON></td>
    <td><BUTTON type="reset">重写</BUTTON></td></TR>
    
    </TABLE>
   </FORM> 
  </body>
</html>
