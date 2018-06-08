
<?php

$str = "{a}";

json_decode($str,true);
if(json_last_error() == JSON_ERROR_NONE)
echo "fff";
else
echo "ggg";

?>
