#!/usr/bin/perl
print "Content-type:text/html\n\n";
print <<EndOfHTML;
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="plugin/css/style.css">
    <link rel="stylesheet" type="text/css" href="css/demo.css">
    <script type="text/javascript" src="script/jquery-1.6.1.min.js"></script>
    <script type="text/javascript" src="plugin/jquery-jplayer/jquery.jplayer.js"></script>
    <script type="text/javascript" src="plugin/ttw-music-player-min.js"></script>
    <script type="text/javascript" src="script/myplaylist.js" charset="utf-8"></script>

    <script type="text/javascript">
        \$(document).ready(function(){
                \$('#music').ttwMusicPlayer(myPlaylist, {
                autoPlay:true, 
                jPlayer:{
                    swfPath:'plugin/jquery-jplayer'
                }
            });
        });
    </script>
</head>
<div id="music" name="music">
</div>
</html>
EndOfHTML
