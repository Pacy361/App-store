#!/usr/bin/env perl
$code = `date +%s`;
$ret = substr(reverse($code),1,4);
print $ret;
