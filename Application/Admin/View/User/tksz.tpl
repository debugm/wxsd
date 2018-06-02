 <br>
  <!-------------------------------------------------------------------------------------------------->
  <form  role="form" id="tikuanconfigform" action="<{:U("Tikuan/Tikuanconfigedit")}>">
   <input type="hidden" id="tkconfigid" value="<{$tikuanconfiglist['id']}>">
   <input type="hidden" id="tkuserid" name="userid" value="<{$_REQUEST['userid']}>">
    <div class="form-group">
  <label>提款规则设置：</label>
       <select class="form-control" name="systemxz" id="systemxz" style="font-weight:bold; color:#F00;">
           <option <if condition="$tikuanconfiglist['systemxz'] eq 0">selected</if> value="0">应用系统规则</option>
            <option <if condition="$tikuanconfiglist['systemxz'] eq 1">selected</if> value="1">设置个人规则</option>
       </select>
      
  </div>
  <div class="form-group tkconfigdiv">
  <label>单笔提款最小金额：</label>
    <div class="input-group">
      <div class="input-group-addon">¥</div>
      <input class="form-control" type="text" name="tkzxmoney" id="tkzxmoney" value="<{$tikuanconfiglist["tkzxmoney"]}>" placeholder="单笔提现最小金额">
    </div>
  </div>
  <div class="form-group tkconfigdiv">
  <label>单笔提款最大金额：</label>
    <div class="input-group">
      <div class="input-group-addon">¥</div>
      <input class="form-control" type="text" name="tkzdmoney" id="tkzdmoney" value="<{$tikuanconfiglist["tkzdmoney"]}>" placeholder="单笔提现最大金额">
    </div>
  </div>
  <div class="form-group tkconfigdiv">
  <label>当日提款最大总金额：</label>
    <div class="input-group">
      <div class="input-group-addon">¥</div>
      <input class="form-control" type="text" name="dayzdmoney" id="dayzdmoney" value="<{$tikuanconfiglist["dayzdmoney"]}>" placeholder="当日提款最大总金额">
    </div>
  </div>
   <div class="form-group tkconfigdiv">
      <label>当日提款最大次数：</label>
      <input class="form-control" type="text" name="dayzdnum" id="dayzdnum" value="<{$tikuanconfiglist["dayzdnum"]}>" placeholder="当日提款最大次数">
  </div>
  <div class="form-group tkconfigdiv">
      <label>是否开通T+1：</label>
       <select class="form-control" name="t1zt" id="t1zt">
       		<option value="1">开通T+1</option>
            <option value="0">关闭T+1</option>
       </select>
     
  </div>
   <div class="form-group tkconfigdiv">
      <label>是否开通T+0：</label>
       <select class="form-control" name="t0zt" id="t0zt">
       		<option value="1">开通T+0</option>
            <option value="0">关闭T+0</option>
       </select>
      
  </div>
   <div class="form-group tkconfigdiv">
  <label>购买T+0金额：</label>
    <div class="input-group">
      <div class="input-group-addon">¥</div>
      <input class="form-control" type="text" name="gmt0" id="gmt0" value="<{$tikuanconfiglist["gmt0"]}>"  placeholder="购买T+0金额">
    </div>
  </div>
  <div class="form-group tkconfigdiv">
      <label>提款手续费类型：</label>
      <select class="form-control" name="tktype" id="tktype">
          <option value="0">按比例计算</option>
          <option value="1">按单笔计算</option>
      </select>
      <script>
          $("#tktype").val('<{$tikuanconfiglist["tktype"]}>');
      </script>
  </div>
  <div class="form-group tkconfigdiv">
      <label>单笔提款比例：</label>
      <div class="input-group">
          <div class="input-group-addon">%</div>
          <input class="form-control" type="text" name="sxfrate" id="sxfrate" value="<{$tikuanconfiglist["sxfrate"]}>"  placeholder="单笔提款比例">
      </div>
  </div>
  <div class="form-group tkconfigdiv">
      <label>单笔提款收取：</label>
      <div class="input-group">
          <div class="input-group-addon">¥</div>
          <input class="form-control" type="text" name="sxffixed" id="sxffixed" value="<{$tikuanconfiglist["sxffixed"]}>"  placeholder="单笔提款收取">
      </div>
  </div>
  <div class="form-group tkconfigdiv">
      <label>提款状态：</label>
       <select class="form-control" name="tkzt" id="tkzt">
       		<option value="1">开启提款</option>
            <option value="0">关闭提款</option>
       </select>
      
  </div>
   <div class="form-group" style="text-align:center;">
  <button type="button" id="tkconfigbutton" class="btn btn-primary">确认修改</button>
  </div>
</form>
  <!-------------------------------------------------------------------------------------------------->
<volist name="tongdaolist" id="vo">
<!---------------------------------------------------------------------------------------------------------------------->
<div class="Payaccessdiv" style="width:100%; margin-top:10px;" id="tikuanmoney">
<ul class="list-group">
  <li class="list-group-item" style="text-align:center; background-color:#f5f5f5; font-size:13px;">【<span style="color:#39F"><{$vo["zh_payname"]}></span>】<strong>提款手续费设置</strong></li>
  <li class="list-group-item" style="text-align:center;">
     <form role="form" id="form<{$vo.id}>" action="<{:U("User/Edittikuanmoney")}>">
     <input type="hidden" name="tikuanpayapiid">
     <input type="hidden" name="userid">
    <for start="0" end="2">
  	<div class="tikuandiv">
    <a class="list-group-item" style="font-size:13px;"><strong>T+<sapn style="color:#F00"><{$i}></span></strong>&nbsp;&nbsp;(<span>白天</span>)</a>
    <div class="input-group">
      <div class="input-group-addon"><{:huoqutktype()}></div>
      <input class="form-control" type="text" onkeyup="clearNoNum(this)" id="t<{$i}>b" name="t<{$i}>b">
    </div>
    </div>

    <div class="tikuandiv">
    <a class="list-group-item" style="font-size:13px;"><strong>T+<sapn style="color:#F00"><{$i}></span></strong>&nbsp;&nbsp;(<span>晚间</span>)</a>
    <div class="input-group">
      <div class="input-group-addon"><{:huoqutktype()}></div>
      <input class="form-control" type="text" onkeyup="clearNoNum(this)" id="t<{$i}>w" name="t<{$i}>w">
    </div>
    </div>

    <div class="tikuandiv">
    <a class="list-group-item" style="font-size:13px;"><strong>T+<sapn style="color:#F00"><{$i}></span></strong>&nbsp;&nbsp;(<span>节假日</span>)</a>
    <div class="input-group">
      <div class="input-group-addon"><{:huoqutktype()}></div>
      <input class="form-control" type="text" onkeyup="clearNoNum(this)" id="t<{$i}>j" name="t<{$i}>j">
    </div>
    </div>
  </for>

     </form>
   <div style="clear:left;"></div>
  </li>
  <li class="list-group-item" style="text-align:center;">
  <button type="button" class="btn btn-info tikuan-btn" data-loading-text="正在处理中..." tjname="form<{$vo.id}>">修 改</button>
  </li>
</ul>
</div>
<!---------------------------------------------------------------------------------------------------------------------->
</volist>