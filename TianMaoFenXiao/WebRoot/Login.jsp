<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache,must-revalidate">
    <meta http-equiv="expires" content="0">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no" name="format-detection">
    <title>登录 - 天猫tmall.com —上天猫，就购了</title>
    <meta name="data-spm" content="3704.3033477">

    <link rel="stylesheet" href="css/denglu.css" type="text/css"></link>
    
    <script type="text/javascript" src="jquery-easyui-1.3.3/jquery.min.js"></script>
  	<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
  	<link rel="stylesheet" href="jquery-easyui-1.3.3/themes/default/easyui.css" type="text/css"></link>
  	<link rel="stylesheet" href="jquery-easyui-1.3.3/themes/icon.css" type="text/css"></link>
  	
  	<script type="text/javascript">
  	  $(document).ready(function(){
  	     
  	  
  	  });
  	  
  	  
  	  function DengLu(){
  	      var dengluming=$('#Dengluming').val();
  	      var password=$('#Password').val();
//   	      alert(dengluming+password);
  	  
  		  $.getJSON("Login?dengluming="+dengluming+"&password="+password,function(result){
  				if(result == 'TianXie'){
  					location.href = 'PiLiangFaBu/KaiTongGYS.jsp';
  				}
  				else if(result == 'have'){
  				    location.href = 'ZhuJieMian.jsp';
  					
  				}
  				else{
  				     $.messager.alert('登录失败','用户名或密码错误！！','error');
  				}
  				
  		    });  	      
  	  
  	  

//   	     return href="KaiTongGYS.html";
  	  }
  	  
  	</script>
  
  </head>
  
  <body>

<div id="header">
    <div id="header-inner">
        <!-- global logo -->        <div class="logo">
                <a href="http://www.tmall.com/" target="_self"><img src="img/denglu2.png" alt="Tmall.com天猫"></a>
        </div>
    </div>
</div>
<div id="content" class="clearfix">
    <div class="pic" data-spm="6799321">
        <img id="j_mediaImg" src="img/denglu1.jpg" style="width:435px;height:276px;">
   </div>
    <div class="form">
        <div class="form-inner">
            <div class="form-content" style="padding-left:10px;">
              <div style="padding-left:100px;"><img src="img/tubiao2.png"></img></div>
              <div style="height:230px;width:250px;border:1px solid;">
                <table style="margin:30px">
                   <tr><td><font>登录名：</font></tr>
                   <tr style="height:5px"></tr>
                   <tr><td><input id="Dengluming" style="height:25px;width:180px;"></td></tr>
                   <tr style="height:10px"></tr>
                   <tr><td><font>登录密码：</font></tr>
                   <tr style="height:5px"></tr>
                   <tr><td><input id="Password" style="height:25px;width:180px;" type="password"></td></tr>
                   <tr style="height:10px"></tr>
                   <tr><td><input type="checkbox"><font size="2.5"><strong>安全控件登录</strong></font></td></tr>
                   <tr style="height:10px"></tr>
                   <tr><td><button style="height:25px;width:180px;background: #BD0E0E;" onclick="DengLu()"><strong style="font-size:12px;color:#ffffff;">登录</strong></button></td></tr>
                   <tr><td><div style="padding-left:150px;"><a class="easyui-linkbutton" data-options="plain:true" style="color:#0A50E5;" onclick="zhuce()">注册</a></div></td></tr>
                </table>
              </div>
            </div>
        </div>
    </div>
    <div  style="width:150px;height:150px;float:right;">
      <div style="padding-left:100px;padding-top:130px;">
        <ul>
          <li style="width:100px;"><font style="margin-left:30px;"><strong>扫一扫</strong></font></li>
          <li style="padding-top:10px;"><img src="img/QRImg.jpg"></img></li>
        </ul>
      </div>
    </div>
    
    
  </div>
<div id="footer">
    <div id="mall-desc">
        <dl id="ensure">
        <dt><span><font color="#0014F7" size="3"><strong>天猫保障</strong></font></span></dt>
        <dd>
            <span><i></i>7天无理由退换货</span>
            <span><i></i>提供发票</span>
        </dd>
    </dl>
    <dl id="beginner">
        <dt><span><font color="#0014F7" size="3"><strong>新手上路</strong></font></span></dt>
        <dd>
            <a href="http://register.tmall.com/" target="_blank"><i></i>免费注册</a>
            <a href="https://www.alipay.com/user/reg_select.htm" target="_blank"><i></i>开通支付宝</a>
            <a href="https://www.alipay.com/user/login.htm?goto=https%3A%2F%2Fwww.alipay.com%2Fuser%2Finpour_request.htm" target="_blank"><i></i>支付宝充值</a>
<a href="http://service.tmall.com/support/tmall/tmallHelp.htm" target="_blank"><i></i>帮助中心</a>
        </dd>
    </dl>
    <dl id="payment">
            <dt><span><font color="#0014F7" size="3"><strong>支付方式</strong></font></span></dt>
            <dd>
                <a href="http://help.alipay.com/lab/help_detail.htm?help_id=245296" target="_blank"><i></i>支付宝快捷支付</a>
                <a href="http://help.alipay.com/lab/help_detail.htm?help_id=251547" target="_blank"><i></i>支付宝余额付款</a>
                <a href="http://help.alipay.com/lab/help_detail.htm?help_id=253912" target="_blank"><i></i>支付宝卡付款</a>
                <a href="http://www.tmall.com/go/act/sale/cod.php" target="_blank"><i></i>货到付款</a>
                <a href="http://abc.alipay.com/cool/fastPayment.htm" target="_blank"><i></i>新人支付</a>
            </dd>
        </dl>

    <dl id="seller">
        <dt><span><font color="#0014F7" size="3"><strong>商家服务</strong></font></span></dt>
        <dd>
           <a href="http://zhaoshang.tmall.com/" target="_blank" class="join"><i></i>商家入驻&gt;&gt;</a>
           <a href="http://shangjia.tmall.com/portal.htm" target="_blank"><i></i>商家中心</a>
		   <a href="http://peixun.tmall.com/" target="_blank"><i></i>天猫智库</a>
           <a href="http://guize.tmall.com/" target="_blank"><i></i>天猫规则</a>
           <a href="http://e56.tmall.com/" target="_blank"><i></i>物流服务</a>
          <a href="http://mymy.maowo.tmall.com/" target="_blank"><i></i>喵言喵语</a>
          <a href="http://fw.tmall.com/?spm=3.7095809.2000g002.18.i9zjHo" target="_blank"><i></i>运营服务</a>
        </dd>
    </dl>
    <!--[if IE 6]><br /><![endif]-->
	<h4 class="go-home"><img style="padding-left:20px;" src="img/tubiao1.png"></img></h4></div>
    <div id="copyright">
        <!-- foot links from tms start -->
<p id="footer-tmallinfo">
    <a href="http://www.tmall.com/go/chn/mall/zhaoshang_produce.php" target="_blank">关于天猫</a>
    <a href="http://service.tmall.com/support/tmall/tmallHelp.htm" target="_blank">帮助中心</a>
    <a href="http://job.taobao.com/" target="_blank">诚聘英才</a>
    <a href="http://www.tmall.com/go/chn/tmall/contact.php" target="_blank">联系我们</a>
    <a href="http://xtao.tmall.com/?tracelog=tmallfoot" target="_blank">网站合作</a>
    <a href="http://www.taobao.com/about/copyright.php">版权说明</a>
</p>
<p id="footer-otherlink">
    <a href="http://www.alibabagroup.com/cn/global/home" target="_blank">阿里巴巴集团</a>|
    <a href="http://www.taobao.com/" target="_blank">淘宝网</a>
    |
    <a href="http://www.tmall.com/?spm=1.1000386.245549.6.GGCoax" target="_blank">天猫</a>
    |
    <a href="http://ju.taobao.com/?spm=1.1000386.245549.7.GGCoax" target="_blank">聚划算</a>
    |
    <a href="http://www.aliexpress.com/?spm=1.1000386.245549.4.GGCoax" target="_blank">全球速卖通</a>
    |
    <a href="http://www.alibaba.com/?spm=1.1000386.245549.2.GGCoax" target="_blank">阿里巴巴国际交易市场</a>|
    <a href="http://www.1688.com/?spm=1.1000386.245549.3.GGCoax" target="_blank">1688</a>
    |
    <a href="http://www.alimama.com/?spm=1.1000386.245549.9.GGCoax" target="_blank">阿里妈妈</a>
    |
    <a href="http://www.aliyun.com/?spm=1.1000386.245549.10.GGCoax" target="_blank">阿里云计算</a>
    |
    <a href="http://www.yunos.com/?spm=1.1000386.245549.11.GGCoax" target="_blank">云OS</a>
    |
    <a href="http://www.net.cn/?spm=1.1000386.245549.12.GGCoax" target="_blank">万网</a>
    |
    <a href="http://trip.taobao.com/" target="_blank">淘宝旅行</a>
    |
    <a href="http://www.xiami.com/" target="_blank">虾米</a>
    |
    <a href="http://www.laiwang.com/" target="_blank">来往</a>
    |
    <a href="http://www.alipay.com/" target="_blank">支付宝</a>
</p>
<p>&#169;&nbsp;2003-2014&nbsp;Tmall.com&nbsp;版权所有 <br>增值电信业务经营许可证：<a data-spm-protocol="i" href="http://www.miibeian.gov.cn/state/outPortal/loginPortal.action">浙B2-20110446</a><br>网络文化经营许可证：<a href="http://img01.taobaocdn.com/tps/i1/T1M72qXjhgXXc1.xw7-2349-1700.jpg" target="_blank">浙网文[2012]0234-028号</a><br>互联网医疗保健信息服务 审核同意书 浙 卫网审【2012】6号<br>互联网药品信息服务资质证书编号：浙-（经营性）-2012-0005</p>
<!-- foot links from tms end -->    </div>
</div>    
</body>

</html>
