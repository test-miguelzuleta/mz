<?php
/*
             ---     Created By Adam @ www.developphp.com      ---
       ---     For help or script expansion join our forums there      ---
            ---    Use this code as your own any way you like      ---
*/
// Create local PHP variables from the info the user gave in the Flash form
$senderName   = $_POST['userName'];
$senderEmail     = $_POST['userEmail'];
$senderMessage = $_POST['userMsg'];
$senderPhone = $_POST['userPhone'];
$senderCompany = $_POST['userCompany'];

// Strip slashes on the Local variables
$senderName   = stripslashes($senderName);
$senderEmail     = stripslashes($senderEmail);
$senderMessage   = stripslashes($senderMessage); 
$senderPhone   = stripslashes($senderPhone);
$senderCompany   = stripslashes($senderCompany); 


//!!!!!!!!!!!!!!!!!!!!!!!!!     change this to your email     !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                          $to = "miguelzuletasorzano@gmail.com";
     // Place sender Email address here
    $from = "[MZ]";
    $subject = "$senderEmail";
    //Begin HTML Email Message
    $message = <<<EOF
<html>
  <body bgcolor="#FFFFFF">
<b>Name</b> = $senderName<br /><br />
<b>Email</b> = $senderEmail<br /><br />
<b>Phone</b> = $senderPhone<br /><br />
<b>Company</b> = $senderCompany<br /><br />
<b>Message</b> = $senderMessage<br />

  </body>
</html>
EOF;
   //end of message
    $headers  = "From: $from\r\n";
    $headers .= "Content-type: text/html\r\n";
    $to = "$to";

    mail($to, $subject, $message, $headers);
	
exit();
?>