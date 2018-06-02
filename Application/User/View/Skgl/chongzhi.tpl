<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<link rel="shortcut icon" href="favicon.ico">
<link href="<{$siteurl}>Public/Front/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="<{$siteurl}>Public/Front/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="<{$siteurl}>Public/Front/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="<{$siteurl}>Public/Front/css/animate.css" rel="stylesheet">
<link href="<{$siteurl}>Public/Front/css/style.css?v=4.1.0" rel="stylesheet">
<link href="<{$siteurl}>Public/css/jquery.alerts.css" rel="stylesheet"/>

<link href="<{$siteurl}>Public/css/jquery.alerts.css" type="text/css"/>
</head>

<body class="gray-bg">
<div class="wrapper wrapper-content">
  <div class="row animated fadeInRight">
    <div class="col-sm-12">
      <div class="ibox">
 
 <form id="Formczcz" name="Form1" class="form-horizontal m-t" method="post" action=<{:U("Skgl/ddcz")}> target="_blank">
<div id="chongzhicontent">
   <div class="form-group chongzhimoneycomtent">
    <input type="hidden" id="ajaxurl" value="<{:U("Skgl/loadbank")}>">
    <input type="hidden" id="checkpaypassword" value="<{:U("Skgl/checkpaypassword")}>">
    <input type="hidden" id="loadmoney" value="<{:U("Skgl/loadmoney")}>">
    <input type="hidden" name="userid" value="{$userid}">
    <label class="col-sm-4 control-label">请输入您要充值的金额：</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="Money" name="Money" placeholder="充值金额">
    </div>
    <label class="col-sm-5 control-label"></label>
  </div>
   <ul class="list-inline tongdaolist">
    <!-- <volist name="apilist" id="vo">
        <li><input type="radio" name="tongdaoname" value="<{$vo.id}>"><span><{$vo.zh_payname}></span> </volist></li>
	-->	
<label class="col-sm-4 control-label"><input type="radio" name="tongdaoname" value="zfb"><span>多得宝充值</span></label>
  </ul>
  <div class="banklist"></div>
  <div  style="clear:both;"></div>
<!--
  <div class="form-group chongzhimoneycomtent czmmbutton">
    <label class="col-sm-4 control-label">请输入支付密码：</label>
    <div class="col-sm-5">
      <input type="password" class="form-control" id="paypassword" name="paypassword" style="color:#06C;">
    </div>
  </div>-->
  <div style="clear:left;"></div>
  <div id="chongzhibutton" class="czmmbutton"><input type="submit" class="btn btn-primary btn-lg btn-block" data-loading-text="正在处理中..." ></div><br/>
</div>
</form>
<!--该层为覆盖层 -->
<div id="overlay"></div>
<!--该层为高亮显示层 -->
<!--
<div id="lightbox">
   <div style="color:#F90; font-size:30px; margin-top:100px; width:100%; text-align:center;">请您在新打开的页面完成支付！</div>
   <div style="color:#F00; font-size:25px; margin-top:50px; width:100%; text-align:center;">交易金额：<span id="jyje"></span>元</div>
   <div style="margin:0px auto; width:150px; height:50px; margin-top:50px;"><button type="button" class="btn btn-primary btn-lg btn-danger" onclick="javascript:guanbi();">关 闭</button></div>-->
</div>
</div>
</div>
</div>
</div>
<!-- 全局js -->
<script src="<{$siteurl}>Public/Front/js/jquery.min.js?v=2.1.4"></script>
<script src="<{$siteurl}>Public/Front/js/bootstrap.min.js?v=3.3.6"></script>
<script src="<{$siteurl}>Public/User/js/skgl.js" /></script>
<script src="<{$siteurl}>Public/js/jquery.alerts.js" /></script>
<{:tongji(0)}>
</body>
</html>
