
<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>����Ա��½</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    
    
    
    
    <style type="text/css">
<!--
.��ʽ1 {
	font-size: 16pt;
	font-family: "����_GB2312";
	font-weight: bold;
}
.��ʽ2 {
	font-family: "����";
	font-size: 24pt;
	color: #0066CC;
}
-->
    </style>
  </head>
  
  <body>
    <table align="center">
	<tr><td><span class="��ʽ2">�����������ϵͳ</span></td>
	</tr>
	</table>
	
	
    <form name="adminloginForm" method="post" action="adminlogin.do">
    <table align="center" >
	   <tr align="center"><td align="center"><span class="��ʽ1">����Ա��½���</span></td>
	   </tr>
	  <tr align="center"><td align="center">�û���<input type="text" name="adminuser"></td></tr>
	  <tr align="center"><td align="center">���룺<input type="text" name="adminpass"></td></tr>
	  <tr align="center"><td align="center"><input type="submit" name="Submit" value="ȷ��">
      <input type="reset" name="Submit2" value="����">
      </td></tr>
	  
	  
        </table>
  </form>
  </body>
</html>
