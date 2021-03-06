<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<title><{:C("WEB_TITLE")}></title>
<link rel="shortcut icon" href="favicon.ico">
<link href="/Public/Front/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/Public/Front/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
<link href="/Public/Front/css/animate.css" rel="stylesheet">
<link href="/Public/Front/css/style.css?v=4.1.0" rel="stylesheet">
<link href="/Public/css/jquery.alerts.css" rel="stylesheet">
  <link href="/Public/Front/js/plugins/layui/css/layui.css" rel="stylesheet">
<script type="text/javascript" src="/Public/js/jquery.js" /></script>
<script type="text/javascript" src="/Public/js/bootstrap.min.js" /></script>
<script type="text/javascript" src="/Public/js/jquery.alerts.js" /></script>
<script type="text/javascript" src="/Public/Front/js/plugins/layui/layui.js" /></script>
<script type="text/javascript" src="/Public/js/tupian.js" /></script>
<script type="text/javascript" src="/Public/Admin/js/usercontrol.js" /></script>
  <script type="text/javascript" src="/Public/laydate/laydate.js" /></script>
<script type="text/javascript" src="/Public/js/zy.js" /></script>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
<div class="row">
  <div class="col-sm-12">
    <div class="ibox float-e-margins">
      <div class="ibox-title">
        <h5>成功率</h5>
      </div>
      <div class="ibox-content">
    <blockquote class="layui-elem-quote">
  <form class="form-inline" role="form" action="" method="get" autocomplete="off" id="selectedform">
    <div class="form-group">
      <input type="text"  id="starttime" name="starttime"  class="form-control laydate-icon zy-searchstr" style="height: 30px;width: 120px;" onclick="laydate({ele:this,max: laydate.now(+1),istoday: true})" value="<{$Think.get.tjdate_ks}>" placeholder="日期">
    </div>
    <button type="submit" class="layui-btn layui-btn-small"> <span class="glyphicon glyphicon-search"></span> 查询</button>
  </form>
    </blockquote>
<!--<blockquote class="layui-elem-quote layui-quote-nm" style="font-size:14px;padding;8px;">成功交易总金额：<span class="label label-info"><{$money}>元</span>  平台流量收入：<span class="label label-info"><{$traffic}>元</span> 总交易笔数：<span class="label label-info"><{$zsum}>笔</span> 成功笔数：<span class="label label-info"><{$num}>笔</span></blockquote>-->
<div class="table-responsive" style="=margin:0px auto; margin-top:10px;">

  <table class="table table-bordered table-hover table-condensed table-responsive">
    <thead>
      <tr class="titlezhong">
        <td><strong>子商户</strong></td>
        <!--<td><strong>所属商户</strong></td>-->
        <td><strong>提交总数</strong></td>
        <td><strong>成功数</strong></td>
        <td><strong>成功金额</strong></td>
        <td><strong>成功率</strong></td>
      </tr>
    </thead>
    <tbody id="content">
      <volist name="res" id="vo">
        <tr>
          <td style="text-align:center;"><{$vo.subid}></td>
          <!--<td style="text-align:center;"><{$vo.userid}></td>-->
          <td style="text-align:center;"><{$vo.sum_orders}></td>
          <td style="text-align:center;"><{$vo.cg_orders}></td>
          <td style="text-align:center;"><{$vo.sum_money}></td>
          <td style="text-align:center;"><{$vo.cgl}></td>
        </tr>
      </volist>
    </tbody>

  </table>
</div>
      </div>
    </div>
</div>
</div>
</div>
</body>
</html>
