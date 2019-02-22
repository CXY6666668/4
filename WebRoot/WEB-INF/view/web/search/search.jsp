
<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'search.jsp' starting page</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    
    
    <link rel="stylesheet" type="text/css" href="styles/main.css">
   
  </head>
  
  <body id="homeBody">
<br>
<center>
 <FORM name="searchBookForm"  method="post"  action="searchResult.do" >
<table>
  <tr>
	<td colspan="2">
	  
	</td>
  </tr>
  <tr>
    <td width="450" align="center">
	  <noscript class="red">
	  	<li>请<strong>允许浏览器运行活动内容</strong>以正常使用本站功能！谢谢！</li>
	  </noscript>
	  <br>
	  <br>
	<table width="360" cellpadding="5" cellspacing="5" bgcolor="#fef9f3" class="normal_l">
	  <tr>
		  <td width="20%" align="center" valign="middle">
			  书&nbsp;&nbsp;名</td>
		  <td width="80%" align="left">
			  <input id="name" name="name" type="text" value="" size="30"/>
		  </td>
	  </tr>
	  <tr>
		<td width="20%" align="center" valign="middle">
		作&nbsp;&nbsp;者</td>
		  <td width="80%" align="left">
			  <input id="author" name="author" type="text" value="" size="30"/>
		</td>
	  </tr>
	  <tr>
		<td width="20%" align="center" valign="middle">
		出版社</td>
		  <td width="80%" align="left">
			  <input id="press" name="press" type="text" value="" size="30"/>
		</td>
	  </tr>
	  <tr align="center">
		<td width="30%" align="center">
			 
		</td>
		  <td width="70%" align="left">
			  <input name="query" type="submit" value="搜索" class="normal_c" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="reset" type="reset" value="清除" class="normal_c">&nbsp;&nbsp;&nbsp;&nbsp;
		</td>
	  </tr>
	  <tr>
	    <td colspan="2" align="right">
		  <a href="../query/queryHelp.htm">搜索帮助</a>
		</td>
	  </tr>
	</table>
  </td>
  
  </tr>
</table>
</FORM>
</center>
</body>

</html>
