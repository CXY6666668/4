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
  
    <!--��֤�����Դ���-->
    <script>
    function chk(){        
    
    if(document.regForm.loginname.value=='')
    {
        alert("����д�ǳƣ�");
      	document.regForm.loginname.focus();
        return false;
    }
   
    
    if(document.regForm.password.value=='')
    {
        alert("����д���룡");
      	document.regForm.password.focus();
        return false;
    
    }
    
     if(document.regForm.pwdconfirm.value=='')
    {
        alert("����д�ٴ��������룡");
      	document.regForm.pwdconfirm.focus();
        return false;
    
    }
    
    if(document.regForm.password.value!=document.regForm.pwdconfirm.value)
    {
     alert("���벻һ�£�������������");
    document.regForm.password.value='';
    document.regForm.pwdconfirm.value='';
    document.regForm.password.focus();
    return false;
    }
   
   if(document.regForm.realname.value=='')
    {
        alert("����д��ʵ������");
      	document.regForm.realname.focus();
        return false;
    
    }
    
     if(document.regForm.address.value=='')
    {
        alert("����д��ϵ��ַ��");
      	document.regForm.address.focus();
        return false;
    
    }
    
    
     if(document.regForm.phone.value=='')
    {
        alert("����д��ϵ�绰��");
      	document.regForm.phone.focus();
        return false;
    
    }
    
     if(document.regForm.email.value=='')
    {
        alert("����дemail��");
      	document.regForm.email.focus();
        return false;
    
    }
    
   return true;
    } 
</script>  
  
    ע��ҳ��. <br>
    <FORM name="regForm"  method="post"  action="reg.do" onSubmit="return chk();">
    <TABLE>
    <TR><td><LABEL>�ǳ�</LABEL></td><td> <INPUT name="loginname"></td></TR>
    <TR><td><LABEL>����</LABEL></td><td> <INPUT type="password" name="password"></td></TR>
     <TR><td><LABEL>ȷ������</LABEL></td><td> <INPUT type="password" name="pwdconfirm"></td></TR>
    <TR><td><LABEL>����</LABEL></td><td> <INPUT name="realname"></td></TR>
    <TR><td><LABEL>��ϵ��ַ</LABEL></td><td> <INPUT name="address"></td></TR>
    <TR><td><LABEL>��ϵ�绰</LABEL></td><td> <INPUT name="phone"></td></TR>
    <TR><td><LABEL>email��ַ</LABEL></td><td> <INPUT name="email"></td></TR>
   
    <TR><td><BUTTON type="submit">ע��</BUTTON></td></TR>
    </TABLE>
   </FORM>
    
  </body>
</html>
