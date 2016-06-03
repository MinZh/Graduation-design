<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'CaiGouDanFaHuo.jsp' starting page</title>
    
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
  	   				
  			$('#winfirst').window('close');
  			
  			$('#J_PayType').combobox('setValue',100);
  			$('#J_ProcureType').combobox('setValue',100);
            var editIndex=undefined;
            $('#dgWuLiu').datagrid('appendRow',{});
            editIndex = $('#dgWuLiu').datagrid('getRows').length-1;
			$('#dgWuLiu').datagrid('selectRow', editIndex).datagrid('beginEdit', editIndex);
  	   });
  	   
  	   function myformatter(date){
			var y = date.getFullYear();
			var m = date.getMonth()+1;
			var d = date.getDate();
			return y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d);
		}
		function myparser(s){
			if (!s) return new Date();
			var ss = (s.split('-'));
			var y = parseInt(ss[0],10);
			var m = parseInt(ss[1],10);
			var d = parseInt(ss[2],10);
			if (!isNaN(y) && !isNaN(m) && !isNaN(d)){
				return new Date(y,m-1,d);
			} else {
				return new Date();
			}
		}
  	   
  	   /******************************我的采购单**********************************/
  		function selectCaiGouDan(){//多条件查询采购单
  			$("#caigoudan").empty();
//   			var BCJTime = $('#J_BeginTime').datebox('getValue');
//   			var ECJTime = $('#J_EndTime').datebox('getValue');
  			var PayTypeID = $('#J_PayType').combobox('getValue');
  			var ProcureTypeID = $('#J_ProcureType').combobox('getValue');
  			var Id = 0;
  			var url = "selectCaiGouDan?zhiFuLeiXingId="+PayTypeID+"&caiGouZhuangTaiId="+ProcureTypeID;
  			$.getJSON(url,function(result){
  				$.each(result, function(i, data){
  					$("#caigoudan").append("<li id=\"caigoudan0"+Id+"\">"+
								"<div style=\"margin-top:5px;padding:5px;background-color:#E0ECFF;border:1px ridge\">"+i+
								"</div></li>"+
								"<li id=\"caigoudan1"+Id+"\">"+
									"<div style=\"border:1px ridge;height:"+90*data.length+"px;padding-top:5px\">"+
									"<table id=\"J_BoughtTable"+Id+"\">"+
								"</table></div></li>"	
										);
					if(data==""){
						$("#J_BoughtTable"+Id).append("<font style=\"color:red\">暂无采购单信息！</font>");
					}else{
						$.each(data,function(j,rows){					
     			 			$("#J_BoughtTable"+Id).append("<tr>"+
     			 					"<td hidden=\"true\" align=\"center\">"+rows.caigoudanID+"</td>"+
									"<td style=\"height:50px;width:190px;\"align=\"center\">"+rows.shangpin+"</td>"+
									"<td style=\"height:50px;width:90px;\"align=\"center\">"+rows.price1+"</td>"+
						            "<td style=\"height:50px;width:150px;\"align=\"center\">"+rows.price2+"</td>"+
						            "<td style=\"height:50px;width:100px;\"align=\"center\">"+rows.quantity+"</td>"+
						            "<td style=\"height:50px;width:100px;\"align=\"center\">"+rows.caozuo+"</td>"+
						            "<td style=\"height:50px;width:100px;\"align=\"center\">"+rows.salesman+
						            "<img src=\"img/lianxi.png\"></img></td>"+						            
						            "<td style=\"height:50px;width:200px;\"align=\"center\">"+rows.amount+"</td>"+
						            "<td style=\"height:50px;width:120px;\"align=\"center\">"+rows.tradestatus+
						            "<br/><a href=\"#\">查看详情</a></td>"+		               	
								"</tr>"
     			 			); 			 			
     			 		});
					}
					$.parser.parse($("#caigoudan"));//重新渲染EasyUI控件
					Id++;
  				});
  			});
  		}
  		/*************************发货**************************/
  		var CaiGouDanID = 0;
  		function ShangPinFaHuo(caigoudanID){
  			CaiGouDanID = caigoudanID;
  			var taobaoID = <%=session.getAttribute("taoBaoZhangHaoId")%>;
  			$.getJSON("getMyDiZhiByID?mytaobaoID="+taobaoID,function(result){
  				var arr = result.split(">>");
  				var myFaDiZhi = arr[0].split("，");
  				var myTuiDiZhi = arr[1].split("，");  	
  				var myFaHuoDiZhi = myFaDiZhi[0]+"，"+myFaDiZhi[1]+"，"+myFaDiZhi[2]+"，"+myFaDiZhi[3];
  				var myTuiHuoDiZhi = myTuiDiZhi[0]+"，"+myTuiDiZhi[1]+"，"+myTuiDiZhi[2]+"，"+myTuiDiZhi[3];
  				$('#myFaDiZhi').html(myFaHuoDiZhi);
  				$('#myTuiDiZhi').html(myTuiHuoDiZhi);
  			});
  			$.getJSON("getCaiGouDanByID?caigoudanID="+caigoudanID,function(result){
  				var str = result.split(">>");
  				var caiGouDanBianHao = str[0];
  				var chuangJianTime = str[1];
  				var fenXiaoFangShi = str[2];
  				var shouhuoDZ = str[3]+"，"+str[4]+"，"+str[5]+"，"+str[6];
  				$('#caigoubianhao').html(caiGouDanBianHao);
  				$('#chuangjianT').html(chuangJianTime);
  				$('#fenxiaofs').html(fenXiaoFangShi);
  				$('#shouhuoDZ').html(shouhuoDZ);
  			});
  			$.getJSON("getCaiGouMingXi?caigoudanID="+caigoudanID,function(result){ 			
  				$.each(result, function(i, data){
  					$.each(data,function(j,rows){
  						$("#fahuoshangpin").append("<li>"+
							"<div style=\"height:104px;padding:20px;border-bottom:1px ridge\">"+
								"<a href=\"#\"><font size=\"3\">"+rows.ShangPinMingCheng+"</font></a><br>"+								
								"<font>商家编码："+rows.ShangJiaBianMa+"</font><br/>"+
								"<font size=\"3\" style=\"margin-left:300px;\">"+rows.DanJia+
								"</font><font size=\"3\">×"+rows.ShuLiang+"</font>"+
							"</div></li>"						
  						);  						
  					});
  				}); 				
  			});
  			$('#winfirst').window('open');   			
  		} 	   
  	   
       function returnBtnColumn(field,rowData,rowIndex){
			return "<button style='width:60px;height:30px;background: #4E80EE;' onclick='QueRenClick("+field+","+rowIndex+")'><font color='#ffffff'>确认</font></button>";
		}
		
		function QueRenClick(field,rowIndex){
			$('#dgWuLiu').datagrid('endEdit',rowIndex);//结束编辑
			rows = $('#dgWuLiu').datagrid('getRows');
			var yunDanHao = rows[0].yundanHM;
			var beiZhu = rows[0].beizhu;
			var wuLiuID = rows[0].gongsimingcheng;
			var myBaiWang = $('#MyBeiWang').val();
			var caigoudanId = CaiGouDanID;
			$.getJSON("CaiGouDanFaHuo?caigoudanId="+caigoudanId+"&yunDanHao="+yunDanHao+"&beiZhu="+beiZhu+
				"&wuLiuID="+wuLiuID+"&myBaiWang="+myBaiWang,function(result){
				if(result="OK"){
					$('#dgWuLiu').datagrid('beginEdit',rowIndex);//开始编辑
					$('#winfirst').window('close');
					
		    		alert("发货成功！！");
				}
				else{
					alert("发货失败！！");
				}
			});					
		}   	   
  	   
  	</script>	
</head>
  
  <body>
    <!-- 采购单发货 -->
			<div class="easyui-window" id="mycaigoudan" data-options="inline:true,fit:true,modal:true,collapsible:false,minimizable:false,
    		maximizable:false,resizable:false,closable:false" title="　" >
				<div style="width:100%;"><font style="color:rgb(153, 148, 148)">采购单管理　>　我的采购单</font></div>	
				<div class="easyui-tabs" style="width:auto;height:680px;padding-top:10px;" id="myCaiGouDan">
					<div title="所有采购单">
						<div id="SelectTiaoJian" style="width:auto;height:100px;margin:10px 0 10px 0;padding:10px 0 0 20px;border:1px ridge">
							<div>
								<label>成交时间：</label>
	 							<input size="13" id="J_BeginTime" class="easyui-datebox" data-options="formatter:myformatter,parser:myparser">
	 							至 &nbsp;
	 							<input size="13" id="J_EndTime" class="easyui-datebox" data-options="formatter:myformatter,parser:myparser">
	 							
	 							<label style="margin-left:50px;">采购单编号：</label>
	 							<input type="text" size="20" id="J_ProcureNumber" class="trade-time" name="bizProcureNumber" style="margin-right:50px">
	 							
	 							<label>支付类型：</label>
	 							<input class="easyui-combobox" id="J_PayType" name="J_PayType"
	 								data-options="url:'getPayType',valueField:'J_PayTypeID',textField:'J_PayType'">
 							</div>
 							<div style="margin-top:8px">
 							<label>分销商：</label>
 							<input type="text" size="39" id="J_SalesMan" class="trade-time" name="bizSalesMan" style="margin-right:50px">
 							
 							<label>订单编号：</label>
 							<input type="text" size="22" id="J_OrderNumber" class="trade-time" name="bizOrderNumber" style="margin-right:50px">
 							
 							<label>采购单类型：</label>
 							<input class="easyui-combobox" id="J_ProcureType" name="J_ProcureType"
 								data-options="url:'getProcureType',valueField:'J_ProcureTypeID',textField:'J_ProcureType'">
 							
 							<button style="width:60px; margin-left:100px" onclick="selectCaiGouDan()">搜索</button>
 							</div>
 							<div style="margin-top:8px">
 							<label>产品名称：</label>
 							<input type="text" size="37" id="J_ProductName" class="trade-time" name="bizProductName" style="margin-right:50px">
 							
 							<label>收货人：</label>
 							<input type="text" size="25" id="J_ShouHuoRen" class="trade-time" name="bizShouHuoRen">
 							</div>
						</div>
						<div style="margin-bottom:15px">
							<button style="width:60px;margin-right:5px;">发货</button>
							<font>去淘宝物流平台批量打印发货单和运单　<a href="#">请点击这里</a></font>
							<button style="width:100px;margin-left:400px;">导出物流单</button>
							<button style="width:100px;margin-left:5px;">导出采购单</button>	
						</div>
						<div>		
						<ul>
							<li>
								<input type="checkbox" id="checkjingxiao" style="margin-left:20px"><font size="2">全选</font>
								<font size="2" style="padding-left:30px">商品</font>
								<font size="2" style="padding-left:80px">零售价(元)</font>
								<font size="2" style="padding-left:60px">采购价(元)</font>	
								<font size="2" style="padding-left:70px">数量</font>	
								<font size="2" style="padding-left:70px">操作</font>	
								<font size="2" style="padding-left:60px">分销商</font>	
								<font size="2" style="padding-left:100px">实收款(元)</font>	
								<font size="2" style="padding-left:80px">采购状态/操作</font>								
							</li>
						</ul>	
						</div>	
						<div>
						<ul id="caigoudan">					
							
						</ul>
						</div>										
					</div>
					
					<div title="等待发货">					
					</div>
					<div title="待确认收款">					
					</div>
					<div title="退款中">					
					</div>
					<div title="等待付款">									
					</div>
					<div title="已发货">					
					</div>
					<div title="采购成功">									
					</div>					
					<div title="已关闭">					
					</div>					
					<div title="维权中">					
					</div>
				</div>			
			</div>
			<!-- 采购单发货 End -->	
			
			<!-- 发货 -->
			<div class="easyui-window" id="winfirst" data-options="inline:true,fit:true,title:' ',maximizable:false,closable:false,resizable:false,collapsible:false,minimizable:false,draggable:false">
				<div class="easyui-layout" fit="true">

					<div region="north" style="height:220px;width:1000px;">

						<div class="easyui-layout" fit="true">						
							<div region="north" style="height:50px;background:#E2F3FF;padding:10px;">
								<font size="3"><strong>采购单编号：</strong></font><font size="2" id="caigoubianhao"></font>
								<font size="3" style="margin-left:20px"><strong>创建时间：</strong></font><font id="chuangjianT"></font>
								<font style="background-color:red;color:#fff;margin-left:5px" id="fenxiaofs"></font>
							</div>
							
							<div region="center">
								<ul id="fahuoshangpin">
								
								</ul>					     
							</div>
							
							<div region="east" style="width:700px;padding:10px;">
							    <table>
							        <tr>
							           <td><font>买家选择：</font></td>
							           <td><font>快递</font></td>
							        </tr>
							        <tr>
							           <td><br></td>
							        </tr>
							        <tr>
							           <td><font>我的备忘：</font></td>
							           <td><textarea id="MyBeiWang" style="height:50px;width:390px;"></textarea></td>
							        </tr>
							    </table>
							</div>
							
							<div region="south" style="height:30px;">
							   <div>
							     <font>买家收货信息：</font><font id="shouhuoDZ"></font>
							     <a class="easyui-linkbutton" plain="true" style="margin-right:10px;float:right">修改收货信息</a>
							   </div>
							    
							</div>
							
						</div>

					</div>

					<div region="center" data-options="border:false">
					   <div style="margin-top:20px;">
					      <font size="3" color="#FDB04D"><strong>第二步 </strong></font>
					       <font size="3"><strong>确认发货/退货信息</strong></font>
					   </div>
					   <div style="height:100px;border:1px solid;background:#E2F3FF;margin-top:20px;">
							<div style="margin:10px;">
								<font>我的发货信息：</font><font id="myFaDiZhi"></font>
								<a class="easyui-linkbutton" plain="true" style="margin-right:10px;float:right">修改我的发货信息</a>
							</div>
							<div style="margin:10px;">
								<font>我的退货信息：</font><font id="myTuiDiZhi"></font>
								<a class="easyui-linkbutton" plain="true" style="margin-right:10px;float:right">修改我的退货信息</a>
							</div>
							<div style="margin:10px;background:#FDFFD5;width:600px;height:25px;">
							    <img src="img/dengpao.png"></img><font>请准确选中退货信息避免因信息不准导致您的商品发生损毁或灭失风险。</font>
							</div>							
						</div>
					</div>

					<div region="south" style="height:200px;width:1000px;" data-options="border:false">
					   <div style="margin-top:10px;">
					      <font size="3" color="#FDB04D"><strong>第三步 </strong></font>
					       <font size="3"><strong>物流服务</strong></font>
					   </div>
						<div class="easyui-tabs" plain="true" fit="true" style="padding-top:10px;">
							<div title="限时物流" style="padding:10px">
								<ul>
									<li>complete framework for HTML5 web page.</li>
									<li>easyui save your time and scales while developing your
										products.</li>
									<li>easyui is very easy but powerful.</li>
								</ul>
							</div>
							<div title="在线下单" style="padding:10px">
							asdfsdafsdf
							</div>
							<div title="自己联系物流" style="padding:10px" selected="true">
							   <div style="background:#FDFFD5;width:300px;height:25px;">
							    <img src="img/dengpao.png"></img><font>马上去设置默认物流公司，方便您发货！</font>
							   </div>
							   <div>
							     <table id="dgWuLiu" class="easyui-datagrid" fitColumns="true">
							         <thead>
							            <tr>
							              <th data-options="field:'gongsimingcheng',width:200,align:'center',
							              formatter:function(value,row){
							                   return row.yundanHM;
							              },
							              editor:{
							                   type:'combobox',
							                   options:{
							                       valueField:'wuLiuId',
							                       textField:'wuLiuGongSi',
							                       url:'getWuLiuGongSi'
							                   }
							                   
							              }">公司名称</th>
							              <th data-options="field:'yundanHM',width:200,align:'center',editor:'text'">运单号码</th>
							              <th data-options="field:'beizhu',width:200,align:'center',editor:'text'">备注</th>
							              <th data-options="field:'caozuo',width:200,align:'center',formatter:returnBtnColumn">操作</th>
							            </tr>
							         </thead>
							     </table>
							   </div>
							</div>
							<div title="淘宝物流" style="padding:10px">
							This is the help content.
							</div>
							<div title="无需物流" style="padding:10px">
							This is the help content.
							</div>
							
						</div>

					</div>

				</div>
			</div>
			<!-- 发货 End -->
  </body>
</html>
