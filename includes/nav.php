<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="menu.css" />
<title>WebIMS</title>
</head>
<body>
<div class="drop">
<ul class="drop_menu">
<li><a href='welcome.php'>Home</a></li>
<li><a href='#'>Shelters</a>
	<ul>
            <li><a href='shelter_view.php'>Shelter Status</a></li>
            <li> <a href='shelter_add.php'>Shelter Update</a> </li>
            <li></li>
	<li></li>
	</ul>
</li>
<li><a href='#'>Messaging</a>
	<ul>
	<li><a href="#" onClick="window.open('../WebSM/sms/index.php','pagename','resizable,height=250,width=450');
    return false;">Send SMS Text</a>
    <noscript>You need Javascript to use the previous link or use
        <a href="/sms/index.php" target="_blank">Send SMS Text</a></noscript></li>

        <li><a href="#" onClick="window.open('../WebSM/email/read.php','pagename','resizable,height=450,width=1000');
    return false;">Read Messages</a>
    <noscript>You need Javascript to use the previous link or use
        <a href="WebSM/email/read.php" target="_blank">Read Messages<</a></noscript></li>

    <li><a href="#" onClick="window.open('../WebSM/email/send.php','pagename','resizable,height=350,width=450');
    return false;">Send Email</a>
    <noscript>You need Javascript to use the previous link or use
        <a href="WebSM/email/send.php" target="_blank">Send Email</a></noscript></li>
	</ul>
</li>
<li><a href='#'>Maps</a>
	<ul>
            <li><a href='evac.php'>Evacuation Routes</a></li>
            <li><a href='stormsurge.php'>Storm Surge</a></li>
            <li><a href='shelter_location.php'>Shelter Locations</a></li>
	</ul>
</li>


<li><a href="#" onClick="window.open('../WebSM/chat/chat.php','pagename','resizable,height=450,width=850');
    return false;">WebSM Chat</a>
    <noscript>You need Javascript to use the previous link or use 
        <a href="../WebSM/chat/chat.php" target="_blank">WebSM</a></noscript> </li>
<li><a href='#'>Files</a>
	<ul>
	<li><a href='document.php'>Documents Manager</a></li>
	<li></li>
	</ul>
</li>
<li><a href='#'>About</a>
	<ul>
            <li><a href='help.php'>Help</a></li> 
            <li></li>
            <li></li>
	</ul>
</li>
<li style="float:right"><a href="/WebSM/Admin/index.php" target="_blank">Admin</a></li>

</li>

        
</ul>
</div>
</body>
</html>

