<%@ include file="/WEB-INF/view/include/taglibs.jsp" %>
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="error.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>menu</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
 <link rel="stylesheet" type="text/css" href="styles/main.css">
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
��ǰ��½����Ա��<c:out value="${sessionScope.adminuser}"/><BR>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">ע��</a>

<br>
<BR>
<br>


<div id="masterdiv">

	<div class="menutitle" onclick="SwitchMenu('sub1')">ͼ�����</div>
	<span class="submenu" id="sub1">
		- <a href="categoryList.do" target="mainFrame">ͼ��������</a><br>
		- <a href="bookList.do" target="mainFrame">ͼ�����</a><br>
		- <a href="adminsearch.do" target="mainFrame">ͼ���ѯ</a><br>
		
  </span>

	<div class="menutitle" onclick="SwitchMenu('sub2')">�û�����</div>
  <span class="submenu" id="sub2">
		- <a href="userList.do" target="mainFrame">�û�ά��</a><br>
		- <a href="userSearch.do" target="mainFrame">�û���ѯ</a><br>
		
		</span>
	
	<div class="menutitle" onclick="SwitchMenu('sub3')">��������</div>
		<span class="submenu" id="sub3">
		- <a href="orderList.do" target="mainFrame">����ά��</a><br>
		- <a href="orderSearch.do" target="mainFrame">������ѯ</a><br>
  </span>
		
  <div class="menutitle" onclick="SwitchMenu('sub4')">ϵͳ����</div>
  <span class="submenu" id="sub4">
		- <a href="updateAdminPwd.do" target="mainFrame">�޸�����</a><br>
		- <a href="adminlogout.do" target="_parent">�˳�</a><br>
 </span>

	<br>
	
  </div>



</CENTER>


</body>
</html>
