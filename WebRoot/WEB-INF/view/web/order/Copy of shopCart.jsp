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
    
    <title>My JSP 'shopCart.jsp' starting page</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    
    <link rel="stylesheet" type="text/css" href="styles/main.css">
    <style type="text/css">

    </style>
  
  </head>
  
 
<body>
<script>
   function chkdelete(){
   if(confirm("�Ƿ�ȷʵɾ����"))
   return true;
   else return false;
  }
  </script>  
<br>
<c:set value="0" var="count"/>
<FORM name="addOrderForm"  method="post" action="addOrder.do" >
<center>
 �ҵĹ��ﳵ.
  <table width="800" border="1" cellpadding="1" cellspacing="0" bordercolor="#E3E9F1">
  <tr>
    <td width="30" class="table_title">&nbsp;</td>
    <td width="90" class="table_title">����</td>
    <td width="90" class="table_title">����</td>
    <td width="90" class="table_title">������</td>
    <td width="90" class="table_title">ԭ�ۣ���λ��Ԫ��</td>
    <td width="90" class="table_title">�ּۣ���λ��Ԫ��</td>
    <td width="60" class="table_title">��ǰ��Ŀ</td>
    <td width="60" class="table_title">�޸���Ŀ</td>
    <td width="40">&nbsp;</td>
  </tr>
  
  <c:forEach var="bookinfo" items="${sessionScope.shoplist}" varStatus="status">
  <tr class="table_row">
    <td width="30"><c:out value="${status.count}"/></td>
    <td><c:out value="${bookinfo.name}"/></td>
   
   <td><c:out value="${bookinfo.author}"/></td>
   <td><c:out value="${bookinfo.press}"/></td>
   <td><c:out value="${bookinfo.price}"/></td>
   <td><c:out value="${bookinfo.saleprice}"/></td>
   
   
    <td>
    
      
       <c:out value="${bookinfo.amount}"/>
        
      
       <td>
    
      <select name="amount" id="amount">
       
        <option value="1">1��</option>
        <option value="2">2��</option>
        <option value="3">3��</option>
  
  
      </select></td>
  
  
  
    <td width="40"><a href="<c:url value="/delShopCart.do">
			<c:param name="book_id" value="${bookinfo.id}" />
			</c:url>
			" onClick="return chkdelete();">
			ɾ��</a>		</td>
  </tr>
  
  <c:set value="${bookinfo.amount*bookinfo.saleprice+count}" var="count" />
 </c:forEach>
 <TR align="right" ><td width="800" align="right">
   ���ƣ� <c:out value="${count}"/>&nbsp;Ԫ������ң�
 </td></TR>
  <tr align="center">
    <TD width="30">
 
     <input name="userid" type=hidden value='<c:out value="${sessionScope.id}"/>'>
      <input name="totalPrice" type=hidden value='<c:out value="${count}"/>'>
    </TD>
    <td align="center" width="400">
	    <input name="updateOrder" type="submit" value="���¶���" >
	  <input name="ConfirmOrder" type="submit" value="�¶���" >
	</td>
  </tr>
</table>

</center>
</FORM>
</body>
</html>
