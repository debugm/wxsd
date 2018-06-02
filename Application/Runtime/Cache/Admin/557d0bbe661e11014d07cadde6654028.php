<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<title><?php echo C("WEB_TITLE");?></title>
<link rel="shortcut icon" href="favicon.ico">
<link href="/Public/Front/css/bootstrap.min.css" rel="stylesheet">
<link href="/Public/Front/css/font-awesome.min.css" rel="stylesheet">
<link href="/Public/Front/css/style.css" rel="stylesheet">
<link href="/Public/css/jquery.alerts.css" rel="stylesheet">
  <link href="/Public/Front/js/plugins/layui/css/layui.css" rel="stylesheet">
<script type="text/javascript" src="/Public/js/jquery.js"></script>
<script type="text/javascript" src="/Public/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/Public/js/jquery.alerts.js"></script>
<script type="text/javascript" src="/Public/laydate/laydate.js"></script>
<script type="text/javascript" src="/Public/Admin/js/dealrecord.js"></script>
<script type="text/javascript" src="/Public/js/zy.js"></script>
  <style>
    .form-inline .form-group { margin-bottom: 5px;}
    .laydate-icon, .laydate-icon-default, .laydate-icon-danlan, .laydate-icon-dahong, .laydate-icon-molv {padding-right:0px;}
    .table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {padding:4px 2px;}
  </style>
</head>
 <body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
<div class="row">
  <div class="col-sm-12">
    <div class="ibox float-e-margins">
      <div class="ibox-title">
        <h5>微信个人码掉单管理</h5>
      </div>
      <div class="ibox-content">
  <form class="form-inline" role="form" action="" method="get" autocomplete="off" id="orderform">
    <div class="form-group">
      <input type="text" class="form-control zy-searchstr" id="memberid" name="wxname" placeholder="请输入微信号" value="<?php echo ($_GET['wxname>">
    </div>
        <div class="form-group">
      <input type="text"  id="cgdateks" name="cgdateks"  class="form-control laydate-icon zy-searchstr" style="height: 30px;" onclick="laydate({ele:this,min: laydate']); ?>" placeholder="成功起始日">
     <input type="text"  id="cgdatejs" name="cgdatejs"  class="form-control laydate-icon zy-searchstr" onclick="laydate({ele:this,min: laydate.now(-30), max: laydate.now(+1),istime: true,
     istoday: true,format: 'YYYY-MM-DD hh:mm:ss'})" style="height: 30px;" value="<?php echo ($_GET['cgdate_js']); ?>"  placeholder="成功截止日">
    </div>
    <div class="form-group">
      <button type="submit" class="layui-btn layui-btn-small" id="ptshsearch"> <span class="glyphicon glyphicon-search"></span> 搜索 </button>
    </div>
  </form>

    <div class="table-responsive">
  <table class="table table-bordered table-hover table-condensed table-responsive">
    <thead>
      <tr class="titlezhong">
      	<th>&nbsp;</th>
        <th>微信号</th>
        <th>支付金额</th>
        <th>支付时间</th>
      </tr>
    </thead>
    <tbody>
      <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
          <td style="text-align: center; vertical-align: middle;"><?php echo ($key+1); ?></td>
          <td style="text-align:center; color:#090;"><?php echo ($vo["wxname"]); ?>
          </td>
          <td style="text-align:center; color:#060"><?php echo ($vo["fee"]); ?></td>
          <td style="text-align:center;"><?php echo (date('Y-m-d H:i:s',$vo["paytime"])); ?></td>
        </tr><?php endforeach; endif; else: echo "" ;endif; ?>
      <tr>
        <td colspan="15" style="text-align:center;"><div class="pagex"> <?php echo ($_page); ?></div></td>
      </tr>
    </tbody>
  </table>
</div>
  </div></div>
</div>
</div>
</div>
<?php echo tongji(0);?>
</body>
</html>