#!/usr/bin/env perl
use strict;
require public;
my ($buffer, @pairs, $pair, $name, $value, %FORM,$msg,$sql);
$buffer = $ENV{'QUERY_STRING'};
# ��ȡ name/value ����Ϣ
@pairs = split(/&/, $buffer);
foreach $pair (@pairs){
       ($name, $value) = split(/=/, $pair);
       $FORM{$name} = $value;
$sql=<<END;
update account set active = 'T' where name = '$value';
END
	public->exec_sql($sql);
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
window.location.href = "http://app.createclouds.cn/index.pl"; 
clearInterval(intervalid); 
} 
document.getElementById("mes").innerHTML = i; 
i--; 
} 
</script>
<head>
<title>����ҳ</title>
</head>
<body>
<div align="center">
<h2>����ɹ������ڷ�����ҳ... <span id=mes>5</span></2>
</div>
</body>
</html>
END
