<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户管理</title>
<link rel="stylesheet" type="text/css" href="/Public/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/Public/Admin/css/css.css" />
<link rel="stylesheet" type="text/css" href="/Public/css/jquery.alerts.css" />

<script type="text/javascript" src="/Public/js/jquery.js"></script>
<script type="text/javascript" src="/Public/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/Public/js/jquery.alerts.js"></script>
<script type="text/javascript" src="/Public/Admin/js/usercontrol.js"></script>

</head>

<body>
<ol class="breadcrumb">
  <li class="active">管理后台</li>
  <li class="active">用户管理</li>
  <li class="active">用户资金管理</li>
</ol>

<div id="SystemContent">
<form role="form" id="form1" method="post" action="<?php echo U("System/jbszedit");?>">

  <div class="form-group">
    <label style="color:#333">用户名：<span style="color:#069"><?php echo ($username); ?></span></label>
  </div>
  <hr />
  <div class="form-group">
    <label style="color:#666;">账户总余额：<span style="color:#F00"><?php echo ($moneyfind["money"]); ?></span>元</label>
  </div>
   <div class="form-group">
    <label style="color:#666;">冻结总金额：<span style="color:#060;"><?php echo ($moneyfind["freezemoney"]); ?></span>元</label>
  </div>
    <hr />
    
    <?php if(is_array($apimoneylist)): $i = 0; $__LIST__ = $apimoneylist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="form-group">
    <label>【<span style="color:#00C;"><?php echo ($vo["zh_payname"]); ?></span>】&nbsp;&nbsp;&nbsp;&nbsp;<span>账户余额</span>：<span style="color:#F00;"><?php echo ($vo["money"]); ?></span>元&nbsp;&nbsp;&nbsp;&nbsp;<span>冻结金额</span>：<span style="color:#060;"><?php echo ($vo["freezemoney"]); ?></span>元&nbsp;&nbsp;&nbsp;&nbsp;[<a href="javascript:editmoney('<?php echo ($username); ?>','<?php echo ($_GET['userid']); ?>','<?php echo ($vo["id"]); ?>','zjj')" style="color:#C30">增减金额</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:editmoney('<?php echo ($username); ?>','<?php echo ($_GET['userid']); ?>','<?php echo ($vo["id"]); ?>','djje')" style="color:#F90">冻结金额</a>]</label>
  </div><?php endforeach; endif; else: echo "" ;endif; ?>
<hr>
  <button type="button" class="btn btn-primary btn-sm" onclick="javascript:window.location.href='<?php echo U("User/usercontrol");?>'">返 回</button>
</form>
</div>

<!---------------------------------------------------------------------------------------------------------------->
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-describedby="tscontent" data-backdrop="static">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close modalgb" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title">
        	<span class="glyphicon glyphicon-user glyphicon"></span> <span id="usernamemodal"></span>
        </h4>
      </div>
      <div class="modal-body" id="tscontent" style="color:#000; font-family:'微软雅黑';">
  <!--------------------------------------------------------------------------------------------------->


<!-- Tab panes -->
<div class="tab-content">
  <div  id="zjj">
     <form role="form" id="zjjform" loadurl="<?php echo U("User/loadmoney");?>" action="<?php echo U("User/zjjedit");?>">
  <div class="form-group">
    <label>通道名称：<span style="color:#039;" id="zjjtongdaoname"></span></label>
    <input type="hidden" id="zjjuserid">
    <input  type="hidden" id="zjjtongdaoid">
  </div>
  <div class="form-group">
    <label>账户余额：<span style="color:#F00;" id="zjjtmoney"></span>元</label>
  </div>
  <div class="form-group">
    <input type="radio" value="3" name="cztype" class="radioclass">&nbsp;<span style="cursor:pointer; font-size:15px; color:#039; font-weight:bold;" class="radiospan">增加金额</span>&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="radio" value="4" name="cztype" class="radioclass">&nbsp;<span style="cursor:pointer; font-size:15px; color:#039; font-weight:bold;" class="radiospan">减少金额</span>
  </div>
    <div class="form-group">
    <label class="control-label">变更金额：</label>
 
      <input type="text" class="form-control" id="bgmoney" placeholder="变更金额" onkeyup="clearNoNum(this)" style="font-weight:bold; color:#030;">

  </div>
   <div class="form-group">
    <label class="control-label">备注：</label>
 
      <textarea class="form-control" rows="3" name="contentstr" id="contentstr"></textarea>

  </div>
  <div style="clear:left;"></div>
  <div class="form-group" style="text-align:center; margin-top:10px;">
  <button type="button" class="btn btn-primary" id="zjjbutton">增加金额</button>
  </div>
</form>
  </div>
  <div  id="djje">
  	 <!-----------------------------------冻结金额--------------------------------------------------->
     <form role="form" id="djjeform" loadurl="<?php echo U("User/loadmoney");?>" action="<?php echo U("User/djjeedit");?>">
  <div class="form-group">
    <label>通道名称：<span style="color:#039;" id="djjetongdaoname"></span></label>
    <input type="hidden" id="djjeuserid">
    <input  type="hidden" id="djjetongdaoid">
  </div>
  <div class="form-group">
    <label>账户余额：<span style="color:#F00;" id="djjemoney"></span>元</label>
  </div>
   <div class="form-group">
    <label>冻结余额：<span style="color:#F00;" id="djjeymoney"></span>元</label>
  </div>
  <div class="form-group">
    <input type="radio" value="7" name="djtype" class="radioclassdj" checked="checked">&nbsp;<span style="cursor:pointer; font-size:15px; color:#039; font-weight:bold;" class="radiospandj">冻结金额</span>&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="radio" value="8" name="djtype" class="radioclassdj">&nbsp;<span style="cursor:pointer; font-size:15px; color:#039; font-weight:bold;" class="radiospandj">解冻金额</span>
  </div>
    <div class="form-group">
    <label class="control-label">变更金额：</label>
 
      <input type="text" class="form-control" id="djbgmoney" placeholder="变更金额" onkeyup="clearNoNum(this)" style="font-weight:bold; color:#030;">

  </div>
   <div class="form-group">
    <label class="control-label">备注：</label>
 
      <textarea class="form-control" rows="3" name="djcontentstr" id="djcontentstr"></textarea>

  </div>
  <div style="clear:left;"></div>
  <div class="form-group" style="text-align:center; margin-top:10px;">
  <button type="button" class="btn btn-primary" id="djjebutton">冻结金额</button>
  </div>
</form>
  </div>

</div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default modalgb" data-dismiss="modal">关闭</button>
      </div>
    </div>
  </div>
</div>
<?php echo tongji(0);?>
</body>
</html>