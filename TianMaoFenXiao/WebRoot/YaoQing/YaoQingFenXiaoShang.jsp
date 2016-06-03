<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'YaoQingFenXiaoShang.jsp' starting page</title>
    
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
  		
  			$('#verifyInvite').window('close');
  			$('#frmVerifyFenXiaoShang').window('close');
  			$('#queren').window('close');	 			

  		});
  		
  		
  		var caozuorows = 0;
  		function aCheck(){//显示操作
//   			var rows = $('#yaoqingjilu').datagrid('getRows'); 
  			var caozuo = null;
//   			for(var i=0; i<rows.length; i++){
  				var jujueyuanyin = $('#yaoqingjilu').datagrid('getRows')[caozuorows]['juJueLiYou'];
  				if(jujueyuanyin==null){
  					caozuo = null;
  				}else{
  					caozuo = "<a href='javascript:aCheckResu()'>查看原因</a>";
  				}
  			caozuorows++;
//   			}
  			return caozuo;
  		}
  		function aCheckResu(){//查看拒绝原因
  			
  		}
  		function boundInvite(){//绑定被选中分销商信息
  			var salesManID = $('#salesManID').val();
  			if(salesManID > 0){
  				var url1 = "getFenXiaoShangByID?fenXiaoShangId="+salesManID;
  				$.getJSON(url1, function(result){
  					if(result != null){
  						$('#frmVerifyFenXiaoShang').window('open');
  						$('#verifyfenxiaoshang').datagrid({
  							url:url1
  						});
  					}		
  					else{
  						alert("此分销商不存在，请确认分销商ID是否正确！");
  					}
  				});
  			}
  			else{
  				alert("请输入分销商ID！");
  			}
  			
  		}
  		function verifyInvite(){//确认邀请
  			var salesManID = $('#salesManID').val();
  			var checkdaixiao = $("#checkdaixiao:checked").val();
  			var checkjingxiao = $("#checkjingxiao:checked").val();
  			var url = "addYaoQingShengChanShang?fenXiaoShangId="+salesManID+"&checkdaixiao="+checkdaixiao+"&checkjingxiao="+checkjingxiao;
  			$.getJSON(url,function(result){
  			 	if(result == "OK"){
  			 		$('#queren').window('open');
//   			 		$('#yaoqingjilu').datagrid('reload');//重载当前页记录	
  			 	}
  			 	else{
  			 		alert(result);
  			 	}
  			});  				 			
  		}
  		function queding(){//关闭确认邀请提示框  			
  			$('#frmVerifyFenXiaoShang').window('close');
  			$('#queren').window('close');  	
  			  			
  			$('#inviteSalesMan').window('refresh');
  			$('#yaoqingjilu').datagrid('reload');//重载当前页记录
// 			$('#yaoqingjilu').datagrid('loadData');//载入本地数据，移除旧数据
  		}
  		</script>	
	
  </head>
  
  <body>
    <!-- 邀请分销商合作 -->
		<div class="easyui-window" id="inviteSalesMan" data-options="inline:true,fit:true,modal:true,collapsible:false,minimizable:false,
    		maximizable:false,resizable:false,closable:false" title="　" >
				<div style="width:100%;"><font style="color:rgb(153, 148, 148)">分销商管理　>　邀请分销商合作</font></div>
				<div class="demo-info1">
					<p><strong>使用该页面前，建议您进行以下操作：<a href="#">设置并开启招募书</a></strong></p>
				</div>
				<div class="demo-info2">
					输入你要邀请的分销商ID：
					<input id="salesManID" type="text">		
					<button onclick="boundInvite()">邀请</button>			
				</div>
				<font size="3">邀请记录</font>
				<div style="width:auto;height:550px;margin-top:10px;" fit="true" id="fenxiaoshangxinxi">
					<table id="yaoqingjilu" class="easyui-datagrid" style="width:auto;height:450px"					
					data-options="singleSelect:true,idField:'邀请id',scrolling:true,fit:true,border:false,
					url: 'getYaoQingJiLu',
					rowStyler:function(index,row){
    						if(index%2==0){
    							return 'background-color:#CCCCff;';
    						}
    					}">
						<thead>
							<tr>
								<th data-options="field:'fenXiaoShang',align:'center',width:150" rowspan="2">分销商名称</th>
								<th data-options="field:'xinYongDengJi',align:'center',width:100" rowspan="2">信用等级</th>
								<th data-options="field:'haoPinLv',align:'center',width:60" rowspan="2">好评率</th>
								<th data-options="field:'kaiDianShiJian',align:'center',width:150" rowspan="2">开店时间</th>
								<th data-options="field:'leiMuMingCheng',align:'center',width:170" rowspan="2">主营类目</th>
								<th data-options="field:'yaoQingShiJian',align:'center',width:150" rowspan="2">邀请时间</th>
								<th data-options="field:'fenXiaoFangShi',align:'center',width:90" rowspan="2">邀请模式</th>
								<th data-options="field:'yaoQingZhuangTai',align:'center',width:107" rowspan="2">邀请状态</th>								
								<th data-options="field:'juJueLiYou',hidden:true,width:110" rowspan="2">拒绝理由</th>
								<th data-options="field:'caoZuo',width:100,align:'center',formatter:aCheck" rowspan="2">操作</th>
							</tr>
						</thead>
					</table>
				</div>				
		</div>
		<!-- 邀请分销商合作 End -->
	<!-- 确认邀请信息 -->
    <div id="frmVerifyFenXiaoShang" class="easyui-window" data-options="modal:true,collapsible:false,minimizable:false,
    maximizable:false,resizable:false" title="　" style="width:660px;height:370px;padding:0px 10px 5px 10px;">
    	<font size="3">　确认您要邀请的分销商信息</font><br/>
    	<div style="width:auto;height:270px;border:none;margin:10px;">
			<table id="verifyfenxiaoshang" class="easyui-datagrid" style="width:auto;height:210px"					
					data-options="singleSelect:true,idField:'分销商id',scrolling:true,border:false,
					rowStyler:function(index,row){
    						if(index%2==0){
    							return 'background-color:#CCCCff;';
    						}
    					}">
				<thead>
					<tr>
						<th data-options="field:'fenXiaoShang',align:'center',width:120" rowspan="2">分销商名称</th>
						<th data-options="field:'xinYongDengJi',align:'center',width:90" rowspan="2">信用等级</th>
						<th data-options="field:'haoPinLv',align:'center',width:80" rowspan="2">好评率</th>
						<th data-options="field:'leiMuMingCheng',align:'center',width:160" rowspan="2">主营类目</th>
						<th data-options="field:'kaiDianShiJian',align:'center',width:150" rowspan="2">开店时间</th>
					</tr>
				</thead>
			</table>
			<font size="2"><strong>邀请合作模式：</strong></font>
			<font color="red">*</font><input type="checkbox" id="checkdaixiao"><font size="2">代销（供应商一件代发）</font>
			<input type="checkbox" id="checkjingxiao"><font size="2">经销（分销商囤货销售）</font>
			<div style="margin-top:30px" align="center">
				<button onclick="verifyInvite()">立即邀请</button>
				<button onclick="$('#frmVerifyFenXiaoShang').window('close');">取消</button>
			</div>			
		</div>		
    </div>
    <!-- 确认邀请信息 End -->
    
    <!-- 邀请成功 -->
    <div id="queren" class="easyui-window" data-options="modal:true,collapsible:false,minimizable:false,
    maximizable:false,resizable:false" title="　" style="width:400px;height:120px;" align="center">
    	<font size="3"><strong>加盟邀请发送成功，请等待分销商回应</strong></font><br/>
    	<font size="2">您可以在邀请记录中查找到相关结果</font><br/>
    	<button onclick="queding()">确定</button>
    </div>
    <!-- 邀请成功  End-->
  </body>
</html>
