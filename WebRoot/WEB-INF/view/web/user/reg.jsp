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
    
    <title>My JSP 'usersManagement.jsp' starting page</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
     <link rel="stylesheet" type="text/css" href="styles/main.css">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
   <script src="/js/validator.js"></script>
  </head>
          
  <body>
  
    <!--验证完整性代码-->
    <script>
    function chk(){        
    
    if(document.regForm.loginname.value=='')
    {
        alert("请填写昵称！");
      	document.regForm.loginname.focus();
        return false;
    }
   
    
    if(document.regForm.password.value=='')
    {
        alert("请填写密码！");
      	document.regForm.password.focus();
        return false;
    
    }
    
     if(document.regForm.pwdconfirm.value=='')
    {
        alert("请填写再次输入密码！");
      	document.regForm.pwdconfirm.focus();
        return false;
    
    }
    
    if(document.regForm.password.value!=document.regForm.pwdconfirm.value)
    {
     alert("密码不一致，重新输入密码");
    document.regForm.password.value='';
    document.regForm.pwdconfirm.value='';
    document.regForm.password.focus();
    return false;
    }
   
   if(document.regForm.realname.value=='')
    {
        alert("请填写真实姓名！");
      	document.regForm.realname.focus();
        return false;
    
    }
    
     if(document.regForm.address.value=='')
    {
        alert("请填写联系地址！");
      	document.regForm.address.focus();
        return false;
    
    }
    
    
     if(document.regForm.phone.value=='')
    {
        alert("请填写联系电话！");
      	document.regForm.phone.focus();
        return false;
    
    }
    
     if(document.regForm.email.value=='')
    {
        alert("请填写email！");
      	document.regForm.email.focus();
        return false;
    
    }
    
   return true;
    } 
</script>  
  
    注册页面. <br>
    <FORM name="regForm"  method="post"  action="reg.do" onSubmit="return chk();">
    <TABLE>
    <TR><td><LABEL>昵称</LABEL></td><td> <INPUT name="loginname"></td></TR>
    <TR><td><LABEL>密码</LABEL></td><td> <INPUT type="password" name="password"></td></TR>
     <TR><td><LABEL>确认密码</LABEL></td><td> <INPUT type="password" name="pwdconfirm"></td></TR>
    <TR><td><LABEL>真名</LABEL></td><td> <INPUT name="realname"></td></TR>
    <TR><td><LABEL>联系地址</LABEL></td><td> <INPUT name="address"></td></TR>
    <TR><td><LABEL>联系电话</LABEL></td><td> <INPUT name="phone"></td></TR>
    <TR><td><LABEL>email地址</LABEL></td><td> <INPUT name="email"></td></TR>
   
    <TR><td><BUTTON type="submit">注册</BUTTON></td></TR>
    </TABLE>
   </FORM>
    
  </body>
</html>
