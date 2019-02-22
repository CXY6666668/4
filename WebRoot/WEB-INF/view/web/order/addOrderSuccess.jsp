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
    
    <title>订单成功提交</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
     <link rel="stylesheet" type="text/css" href="styles/main.css">
  
   
   
  </head>
  
  <body>
    <CENTER>
      您已经完成了提交订单，详细信息如下：
       
   <br>
   <TABLE>
   <tr><td>您的订单号：</td><td>  <c:out value="${orderinfo.id}"/></td></tr>
   <tr><td>订单提交时间：</td><td> <c:out value="${orderinfo.submittime}"/></td></tr>
   <tr><td>需要交纳的费用为：</td><td> <c:out value="${orderinfo.totalprice}"/></td></tr>
   
   </TABLE>
   <br>
   
   您如果有什么疑问可以拨打电话：000－00000000;或者发送邮件至:mmx334421@sina.com。
     
   <br><a href="latestbook.do" >返回</a> <br>
  
    </CENTER>
  </body>
</html>
