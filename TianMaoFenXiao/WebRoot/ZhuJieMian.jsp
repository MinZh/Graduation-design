<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ZhuJieMian.jsp' starting page</title>
    
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
	<link rel="stylesheet" href="css/ZhuJieMianCss.css" type="text/css"></link>

  	
  	<script type="text/javascript">
  	   $(document).ready(function(){
  	        $('#mainIFarme').attr('src','PiLiangFaBu/TuPian.jsp');
  	   });
  	   
  	   function openfrmModules(url){
 		    $('#mainIFarme').attr('src',url);
 		}
 		
  	</script>
  	
  	

  </head>
  
  <body>
    <div  style="width:auto;height:60px;margin-bottom:15px;padding:15px 25px 10px 10px;">    	
    	<!-- logo -->
    	<div id="logo" style="float:left;width:330px;height:60px;">
    		<img src="img/taobaofenxiao.jpg"></img>
    	</div>
    	<!-- logo End -->
    	<!-- search -->     	
		<div class="top-mallSearch" id="J_MallSearch">
			<div class="top-mallSearch-bg">
				<form accept-charset="gbk" name="searchTop" action="http://gongxiao.tmall.com/search.htm" class="mallSearch-form clearfix">
					<fieldset>
						<legend>天猫搜索</legend>
						<div id="J_SelectTypes" class="top-mallSearch-type">
							<a class="active search-product" data-type="p" href="#" data-label="输入您想要的分销产品">分销产品<i></i></a>
							<a class="search-shop" data-type="s" href="#" data-label="输入关键字：公司名、主营品牌、授权品牌、主营类目">供  应  商</a>
						</div>
                        <div class="mallSearch-input clearfix">
							<label for="mq" style="visibility: visible; color: rgb(102, 102, 102);">
								
							</label>
                            <input  type="text" accesskey="s" autocomplete="off" class="top-mq" maxlength="60" value="" id="keyword-f" name="key" onclick="qingkong()">
                            <button type="submit">搜索<s></s></button>
                            <input id="J_Type" type="hidden" name="type" value="p">
                            <input id="J_Cat" type="hidden" name="cat" value="all">
						</div>
					</fieldset>
				</form>
			</div>
		</div>	
    	<!-- search End -->
    	
    </div>
    <!-- 我是供应商 -->
    <div class="center" style="width:auto;height:40px;color:#ffffff;margin-bottom:10px;" >
    	<div class="fl" style="width:150px;height:40px;">
			<a style="text-decoration: none;background-color:#469AB4;color:#ffffff;display:block;padding-left: 15px;line-height:40px;">
				<font><strong>我是供货商</strong></font>
			</a>
		</div>    	
    </div>
    <!-- 我是供应商 End -->
    
    <!-- 菜单&&中间窗口 -->    
  
    <div class="easyui-layout" style="padding:12px; margin-left:25px;height:640px;">	
    	<!-- 菜单 -->	
		<div data-options="region:'west',split:true" style="width:180px;background-color:#CCE8F8;height:auto">	 
			<div class="easyui-accordion" fit="true" >
				<div title="分销商管理" style="overflow:auto;padding:10px;">
					<a class="easyui-linkbutton" style="color:#469AB4;" data-options="plain:true" 
    					>合作中的分销商</a><br/>
    				<a class="easyui-linkbutton" style="color:#469AB4;" data-options="plain:true" 
    					>申请中的分销商</a><br/>
					<a class="easyui-linkbutton" style="color:#469AB4;" data-options="plain:true" 
    					onclick="$('#mainIFarme').attr('src','YaoQing/YaoQingFenXiaoShang.jsp');">邀请分销商合作</a><br/>
					<a class="easyui-linkbutton" style="color:#469AB4;" data-options="plain:true" 
    					>分销商等级</a><br/>
    				<a class="easyui-linkbutton" style="color:#469AB4;" data-options="plain:true" 
    					>设置等级折扣</a><br/>
    				<a class="easyui-linkbutton" style="color:#469AB4;" data-options="plain:true" 
    					>经销商品销售跟踪</a><br/>
				</div>
				<div title="产品管理" style="overflow:auto;padding:10px;" selected="true">
					<a class="easyui-linkbutton" style="color:#469AB4;" data-options="plain:true" 
    					onclick="$('#mainIFarme').attr('src','PuHuo/WodeChanPinKu.jsp');">我的产品库</a><br/>
					<a class="easyui-linkbutton" style="color:#469AB4;" data-options="plain:true">我的产品线</a><br/>
    				<a class="easyui-linkbutton" style="color:#469AB4;" data-options="plain:true" 
    					onclick="$('#mainIFarme').attr('src','PiLiangFaBu/GongYingShang.jsp');">批量导入新产品</a><br/>
           			<a class="easyui-linkbutton" style="color:#469AB4;" data-options="plain:true" 
    					onclick="$('#mainIFarme').attr('src','PuHuo/faBuChanPin.jsp');">单件发布新产品</a><br/>
	     		</div>
	     		<div title="采购单管理" style="overflow:auto;padding:10px;">	  				
	  				<a class="easyui-linkbutton" style="color:#469AB4;" data-options="plain:true" 
    					onclick="$('#mainIFarme').attr('src','YaoQing/CaiGouDanFaHuo.jsp');">我的采购单</a><br/>
    				<a class="easyui-linkbutton" style="color:#469AB4;" data-options="plain:true" 
    					>维权管理</a><br/>
	     		</div>
	      		<div title="结算管理" style="overflow:auto;padding:10px;">
	      		    <a class="easyui-linkbutton" style="color:#469AB4;" data-options="plain:true" 
    					>我的购物车</a><br/>
    			<a class="easyui-linkbutton" style="color:#469AB4;" data-options="plain:true" 
    					>我的账户</a><br/>
	     		</div>
			</div>	
		</div>	
		<!-- 菜单 End -->
		
		<!-- 批量导入新产品-->
		<div data-options="region:'center',split:true" >
		
		  <iframe id="mainIFarme" scrolling="no" style="width:99.6%;height:99.4%;"></iframe>
		
		</div>
		<!-- 批量导入新产品 End -->
			
	</div>    
    <!-- 菜单&&批量导入新产品End -->
  </body>
  
</html>
