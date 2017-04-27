//检查用户名是否为空
function onblur_name(){
        var name = document.getElementById("name").value;
	if(name == ""){
       			document.getElementById("name_error").innerHTML="<font color=red size=3>&lowast;</font>";
        		return false;
        }else{
       		document.getElementById("name_error").innerHTML="<font color=green size=3>&radic;</font>";
			return true;
        }
}	
//检查邮箱是否为空
function onblur_mail(){
	var mail = document.getElementById("mail").value;
	if(mail == ""){
       		document.getElementById("mail_error").innerHTML="<font color=red size=3>&lowast;</font>";
                return false;
	}else{
       		document.getElementById("mail_error").innerHTML="<font color=green size=3>&radic;</font>";
			return true;
	}
}	
//检查验证码是否为空
function onblur_check_number(){
        var name = document.getElementById("name").value;
	var check_number = document.getElementById("check_number").value;
	if(check_number == ""){
       		document.getElementById("check_number_error").innerHTML="<font color=red size=3>&lowast;</font>";
                return false;
	}else{
		var url = "http://app.createclouds.cn/cgi/modify_mid.pl?user=" + name + "&code=" + check_number;
                request.onreadystatechange=state_Change;
                request.open("GET",url);
 		request.send();
       		document.getElementById("check_number_error").innerHTML="<font color=green size=3>&radic;</font>";
		return true;
	}
}	
//检查新密码是否为空
function onblur_new_password(){
	var new_password = document.getElementById("new_password").value;
	if(new_password == ""){
       		document.getElementById("new_password_error").innerHTML="<font color=red size=3>&lowast;</font>";
                return false;
	}else{
       		document.getElementById("new_password_error").innerHTML="<font color=green size=3>&radic;</font>";
			return true;
	}
}	
//检查确认密码是否为空
function onblur_confirm_new_password(){
	var confirm_new_password = document.getElementById("confirm_new_password").value;
	if(confirm_new_password == ""){
       		document.getElementById("confirm_new_password_error").innerHTML="<font color=red size=3>&lowast;</font>";
                return false;
	}else{
       		document.getElementById("confirm_new_password_error").innerHTML="<font color=green size=3>&radic;</font>";
			return true;
	}
}	
function code_same(){
	var new_password = document.getElementById("new_password").value;
	var confirm_new_password = document.getElementById("confirm_new_password").value;
	if(new_password != confirm_new_password){
       		document.getElementById("confirm_new_password_error").innerHTML="两次密码不一致";
		return false;
	}else{
		return true;
	}
}
function submitTest(){
	if(
	onblur_name() &&
	onblur_mail() &&
	onblur_check_number() &&
	onblur_new_password()&&
	onblur_confirm_new_password() &&
	code_same()
	){
		return true;
	}else{
		return false;
	}
}
//发送验证码
function getRequest() {
            var xmlHttp = null;
            try {// Chrome, Firefox, Opera, Safari
                xmlHttp = new XMLHttpRequest();
            } catch (e) {
                try {// Internet Explorer
                    xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
                } catch (e) {
                    try {// Internet Explorer
                        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                    } catch (e) {
                        alert("your browser not support ajax!"); }
                }
            }
            return xmlHttp;
}
var request = getRequest();
window.onload = function(){
                var code= document.getElementById("code");
                code.onclick = function(){
                        var name = document.getElementById("name").value;
                        var mail = document.getElementById("mail").value;
                        if(mail == ""){
       				document.getElementById("check_number_error").innerHTML="请输入邮箱地址";
                                return false;
                        }
                        var url = "http://app.createclouds.cn/cgi/mail.pl?user=" + name + "&address=" + mail;
                        document.getElementById("code").innerHTML="再次发送";
                        request.onreadystatechange=state_Change;
                        request.open("GET",url);
                        request.send();
                };
}
function state_Change()
{
if (request.readyState==4)
  {// 4 = "loaded"
  if (request.status==200)
    {// 200 = "OK"
        str=request.responseText;
	document.getElementById("check_number_error").innerHTML=str;
    }
  else
    {
    alert("Problem retrieving XML data:" + request.statusText);
    }
  }
}
