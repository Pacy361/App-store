//����û����Ƿ�Ϊ��
function onblur_name(){
        var name = document.getElementById("name").value;
	if(name == ""){
       			document.getElementById("error").innerHTML="�û�������Ϊ��";
        		return false;
        }else{
			return true;
        }
}	
//��������Ƿ�Ϊ��
function onblur_mail(){
	var mail = document.getElementById("mail").value;
	if(mail == ""){
       		document.getElementById("error").innerHTML="���䲻��Ϊ��";
                return false;
	}else{
			return true;
	}
}	
//�����֤���Ƿ�Ϊ��
function onblur_check_number(){
        var name = document.getElementById("name").value;
	var check_number = document.getElementById("check_number").value;
	if(check_number == ""){
       		document.getElementById("error").innerHTML="��֤�벻��Ϊ��";
                return false;
	}else{
		var url = "http://app.createclouds.cn/cgi/modify_mid.pl?user=" + name + "&code=" + check_number;
                request.onreadystatechange=state_Change;
                request.open("GET",url);
 		request.send();
		return true;
	}
}	
//����������Ƿ�Ϊ��
function onblur_new_password(){
	var new_password = document.getElementById("new_password").value;
	if(new_password == ""){
       		document.getElementById("error").innerHTML="�����벻��Ϊ��";
                return false;
	}else{
			return true;
	}
}	
//���ȷ�������Ƿ�Ϊ��
function onblur_confirm_new_password(){
	var confirm_new_password = document.getElementById("confirm_new_password").value;
	if(onfirm_new_password == ""){
       		document.getElementById("error").innerHTML="��ȷ��������";
                return false;
	}else{
			return true;
	}
}	
function code_same(){
	var new_password = document.getElementById("new_password").value;
	var confirm_new_password = document.getElementById("confirm_new_password").value;
	if(new_password != confirm_new_password){
       		document.getElementById("error").innerHTML="�������벻һ��";
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
//������֤��
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
                        alert("�������֧��ajax!"); }
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
       				document.getElementById("error").innerHTML="�����������ַ";
                                return false;
                        }
                        var url = "http://app.createclouds.cn/cgi/mail.pl?user=" + name + "&address=" + mail;
                        document.getElementById("code").innerHTML="�ٴη���";
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
	document.getElementById("error").innerHTML=str;
    }
  else
    {
    alert("Problem retrieving XML data:" + request.statusText);
    }
  }
}
