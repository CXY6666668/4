<%@ include file="/WEB-INF/view/include/taglibs.jsp" %>
<%@ page language="java" contentType="text/html;charset=gb2312" import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>left</title>
<link href="styles/common.css" rel="stylesheet" type="text/css">
<link href="styles/main.css" rel="stylesheet" type="text/css">
</head>

<body>
  <script>
    function chk(){     
    
    if(document.loginForm.loginname.value=='')
    {
        alert("请填写登陆名！");
      	document.loginForm.loginname.focus();
        return false;
    }  
    
    if(document.loginForm.password.value=='')
    {
        alert("请填写密码！");
      	document.loginForm.password.focus();
        return false;
    
    }
    return true;
    } 
</script>  
<div align="left">
<table class="login">
  <tr>
	<td height="24">
		<br>
		<img name="logInTitle" src="images/login_title_n.png" width="135" height="20" alt="登录标题"></td>
    <td rowspan="4" width="0.5" background="images/left_line_y.png" align="center"></td>
  </tr>
  <tr>
    <td>
	<fieldset>
		
		 <FORM name="loginForm"  method="post"  action="login.do" onSubmit="return chk();">
		<table width="160" align="center" cellpadding="2" cellspacing="2">
		  <tr>
			<td width="60">
			  用户名:
			</td>
			<td width="100" align="left">
			  <input name="loginname" type="text" size="16">
			</td>			
		  </tr>
		  <tr>
			<td width="60">
			  密&nbsp;码:
			</td>
			<td width="100" align="left">
			  <input name="password" type="password" size="16">
			</td>			
		  </tr>
		  <tr>
			<td width="60">
			  <input name="login" type="submit" value="登录" class="normal_c">
			</td>
		  	<td width="100">
		      <input name="register" type="button" value="新用户注册" class="normal_c" onClick="parent.mainFrame.location.href='reg.do'">
		   
			</td>
		  </tr>		  
	  </table>
	  </form>
	  </fieldset>
	</td>
  </tr>
  <tr>
    <td height="10">&nbsp;	  
	</td>
  </tr>
</table>
</div>
</body>

  
</html>
