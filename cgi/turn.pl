#!/usr/bin/env perl
my ($buffer, @pairs, $pair, $name, $value, %FORM,$msg);
$buffer = $ENV{'QUERY_STRING'};
# ��ȡ name/value ����Ϣ
@pairs = split(/&/, $buffer);
foreach $pair (@pairs){
       ($name, $value) = split(/=/, $pair);
       $FORM{$name} = $value;
	if($value =~ "user_none" ){
		$msg="�û�������Ϊ��";
	}elsif($value =~ "user_error"){
		$msg="�û���ֻ������ĸ�����֡��»��ߡ����ַ����հ�";
	}elsif($value =~ "user_exist"){
		$msg="�û��Ѿ�����";
	}elsif($value =~ "password_none"){
		$msg="���벻��Ϊ��";
	}elsif($value =~ "password_short"){
		$msg="���벻�����ڰ�λ";
	}elsif($value =~ "mail_none"){
		$msg="���䲻��Ϊ��";
	}elsif($value =~ "mail_exist"){
		$msg="�����Ѿ�����";
	}elsif($value =~ "nologin"){
		$msg="���ȵ�¼,����<span id=mes>5</span>���Ӻ󷵻���ҳ!";
		$url="http://app.createclouds.cn";
	}elsif($value =~ "user_not_exist"){
		$msg="�û�������";
	}elsif($value =~ "user_not_alive"){
		$msg="�û�δ������¼ע��ʱ���伤��";
	}elsif($value =~ "user_lock"){
		$msg="�û�������������ϵ����Ա";
	}elsif($value =~ "password_wrong"){
		$msg="���벻��ȷ";
	}elsif($value =~ "upload_success"){
		$msg='�ϴ��ɹ�,���ͨ������ʼ�֪ͨ����ע����գ�ͬʱ������Ӧ�û��������ҳ<br><div align=center>���� <span id=mes>5</span> ���Ӻ���ת��������棡</div>';
		$url="http://app.createclouds.cn/cgi/manage.pl";
	}elsif($value =~ "appname_none"){
		$msg="Ӧ�����Ʋ���Ϊ��<br>";
	}elsif($value =~ "error"){
		$msg='ò���е����⣬���������<br>���� <span id=mes>5</span> ���Ӻ���ת����������!</div>';
		$url="http://app.createclouds.cn/cgi/feedback.pl";
	}elsif($value =~ "oper_success"){
		$msg='�����ɹ�,<br><div align=center>����<span id=mes>5</span>�����ת��Ӧ�ù������!</div>';
		$url="http://app.createclouds.cn/cgi/manage.pl";
	}elsif($value =~ "modify_success"){
		$msg='�����޸ĳɹ�,<br><div align=center>����<span id=mes>5</span>�����ת����ҳ!</div>';
		$url="http://app.createclouds.cn";
	}elsif($value =~ "modify_wrong"){
		$msg='ò���е����⣬���������<br>���� <span id=mes>5</span> ���Ӻ���ת����������!</div>';
		$url="http://app.createclouds.cn/cgi/feedback.pl";
	}elsif($value =~ "code_wrong"){
		print "��֤�����";
	}else{
		$msg='ϵͳ���������䷢����һ�⼤���ʼ����������ӽ��м���<br><div align=center>���� <span id=mes>5</span> ���Ӻ󷵻���ҳ��</div>';
		$url="http://app.createclouds.cn";
	}
}
print <<END;
Content-type:text/html\n\n
<html>
<script language="javascript" type="text/javascript"> 
var i = 5; 
var intervalid; 
intervalid = setInterval("fun()", 1000); 
function fun() { 
if (i == 0) { 
window.location.href = "$url"; 
clearInterval(intervalid); 
} 
document.getElementById("mes").innerHTML = i; 
i--; 
} 
</script>
<head>
	<title>��ʾҳ</title>
</head>
<body>
	<div align="center">
		<h2>$msg</h2>
		<br>
	</div>
</body>
</html>
END
