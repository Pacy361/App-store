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
		//��ʼ����ȫ��Ӧ��
		request.onreadystatechange=state_Change;
                request.open("GET","http://app.createclouds.cn/cgi/app_search.pl?name=����");
                request.send();
}	
function state_Change()
{
if (request.readyState==4)
  {// 4 = "loaded"
  if (request.status==200)
    {// 200 = "OK"
	str=request.responseText; 
	var strs= new Array(); 
	strs=str.split(","); 
    	document.getElementById('app_h1').innerHTML=strs[0];
    	document.getElementById('ret').innerHTML=strs[1];
    	document.getElementById('xxx').innerHTML=strs[7];
	//�ָ�Ӧ���б�
	var str=strs[2];
	var arr= new Array();
	arr=str.split("#");
	for(i=0;i<arr.length;i++){
		document.getElementById('app').options.add( new Option(arr[i],arr[i]));
	}
    	document.getElementById('acc_h1').innerHTML=strs[3];
    	document.getElementById('user').innerHTML=strs[4];
	//�����û����������
    	document.getElementById('user_modify').innerHTML=strs[6];
	//�ָ��û��б�
	var str1=strs[5];
	var arr1= new Array();
	arr1=str1.split("#");
	for(i=0;i<arr1.length;i++){
		document.getElementById('user_list').options.add( new Option(arr1[i],arr1[i]));
	}
    }
  else
    {
    alert("Problem retrieving XML data:" + request.statusText);
    }
  }
}
