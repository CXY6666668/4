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
    
    <title>�����ɹ��ύ</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
     <link rel="stylesheet" type="text/css" href="styles/main.css">
  
   
   
  </head>
  
  <body>
    <CENTER>
      ���Ѿ�������ύ��������ϸ��Ϣ���£�
       
   <br>
   <TABLE>
   <tr><td>���Ķ����ţ�</td><td>  <c:out value="${orderinfo.id}"/></td></tr>
   <tr><td>�����ύʱ�䣺</td><td> <c:out value="${orderinfo.submittime}"/></td></tr>
   <tr><td>��Ҫ���ɵķ���Ϊ��</td><td> <c:out value="${orderinfo.totalprice}"/></td></tr>
   
   </TABLE>
   <br>
   
   �������ʲô���ʿ��Բ���绰��000��00000000;���߷����ʼ���:mmx334421@sina.com��
     
   <br><a href="latestbook.do" >����</a> <br>
  
    </CENTER>
  </body>
</html>
