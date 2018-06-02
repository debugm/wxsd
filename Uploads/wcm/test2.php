<?php



$dbhost = 'localhost';
$dbuser  = 'root';
$dbpwd   = 'weiwei9527';
$dbname  = 'payment1';

$conn = mysql_connect($dbhost,$dbuser,$dbpwd);
if (!$conn) {
        die('Could not connect: ' . mysql_error());
}
mysql_select_db($dbname,$conn);
mysql_query("SET NAMES UTF8");
$a = getcwd();

$a = explode('/',$a);

$wn = $a[count($a) - 1];

$handler = opendir('./');
$res = array();




while( ($filename = readdir($handler)) !== false ) 
{
 //略过linux目录的名字为'.'和‘..'的文件
 if($filename != "." && $filename != ".." && $filename != "test1.php" && $filename != "test2.php" &&  $filename != 'default.jpg')
 {  
  //输出文件名

    $fn = explode(".",$filename);
    $fee = $fn[0].".00";
    if(count($fn) == 2)
    {
	rename($filename,$fee.".jpg");
    }
  }

}

?>
