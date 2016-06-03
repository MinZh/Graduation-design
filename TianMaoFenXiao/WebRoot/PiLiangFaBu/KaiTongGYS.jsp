<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'KaiTongGYS.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
    <script type="text/javascript" src="jquery-easyui-1.3.3/jquery.min.js"></script>
    <script type="text/javascript" src="jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
    <link rel="stylesheet" href="jquery-easyui-1.3.3/themes/default/easyui.css" type="text/css"></link>
    <link rel="stylesheet" href="jquery-easyui-1.3.3/themes/icon.css" type="text/css"></link>
    <script type="text/javascript">
       $(document).ready(function(){
       
           
       
       });
    
       function agree(){
          $.messager.alert('','　　　　　恭喜您！成为天猫供销商！！','',function(){  
                     $("#jibenxinxi").submit;
                     location.href = 'ZhuJieMian.jsp';   //在struct里面写一个action为"tongyi"的方法
			});
          
          
       }
	
    </script>	
	
	
	

  </head>
  
<body>

	<div fit="true">
		<div id="p" class="easyui-panel" fit="true" border="false">
			<div class="easyui-layout" style="width:1600px;height:1350px;margin-left:20px;">
              <div region="north" style="height:100px;padding-left:20px;">
                 <img src="img/taobaofenxiao.jpg"></img>
              </div>
    
    <div region="center">
    <div class="easyui-layout" fit="true">
	<div region="north" style="height:30px;padding-left:20px;background: #D7E6F8;">
		<a class="easyui-linkbutton" plain="true">首页</a>
		<a class="easyui-menubutton" data-options="menu:'#menuJiChuShuJu'">分销商管理</a>
		<a class="easyui-menubutton" data-options="menu:'#menuCaiGouGuanLi'">产品管理</a>
		<a class="easyui-menubutton" data-options="menu:'#menuYeWuGuangLi'">采购单管理</a>
		<a class="easyui-menubutton" data-options="menu:'#menuRuKuGuanLi'">基本设置</a>

		<!-- 基础数据菜单 -->
		<div id="menuJiChuShuJu" style="width:60px;">
			<div>产品分类</div>
			<div>产品单位</div>
			<div>产品颜色</div>
			<div>产品规格</div>
			<div class="menu-sep"></div>
			<div>仓库设置</div>
			<div data-options="iconCls:'icon-edit'">产品资料管理</div>
			<div>添加产品</div>
			<div>产品BOM</div>
			<div class="menu-sep"></div>
			<div>供应商分类</div>
			<div data-options="iconCls:'icon-edit'">供应商管理</div>
			<div>
				<span>客户设置</span>
				<div style="width:60px;">
					<div>客户分类</div>
					<div>客户类型</div>
					<div>客户等级</div>
					<div>客户区域</div>
					<div>客户阶段</div>
					<div>客户行业</div>
					<div>客户来源</div>
					<div>销售机会</div>
				</div>
			</div>
			<div data-options="iconCls:'icon-edit'">客户资料管理</div>
			<div>部门设置</div>
			<div>员工设置</div>
			<div>员工管理</div>
			<div class="menu-sep"></div>
			<div>银行账户管理</div>
			<div>初期库存建账</div>
			<div>固定资产表</div>
			<div>数据导入</div>
			<div>发票类型设置</div>
		</div>
		<!-- 基础数据菜单 -->

		<!-- 采购管理菜单 -->
		<div id='menuCaiGouGuanLi' style="width:60px;">
			<div>供应商报价管理</div>
			<div>新增供应商报价</div>
			<div class="menu-sep"></div>
			<div>申购单管理</div>
			<div>新增申购单</div>
			<div class="menu-sep"></div>
			<div>采购订单管理</div>
			<div>新增采购订单</div>
			<div class="menu-sep"></div>
			<div>外发加工订单管理</div>
			<div>新增外发加工订单</div>
		</div>
		<!-- 采购管理菜单 -->

		<!-- 业务管理菜单 -->
		<div id="menuYeWuGuangLi" style="width:60px;">
			<div>客户跟进管理</div>
			<div>联系管理</div>
			<div>销售机会管理</div>
			<div class="menu-sep"></div>
			<div>客户报价管理</div>
			<div>新增客户报价</div>
			<div class="menu-sep"></div>
			<div>客户订单管理</div>
			<div>新增客户订单</div>
			<div class="menu-sep"></div>
			<div>生产计划管理</div>
			<div>新增生产计划</div>
			<div>订单物料需求表</div>
		</div>
		<!-- 业务管理菜单 -->

		<!-- 入库管理菜单 -->
		<div id="menuRuKuGuanLi" style="width:60px;">
			<div>客户跟进管理</div>
			<div>联系管理</div>
			<div>销售机会管理</div>
			<div class="menu-sep"></div>
			<div>客户报价管理</div>
			<div>新增客户报价</div>
			<div class="menu-sep"></div>
			<div>客户订单管理</div>
			<div>新增客户订单</div>
			<div class="menu-sep"></div>
			<div>生产计划管理</div>
			<div>新增生产计划</div>
			<div>订单物料需求表</div>
		</div>
		<!-- 入库管理菜单 -->


	</div>




	<div region="center" fit="true">
		<div class="easyui-layout" fit="true">
			<div region="north" style="height:100px;width:100px">
				<div style="float:left;width:500px;text-align:left;margin-top:5px;padding-left:20px;">
					<font size="3"><strong>基本设置</strong> </font>
					 <br> 
					 <br>
					 <div style="background:#FDF8D2;">
					   	<font size="3"><strong><%=(String)session.getAttribute("niCheng") %></strong></font><font size="2">,恭喜您成为供应商，欢迎使用天猫分销！</font>
					    <br><br>
					    <font size="2">为了成为优秀的供应商,首先花一点时间把资料核对一下吧</font>
					 </div>
				</div>
				<br>
			</div>
			<div region="center" style="padding-left:30px">
			<form id="jibenxinxi" action="tongyi" method="post">
			<div style="margin:20px">
			 <table>
			    <tr>
			      <td align="right"><font size="2">来源网站：</font></td>
			      <td><font size="2">　淘宝</font></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2">来源网站会员名：</font></td>
			      <td><font size="2">　<%=(String)session.getAttribute("niCheng") %></font></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2">可招募分销商：</font></td>
			      <td><font size="2">　10</font></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2">可发布产品：</font></td>
			      <td><font size="2">　50件</font></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2">可设置产品线：</font></td>
			      <td><font size="2">　5条</font></td>
			    </tr>
			    <tr>
			      <td><br></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2">公司名称：</font></td>
			      <td>*<input></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2">联系人：</font></td>
			      <td>*<input></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2">固定电话：</font></td>
			      <td>*<input style="width:50px">-<input style="width:100px">-<input style="width:50px"></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2">手机号码：</font></td>
			      <td>*<input></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2">Email：</font></td>
			      <td>*<input></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2">旺旺：</font></td>
			      <td>*<input></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2">网址URL：</font></td>
			      <td>*<input></td>
			    </tr>
			    <tr>
			      <td><br></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2">主营类目：</font></td>
			      <td><input type="checkbox"><font size="2.5"><strong>个人护理/保健/按摩器材</strong></font></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2"></font></td>
			      <td><input type="checkbox"><font size="2.5"><strong>MP3/Mp4/Pod/录音笔</strong></font></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2"></font></td>
			      <td><input type="checkbox"><font size="2.5"><strong>厨房餐饮/卫浴洗浴</strong></font></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2"></font></td>
			      <td><input type="checkbox"><font size="2.5"><strong>书籍/杂志/报纸</strong></font></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2"></font></td>
			      <td><input type="checkbox"><font size="2.5"><strong>女装/女士精品</strong></font></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2"></font></td>
			      <td><input type="checkbox"><font size="2.5"><strong>电脑硬件/台式整机/网络设备</strong></font></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2"></font></td>
			      <td><input type="checkbox"><font size="2.5"><strong>数码</strong></font></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2"></font></td>
			      <td><input type="checkbox"><font size="2.5"><strong>汽车/配件/改装</strong></font></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2"></font></td>
			      <td><input type="checkbox"><font size="2.5"><strong>玩具/模型/娃娃</strong></font></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2"></font></td>
			      <td><input type="checkbox"><font size="2.5"><strong>居家日用</strong></font></td>
			    </tr>
			    <tr>
			      <td><br></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2">主营品牌：</font></td>
			      <td><textarea style="height:50px;width:400px;"></textarea></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2">是否自有品牌：</font></td>
			      <td><form><input type="radio" name="pinpai" checked="checked">自有品牌　<input type="radio" name="pinpai">代理品牌　<input type="radio" name="pinpai">其他</form></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2">公司简介：</font></td>
			      <td><textarea style="height:50px;width:400px;"></textarea></td>
			    </tr>
			    <tr>
			      <td></td>
			    </tr>
			    <tr>
			      <td size="2" align="right"><font size="2">淘宝网协议条款：</font></td>
			      <td><textarea style="height:80px;width:400px;">警戒库存值默认为0，且导入的产品状态为“未

铺货”状态，请根据情况核对警戒库存、采购价、零售价范围等值后，将产品进行铺货。铺货后，您的分销商才可下载该产品。
产品铺货系统操作路径：产品管理——我的产品库——未铺货——选择供货商品点击铺货即可
</textarea>
　　　　　　　　　　　　　</td>
			    </tr>
			    <tr>
			      <td><br></td>
			    </tr>
			    <tr>
			      <td><br></td>
			      <td><a class="easyui-linkbutton" onclick="agree()">同意协议并保存</a></td>
			    </tr>

			 </table>
			 

			</div>
			</form>

				
			</div>
			
			<div region="south" style="height:130px;">
                   <div id="copyright" style="margin-left:50px">
	  <!-- foot links from tms start -->
     <p id="footer-tmallinfo">
        <a href="http://www.tmall.com/go/chn/mall/zhaoshang_produce.php" target="_blank">关于天猫</a>
        <a href="http://service.tmall.com/support/tmall/tmallHelp.htm" target="_blank">帮助中心</a>
        <a href="http://www.taobao.com/sitemap.php" target="_blank">网站地图</a>
        <a href="http://job.taobao.com/" target="_blank">诚聘英才</a>
        <a href="http://www.taobao.com/about/contact.php" target="_blank">联系我们</a>
        <a href="http://www.taobao.com/about/copyright.php">版权说明</a>
    </p>
    <p id="footer-otherlink">
	<a target="_blank" href="http://page.china.alibaba.com/shtml/about/ali_group1.shtml">阿里巴巴集团</a>：	
	阿里巴巴网络 - <a target="_blank" href="http://china.alibaba.com/">中国站</a> <a target="_blank" href="http://www.alibaba.com/">国际站</a> <a target="_blank" href="http://www.alibaba.co.jp/">日文站</a> | 
	<a target="_blank" href="http://www.taobao.com/">淘宝网</a> | 
	<a target="_blank" href="http://www.etao.com/">一淘网</a> |
	<a target="_blank" href="http://ju.taobao.com/">聚划算</a> |
	<a target="_blank" href="http://www.alipay.com/">支付宝</a> | 
	<a target="_blank" href="http://www.yahoo.com.cn/">中国雅虎</a> | 
	<a target="_blank" href="http://taoke.alimama.com/">淘宝联盟</a> | 
        <a target="_blank" href="http://www.aliresearch.com/">集团研究中心</a> |
        <a href="http://tianxia.taobao.com/" target="_blank">淘宝天下</a> | 
        <a href="http://hitao.taobao.com/" target="_blank">嗨淘网</a> 
    </p>
    <p>Copyright&nbsp;2003-2012, 版权所有TAOBAO.COM <br>增值电信业务经营许可证：浙B2-20080224</p>
    <!-- foot links from tms end -->
</div>
            </div>
			
			
			
		</div>
	</div>
   </div>
   </div>
  </div>	
		</div>
	</div>
	
	




</body>


</html>
