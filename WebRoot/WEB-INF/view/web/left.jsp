<%@ include file="/WEB-INF/view/include/taglibs.jsp" %>
<%@ page language="java" contentType="text/html; charset=gb2312" import="javax.servlet.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    
   
    <link rel="stylesheet" type="text/css" href="styles/main.css">
   
	<link href="styles/common.css" rel="stylesheet" type="text/css">

<style type="text/css">
.menutitle{
cursor:pointer;
margin-bottom: 5px;
background-color:#ECECFF;
color:#000000;
width:140px;
padding:2px;
text-align:center;
font-weight:bold;
/*/*/border:1px solid #000000;/* */
}

.submenu{
margin-bottom: 0.5em;
}
   </style>
      
   <script type="text/javascript">

/***********************************************
* Switch Menu script- by Martial B of http://getElementById.com/
* Modified by Dynamic Drive for format & NS4/IE4 compatibility
* Visit http://www.dynamicdrive.com/ for full source code
***********************************************/

if (document.getElementById){ //DynamicDrive.com change
document.write('<style type="text/css">\n')
document.write('.submenu{display: none;}\n')
document.write('</style>\n')
}

function SwitchMenu(obj){
	if(document.getElementById){
	var el = document.getElementById(obj);
	var ar = document.getElementById("masterdiv").getElementsByTagName("span"); //DynamicDrive.com change
		if(el.style.display != "block"){ //DynamicDrive.com change
			for (var i=0; i<ar.length; i++){
				if (ar[i].className=="submenu") //DynamicDrive.com change
				ar[i].style.display = "none";
			}
			el.style.display = "block";
		}else{
			el.style.display = "none";
		}
	}
}

   </script>

  </head>
  
  <body>

<CENTER>
<table class="login">
  <tr align="center">
	<td align="center">
	  <br>
	  <img name="logInTitle" src="images/login_title_y.png" width="135" height="20" alt="登录标题" ></td>
    <td rowspan="16" width="0.5" background="images/left_line_y.png" align="center"></td>
  </tr>
  <tr align="center">
    <td align="center">
	<fieldset>
		<table width="160" cellpadding="2" cellspacing="2">
		  <tr align="center">
			<td align="center">
		  <c:out value="${sessionScope.realname}"/> ，欢迎来到在线书店！</td>
		  
		   </tr>
	    <tr>
		  <td align="right">
		    <a href="logout.do">退出</a>&nbsp;&nbsp;
		  </td>
	    </tr>  
	  </table>
	  </fieldset>
	</td>
  </tr>
  <tr>
    <td height="10">&nbsp;	  
	</td>
  </tr >
   <tr class="normal_l" align="center">
    <td height="10" align="center">
	  <a href="showCart.do" target="mainFrame">查看购物车</a>
	</td>
  </tr>  
    
  </table>
 
 
	  <img height="1" width="127" src="images/left_line_x.png">

 <div id="masterdiv">
	 <div onclick="SwitchMenu('sub1')"><img src="images/left_main_menu1.png" width="135" height="22" border="0"></div>
	 <span class="submenu" id="sub1">
		- <a href="myOrder.do" target="mainFrame">我的订单</a><br>
		- <a href="modifyDepartment.jsp" target="mainFrame">购书历史查询</a><br>
		
     </span>
	 
	 
	 
	
	  <img height="1" width="127" src="images/left_line_x.png">
	
	  <div onclick="SwitchMenu('sub2')"><img src="images/left_main_menu2.png" width="135" height="22" border="0"></div>
     <span class="submenu" id="sub2">
		- <a href="addUser.jsp" target="mainFrame">修改注册信息</a><br>
		- <a href="UserSearch.htm" target="mainFrame">修改密码</a><br>
	  </span>
	  
</div>
	  
 

</CENTER>
</body>

</html>

  