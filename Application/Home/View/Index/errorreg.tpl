<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><{$sitename}></title>
<link rel="shortcut icon" href="favicon.ico">
<link href="<{$siteurl}>Public/Front/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="<{$siteurl}>Public/Front/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="<{$siteurl}>Public/Front/css/animate.css" rel="stylesheet">
<link href="<{$siteurl}>Public/Front/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
<div class="middle-box text-center animated fadeInDown">
  <h1>出错</h1>
  <h3 class="font-bold">注册失败！</h3>
  <div class="error-desc">  <{$errorstr}> </div>
    <div class="error-desc"> 
     <button type="button" class="btn btn-success btn-lg" style="font-family:'微软雅黑'; width:150px; font-size:20px" onclick="javascript:window.location.href='<{:U('reg')}>'"><span class="glyphicon glyphicon-hand-right"></span>&nbsp;&nbsp;重新注册</button>
  </div>
</div>
<!-- 全局js -->
<script src="<{$siteurl}>Public/Front/js/jquery.min.js?v=2.1.4"></script>
<script src="<{$siteurl}>Public/Front/js/bootstrap.min.js?v=3.3.6"></script>
 
<!--统计代码，可删除-->
</body>
</html>
