<?php
include_once(dirname(__FILE__)."/getla.php");
include_once(dirname(__FILE__)."/login.php");
include_once(dirname(__FILE__)."/Sf.php");

function handle()
{
    $dbhost = 'localhost';
    $dbuser  = 'root';
    $dbpwd   = 'weiwei9527';
    $dbname  = 'payment2';

    $conn = mysql_connect($dbhost,$dbuser,$dbpwd);
    if (!$conn) {
            die('Could not connect: ' . mysql_error());
    }
    mysql_select_db($dbname,$conn);
    mysql_query("SET NAMES UTF8");




    $sql = "select * from pay_userbankaccount where enable=1 and bankcode='lakala'";
    $acclist = mysql_query($sql);
    while($acc = mysql_fetch_assoc($acclist))
    {
        $account = $acc['accountid'];
        $pwd = $acc['skid'];

        $result = getLaOrders();
	echo $result;
	$ret = json_decode($result,true);
        //cookie过期,重新登录
        if(json_last_error() != JSON_ERROR_NONE)
        {
            $res = login($account,$pwd);
            file_put_contents(dirname(__FILE__)."/lakalarec/login.log.txt".date('Ymd'),date('Y-m-d H:i:s')."-----------autochecklogin------------".PHP_EOL,FILE_APPEND);
            //$result = getLaOrders();
	    continue;
        }
    }
}

handle();
?>
