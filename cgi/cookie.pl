#!/usr/bin/perl
$username="Tim";
$usergroup="admin";
print "Set-Cookie:UserID=$username;\n";
print "Set-Cookie:UserGroup=$usergroup;\n";
print "Set-Cookie:Path=/;\n";
print "Content-type:text/html\n\n";
print "Set cookie finished";
