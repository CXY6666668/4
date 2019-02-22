function Trim(str){
 if(str.charAt(0) == " "){
  str = str.slice(1);
  str = Trim(str);
 }
 return str;
}


function isEmpty(pObj,errMsg){
 var obj = eval(pObj);
 if( obj == null || Trim(obj.value) == ""){
  if (errMsg == null || errMsg =="")
   alert("输入为空!");
  else
   alert(errMsg); 
  obj.focus(); 
  return false;
 }
 return true;
}


function maxLength(pObj,len,errMsg){
	var obj = eval(pObj);
	
	if( obj == null || lenCh(obj.value) > len){
		alert(errMsg);
		obj.focus();
		return false;
	}
	return true;
}

function maxLengthUnFocus(pObj,len,errMsg){
	var obj = eval(pObj);
	
	if( obj == null || lenCh(obj.value) > len){
		alert(errMsg);
		return false;
	}
	return true;
}

function minLength(pObj,len,errMsg){
	var obj = eval(pObj);
	if( obj == null || lenCh(obj.value) < len){
		alert(errMsg);
		obj.focus();
		return false;
	}
	return true;
}


function lenCh(str){
    //alert(str.replace([^\x00-\xff]/g,"aaa").length);
    return str.replace(/[^\x00-\xff]/g,"aaa").length;
    //return str.length;
}

function isNumber(pObj,errMsg){
 var obj = eval(pObj);
 strRef = "1234567890.";
 if(!isEmpty(pObj,errMsg))return false;
 for (i=0;i<obj.value.length;i++) {
  tempChar= obj.value.substring(i,i+1);
  if (strRef.indexOf(tempChar,0)==-1) {
   if (errMsg == null || errMsg =="")
    alert("数据不符合要求,请检查");
   else
    alert(errMsg);
   if(obj.type=="text") 
    obj.focus(); 
   return false; 
  }
 }
 return true;
}

function isNegative(pObj,errMsg){
 var obj = eval(pObj);
 strRef = "1234567890-";
 if(!isEmpty(pObj,errMsg))return false;
 for (i=0;i<obj.value.length;i++) {
  tempChar= obj.value.substring(i,i+1);
  if (strRef.indexOf(tempChar,0)==-1) {
   if (errMsg == null || errMsg =="")
    alert("数据不符合要求,请检查");
   else
    alert(errMsg);
   if(obj.type=="text") 
    obj.focus(); 
   return false; 
  }else{
   if(i>0){
    if(obj.value.substring(i,i+1)=="-"){
     if (errMsg == null || errMsg =="")
      alert("数据不符合要求,请检查");
     else
      alert(errMsg);   
     if(obj.type=="text") 
     obj.focus(); 
     return false; 
    }
   }
  }
 }
 return true;
}


function isMoney(pObj,errMsg){
 var obj = eval(pObj);
 strRef = "1234567890.";
 if(!isEmpty(pObj,errMsg)) return false;
 for (i=0;i<obj.value.length;i++) {
  tempChar= obj.value.substring(i,i+1);
  if (strRef.indexOf(tempChar,0)==-1) {
   if (errMsg == null || errMsg =="")
    alert("数据不符合要求,请检查");
   else
    alert(errMsg);   
   if(obj.type=="text") 
    obj.focus(); 
   return false; 
  }else{
   tempLen=obj.value.indexOf(".");
   if(tempLen!=-1){
    strLen=obj.value.substring(tempLen+1,obj.value.length);
    if(strLen.length>2){
     if (errMsg == null || errMsg =="")
      alert("数据不符合要求,请检查");
     else
      alert(errMsg);   
     if(obj.type=="text") 
     obj.focus(); 
     return false; 
    }
   }
  }
 }
 return true;
}

function isLeapYear(year)
{
 if((year%4==0&&year%100!=0)||(year%400==0))
 {
 return true;
 } 
 return false;
}


function isDate(checktext){
return true;
}
