<?php
function sendSMS($recipient, $msg) {
  $msgLen = strlen($msg);
  $result = "";
  $output = '';
  $command = "/home/ubuntu/gammu/bin/gammu-smsd-inject TEXT $recipient -len $msgLen -text '$msg'";

  $result .= "executing command: $command \n";

  passthru($command, $output);

  $result .= ' (out) ' . $output." \n";

  return "SmsSender >> sendSMS(): $result \n";
}

 ?>
