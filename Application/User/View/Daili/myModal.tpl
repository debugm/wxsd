<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-describedby="tscontent" aria-hidden="true" data-backdrop="static">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" aria-hidden="true" onclick="javascript:location.reload();">&times;</button>
        <h4 class="modal-title" id="myModalLabel"><span class="glyphicon glyphicon-volume-up"></span></h4>
      </div>
      <div class="modal-body" id="tscontent" style="color:#000; font-family:'微软雅黑';">
     
      </div>
      <div class="modal-footer">
      <input type="hidden" id="delid" ajaxurl="<{:U("delinvitecode")}>">
      <button type="button" class="btn btn-primary" id="okdelbutton" style="display:none;">
        确认删除
        </button>
        <button type="button" class="btn btn-default" onclick="javascript:location.reload();">
        关闭
        </button>
       
      </div>
    </div>
  </div>
</div>