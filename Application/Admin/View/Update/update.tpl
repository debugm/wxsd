<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<title><{:C("WEB_TITLE")}></title>
<link rel="shortcut icon" href="favicon.ico">
<link href="/Public/Front/css/bootstrap.min.css" rel="stylesheet">
<link href="/Public/Front/css/font-awesome.min.css" rel="stylesheet">
<link href="/Public/Front/css/animate.css" rel="stylesheet">
<link href="/Public/Front/css/style.css" rel="stylesheet">
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
<div class="row">
<div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>系统升级</h5>
                </div>
                <div class="ibox-content">
				<div id="update">
					<p>程序名称：<{:C('SOFT_name')}></p>
					<p>程序版本：<{:C('SOFT_VERSION')}></p>
					<p id="upmsg"></p>
				</div>
				<div id="uploading"><{$html}></div>
                </div>
            </div>
        </div>
</div>
<script src="/Public/Front/js/jquery.min.js"></script>
<script src="/Public/js/bootstrap.min.js"></script>
<script src="/Public/Front/js/bootbox.min.js"></script>
<script type="text/javascript">
    function update() {
        bootbox.confirm({
            title: "风险告知",
            message: "由于网络环境差异，为避免在线升级失败造成不可挽回的损失，升级前请做好数据备份工作。同时我们不建议对源码修改过的用户进行在线升级！",
            callback: function (result) {
                if (result) {
                    $('#uploading').html('<i class="ace-icon fa fa-spinner fa-spin orange bigger-120"></i>系统升级中...请勿关闭窗口');
                    $('#upmsg').html('');
                    $.ajax({
                        type:"GET",
                        url:"<{:U('updating')}>",
                        data:"",
                        success:function (json) {
                            $('#uploading').html('');
                            bootbox.alert({
                                buttons: {
                                    ok: {
                                        label: '确定',
                                        className: 'btn-myStyle'
                                    }
                                },
                                message: json.message,
                                callback: function () {
                                    window.location.reload(true);
                                },
                                title: "系统提示",
                            });
                    }});
                } else {
                    return;
                }
            },
            buttons: {
                "cancel": {"label": "取消"},
                "confirm": {
                    "label": "我已做好备份，立即升级",
                    "className": "btn-danger"
                }
            }
        });
    }
</script>
<{:tongji(0)}>
</body>
</html>