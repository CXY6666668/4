
<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员登陆</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    
    
    
    
    <style type="text/css">
<!--
.样式1 {
	font-size: 16pt;
	font-family: "楷体_GB2312";
	font-weight: bold;
}
.样式2 {
	font-family: "黑体";
	font-size: 24pt;
	color: #0066CC;
}
-->
    </style>
  </head>
  
  <body>
    <table align="center">
	<tr><td><span class="样式2">在线网上书店系统</span></td>
	</tr>
	</table>
	
	
    <form name="adminloginForm" method="post" action="adminlogin.do">
    <table align="center" >
	   <tr align="center"><td align="center"><span class="样式1">管理员登陆入口</span></td>
	   </tr>
	  <tr align="center"><td align="center">用户：<input type="text" name="adminuser"></td></tr>
	  <tr align="center"><td align="center">密码：<input type="text" name="adminpass"></td></tr>
	  <tr align="center"><td align="center"><input type="submit" name="Submit" value="确定">
      <input type="reset" name="Submit2" value="重置">
      </td></tr>
	  
	  
        </table>
  </form>
  </body>
</html>
