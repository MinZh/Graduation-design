<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'GongYingShang.jsp' starting page</title>
    
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
	
	<script type="text/javascript" src="../jQuery/jquery-1.10.2.js"></script> 
  	<script type="text/javascript" src="../jQuery/jquery-ui-1.10.4.custom/development-bundle/ui/jquery.ui.core.js"></script>
  	<script type="text/javascript" src="../jQuery/jquery-ui-1.10.4.custom/development-bundle/ui/jquery.ui.widget.js"></script>
  	<script type="text/javascript" src="../jQuery/jquery-ui-1.10.4.custom/development-bundle/ui/jquery.ui.accordion.js"></script>
  	<script type="text/javascript" src="../jQuery/CJL.0.1.min.js"></script>
  	<script type="text/javascript" src="../jQuery/ImageZoom.js"></script>
  	<script type="text/javascript" src="../jQuery/jquery.scrollTo.js"></script>
  
  	<link rel="stylesheet" href="../jQuery/jquery-ui-1.10.4.custom/development-bundle/themes/base/jquery.ui.all.css" type="text/css"></link>
  	<link rel="stylesheet" href="../jQuery/jquery-ui-1.10.4.custom/development-bundle/demos/demos.css" type="text/css"></link>
  	

  	<link rel="stylesheet" href="css/PiLiangDaoRuCss.css" type="text/css"></link>
 	
  	<script type="text/javascript">
  		$(document).ready(function(){
  		

  		   
           $('#winshezhi').window('close');
           $('#winwancheng').window('close');
           $('#winok').window('close');
           $('#dianpu').window('close');
               
           $('#dgDianPu').datagrid({
  				url:'getDianPu'
  		   });
  		   
  		   
           $('#dianpuLeiMu').combobox('setValue',1);
  		   $('#shangPinZT').combobox('setValue',1);
  		   $('#fenxiaofangshi').combobox('setValue',1);
  		   $('#chanpinxian').combobox('setValue',5);
  		   $('#winshezhi').window('refresh');
  		   $('#winshezhi').window('refresh');
  		   
  		   
  		});
  		
  		
  		/*动态添加商铺*/
  		var myindex=0;
  		
  		function opColumn(field,rowData,rowIndex){
			return "<a href='javascript:removeClient()'>删除</a>";
		}
		
		
		function removeClient(){
		       $('#dgShop').datagrid('deleteRow', myindex);
		}
  		
  		var editIndex = undefined;
  		
		function endEditing(){
			if (editIndex == undefined){return true}
			if ($('#dgShop').datagrid('validateRow', editIndex)){
				var ed = $('#dgShop').datagrid('getEditor', {index:editIndex,field:'productid'});
				var productname = $(ed.target).combobox('getText');
				$('#dgShop').datagrid('getRows')[editIndex]['productname'] = productname;
				$('#dgShop').datagrid('endEdit', editIndex);
				editIndex = undefined;
				return true;
			} else {
				return false;
			}
		}
		
		function onClickRow(index){
		     myindex=index;
		}
		
		function append(){
		        $('#dianpu').window('open');
				
		}
		
		var ShuLiang=0;
		var MySelectId="";
		var SelPrice="";
		var SelShuLiang="";
		var SelZhuangTai="";
		var xiaoxi="";
		
		
		function daoru(){
		
		    MySelectId="";
		    SelPrice="";
		    SelShuLiang="";
		    SelZhuangTai="";
		    
		    var myrows=$('#dgBaoBei').datagrid('getSelections');
		    
		    if(myrows.length>0){
		        for(var i=0;i<myrows.length;i++){
		            ShuLiang=ShuLiang+myrows[i].shuLiang;
		            MySelectId=MySelectId+myrows[i].shangPinId+"<<";
		            SelPrice=SelPrice+myrows[i].dangQianJiaGe+"<<";
		            SelShuLiang=SelShuLiang+myrows[i].shuLiang+"<<";
		            SelZhuangTai=SelZhuangTai+myrows[i].daoRuZhuangTai+"<<";
		            if(myrows[i].daoRuZhuangTai.trim()=="已导入"){
		                 xiaoxi="CuoWu";
		                 break;
		            }
		        }
		        
		        if(xiaoxi=="CuoWu"){
		             $.messager.alert('导入失败','请选择未导入的产品！！','warning');
		             xiaoxi="";
		             ShuLiang=0;
		             MySelectId="";
		             SelPrice="";
		             SelShuLiang="";
		        }
		        else{
		            $('#sl').html(ShuLiang);
                    $('#sl2').html(ShuLiang);
                    $('#sl3').html(ShuLiang);
                    $('#winshezhi').window('open');
		            $('#winfirst').window('close');
		            ShuLiang=0;
		        }
// 		        console.info(ShuLiang);
//                 alert(MySelectId+"<>"+SelPrice+"<>"+SelShuLiang+SelZhuangTai);
               
                
//                 var url="getShuLiang?ShuLiang="+ShuLiang;
//                 $.getJSON(url,function(result){
                     
//                 });
                

		    }
		    else{
		        $.messager.alert('导入失败','请选择需要导入的产品！！','warning');
		    }
		    
		    
		    
		}
		
		function xiaYiBu(){
		    $('#winwancheng').window('open');
		    var fxfs=$('#fenxiaofangshi').combobox('getText');
		    var cpx=$('#chanpinxian').combobox('getText');
		    $('#cpx').html(cpx);
		    $('#fxfs').html(fxfs);
		    
		}
		
		function queding(){
		
		   var fxfsId=$('#fenxiaofangshi').combobox('getValue');
		   var cpxId=$('#chanpinxian').combobox('getValue');
// 		   alert(fxfsId+"yyyy"+cpxId);
           var url1="DaoRuShangPin?MySelectId="+MySelectId+"&SelPrice="+SelPrice+"&SelShuLiang="+SelShuLiang+"&fxfsId="+fxfsId+"&cpxId="+cpxId;
		   $.getJSON(url1,function(result){
		     if(result=="OK"){
		         $('#winok').window('open');
		         $('#winshezhi').window('close');
		         $('#winwancheng').window('close');
		     }
		     else{
		         alert("导入失败!");
		     }

		   });

		   
		  
		   
		   
		}
		
		function DianPuDblClick(rowIndex,rowData){
		
	        var huiyuanMC=rowData.DianZhuNiCheng;
	        var dianpuMC=rowData.DianPuMingCheng;
	        var DianPuID=rowData.DianPuID;
		    $('#dgShop').datagrid('appendRow',{DianPuID:DianPuID,HuiYuanMC:huiyuanMC,DianPuMC:dianpuMC});
		    var rows=$('#dgShop').datagrid('getRows').length-1;
		    $('#dgShop').datagrid('selectRow',rows);
		    
// 		    editIndex = $('#dgShop').datagrid('getRows').length-1;
// 			$('#dgShop').datagrid('selectRow', editIndex).datagrid('beginEdit', editIndex);
		}
		
		function GuanBiDP(){
		     $('#dianpu').window('close');
		}
		
		function ChaXun(){
		     var mydianpuId="";
		     var myrows=$('#dgShop').datagrid('getSelections');
		     if(myrows.length>0){
		          for(var i=0;i<myrows.length;i++){
		              mydianpuId=mydianpuId+myrows[i].DianPuID+"<<";
		          }
		          var DpLeimuId=$('#dianpuLeiMu').combobox('getValue');
		          var SpZhuangTai=$('#shangPinZT').combobox('getText');
		          var SpMingCheng=$('#GuanJianCi').val();
		          var url1="getShangPin?SpMingCheng="+SpMingCheng+"&DpLeimuId="+DpLeimuId+"&mydianpuId="+mydianpuId+"&SpZhuangTai="+SpZhuangTai;
		          $('#dgBaoBei').datagrid({
		          url:url1
		          });
		     }
		     else{
		        alert("请选择店铺！");
		     }
		     
		     
// 		     alert("LM"+DpLeimuId+"ZT"+SpZhuangTaiId+"MC"+SpMingCheng);
		     
		}
		
		function FanHui(){
		    $('#winfirst').window('open');
		    $('#winshezhi').window('close');
		    
		    
		}
		
		function chongxin(){
		   $('#winwancheng').window('close');
		}
		
		function JiXuDaoRu(){
		   parent.openfrmModules('PiLiangFaBu/GongYingShang.jsp');
		   $('#winok').window('close');
		}

  		
  		
  		/*动态添加商铺 End*/
  		
  		
  	</script>  	

  </head>
  
  <body>
		<!-- Window窗体一              选择宝贝-->
			<div class="easyui-window" id="winfirst" data-options="inline:true,fit:true,title:' ',maximizable:false,closable:false,resizable:false,collapsible:false,minimizable:false,draggable:false" >
				<div style="width:100%;margin-top:10px;"><font style="color:rgb(153, 148, 148)">产品管理　>　批量导入新产品</font></div>
				<div style="padding-top:20px"><img src="img/biaoti.png"></img></div>
				<div style="padding-top:20px"><font size="2">您要将哪家店铺的产品导入分销平台：</font></div>
				
				
				<div class="easyui-layout" style="width:445px;height:150px;">
				   <div region="center" data-options="border:false" id="ce">
				      <table id="dgShop" class="easyui-datagrid" fit="true"
			data-options="
				iconCls: 'icon-edit',
				toolbar: '#tb',
				border:false,
				onClickRow: onClickRow
			">
		<thead>
			<tr>
<!-- 				<th data-options="field:'status',width:30,align:'center',editor:{type:'checkbox',options:{on:'P',off:''}}"></th> -->
                <th data-options="field:'ck1',checkbox:true"></th>
<!--                 <th data-options="field:'DianPuID',width:20,align:'center'">店铺ID</th> -->
				<th data-options="field:'HuiYuanMC',align:'center',width:120">会员名</th>
				<th data-options="field:'DianPuMC',align:'center',width:120">店铺名称</th>
				<th data-options="field:'cz',align:'center',width:50,formatter:opColumn" ></th>
			</tr>
		</thead>
	</table>
	                
				   </div>
				   <div region="east" style="width:120px;height:20px;padding-top:25px" data-options="border:false">
		                <a href="javascript:void(0)" style="margin-left:10px" class="easyui-linkbutton" data-options="iconCls:'icon-add'" onclick="append()">添加店铺</a>
				        
				   </div>
				</div>
				

		  <div style="height:30px;width:900px;background: #EDF5FF;">
		    <table style="margin-left:20px;">
		      <tr>
		        <td><font size="2">所属店铺类目：</font><input id="dianpuLeiMu" class="easyui-combobox" name="dianpuLeiMu" style="width:100px;" 
		                                   data-options="url:'getDianPuLeiBie',valueField:'dianPuLeiBieId',textField:'dianPuLeiBie'">       
		        </td>
		        <td>　　　　　　</td>
		        <td><font size="2">商品状态：</font><input id="shangPinZT" class="easyui-combobox" name="shangPinZT" style="width:100px;" 
		                                   data-options="url:'getShangPinZhuangTai',valueField:'shangPinZhuangTaiId',textField:'shangPinZhuangTai'">
		        </td>
		        <td>　　　　　　</td>
		         <td><font size="2">关键词：</font><input style="height:25px;width:100px;" id="GuanJianCi" type="text"></td>
		        <td>　　　　　　</td>
		        <td><a class="easyui-linkbutton" onclick="ChaXun()">查询</a></td>
		      </tr>
		    </table>
		  </div>
		  
		  <div style="height:30px;width:100px;margin-top:20px;">
		    <a class="easyui-linkbutton" onclick="daoru()" >导入</a>
		  </div>
		  
		  <div>
		    <table id="dgBaoBei" class="easyui-datagrid" style="width:850px;height:250px"
			data-options="border:false,scrolling:true,idField:'shangPinId'">
		<thead>
			<tr>
				<th data-options="field:'ck',checkbox:true"></th>
				<th data-options="field:'shangPinMingCheng',width:280,align:'center'">宝贝</th>
				<th data-options="field:'dangQianJiaGe',width:100,align:'center'">当前价格（元）</th>
				<th data-options="field:'shuLiang',width:80,align:'center'">数量</th>
				<th data-options="field:'baoBeiZhuangTai',width:80,align:'center'">宝贝状态</th>
				<th data-options="field:'daoRuZhuangTai',width:80,align:'center'">导入状态</th>
				<th data-options="field:'gengXinShiJian',width:140,align:'center'">更新时间</th>
			</tr>
		</thead>
	</table>
		  </div>

				
			</div>
			
		<!-- Window窗体一End  -->
		
		
		



<!-- --------------------------------------------------------------------------------------------------------------------------------------------------------- -->		
		
		
		
		<!-- 添加店铺    DataGrid -->
		
		
		<div id="dianpu" class="easyui-window" data-options="title:'请选择店铺',
            inline:true,modal:true,maximizable:false,resizable:false,collapsible:false,minimizable:false,draggable:false" 
		    style="width:350px;height:200px;">
		    
           <div style="width:305px;height:120px;">
		    <table id="dgDianPu" class="easyui-datagrid" fit="true"
			data-options="singleSelect:true,border:false,scrolling:true,idField:'DianPuID',onDblClickRow:DianPuDblClick">
			  <thead>
			    <tr>
<!-- 				<th data-options="field:'DianPuID',width:20,align:'center',hidden:true">店铺ID</th> -->
				<th data-options="field:'DianZhuNiCheng',width:100,align:'center'">店主</th>
				<th data-options="field:'DianPuMingCheng',width:100,align:'center'">店铺名称</th>
				<th data-options="field:'DianPuLeiBie',width:100,align:'center'">店铺类别</th>
			    </tr>
		      </thead>
		
	        </table>
		  </div>
		  <div style="padding-left:130px;"><a class="easyui-linkbutton" onclick="GuanBiDP()">OK</a></div>
		</div>
		
		
		
		<!-- 添加店铺    DataGrid -->
		 
<!-- --------------------------------------------------------------------------------------------------------------------------------------------------------- -->		 
		
		<!-- Window窗体二 -->
		
		<div class="easyui-window" id="winshezhi" data-options="title:' ',inline:true,fit:true,maximizable:false,closable:false,resizable:false,collapsible:false,minimizable:false,draggable:false" >
		   <div style="width:100%;margin-top:10px;"><font style="color:rgb(153, 148, 148)">产品管理　>　批量导入新产品</font></div>
		   <div style="padding-top:20px"><img src="img/bt2.png"></img></div>
		   <div style="padding-top:20px"></div>
		   <div class="easyui-layout" style="height:180px;width:750px;">
		      <div region="center" style="padding-top:30px;padding-left:20px;">
		         <font size="3"><strong>您已经选择了　<font id="sl" color="#FDB04D"></font>　件产品准备导入分销平台</strong></font>
		         <br><br><br>
		         <font size="2">请选择这些产品的分销方式：</font><font color="#FF5D02"><strong>*</strong></font><input id="fenxiaofangshi" class="easyui-combobox" style="width:100px;" data-options="url:'getFenXiaoFangShi2',valueField:'fenXiaoFangShiId',textField:'fenXiaoFangShi'">
		         <br><br>
		         <font size="2">选择这些产品准备放入的产品线：</font><font color="#FF5D02"><strong>*</strong></font>
		         <input id="chanpinxian" class="easyui-combobox" style="width:100px;" data-options="url:'getChanPinXian2',valueField:'chanPinXianId',textField:'chanPinXian'">
		         <a class="easyui-linkbutton" data-options="plain:true" style="color:#0A50E5;">创建新的产品线</a>
		      </div>
		   </div>
		   <div style="height:50px;width:450px;padding-left:300px;padding-top:20px;">
		     <a class="easyui-linkbutton" data-options="plain:true" style="color:#0A50E5;" onclick="FanHui()">返回上一步</a>
		     <a class="easyui-linkbutton" onclick="xiaYiBu()">完成设置，下一步</a>
		   </div>
		   
		 </div>
		
		
		<!-- Window窗体二End -->
		
		

<!-- --------------------------------------------------------------------------------------------------------------------------------------------------------- -->

		
		
		<!-- Window窗体三 -->
		
		
		<div id="winwancheng" class="easyui-window" data-options="title:' ',inline:true,modal:true,maximizable:false,resizable:false,collapsible:false,minimizable:false,draggable:false" style="width:500px;height:400px;padding:10px">
			<div style="padding-left:20px;">
			     <font size="3"><strong>确定导入分销平台？</strong></font>
		         <br><br>
		         <font size="2">您选择的　<font id="sl2" size="3" color="#FDB04D"></font>　件产品将被批量设置为：</font>
		         <br><br>
		         <font size="2">产品线：<font id="cpx" size="2"></font></font>
		         <br><br>
		         <font size="2">分销方式：<font id="fxfs" size="2"></font></font>
		         <br>
		         <div></div>
		         <div style="width:400px;height:80px;background: #EDF5FF;padding-top:20px;border:1px solid;border-color:#0A50E5">
		         
		            <font style="padding-left:20px;" size="2"><strong>零售价区间：<font size="2.8" color="#FF5C00">80% ~ 100%</font></strong></font>
		            <br>
		            <br>
		            <font style="padding-left:20px;" size="2"><strong>代销采购价百分比：<font size="2.8" color="#FF5C00">60%</font></strong></font>
		         </div>
		         <br>
		         <div>
		          <div><img src="img/dengpao.png"></img><font>产品导入后需要设置零售价、采购价、折扣方案以及分销模式等</font></div>
	             </div>
	             <div style="padding-top:20px">
	               <a class="easyui-linkbutton" onclick="queding()">确定导入</a><a class="easyui-linkbutton" data-options="plain:true" style="color:#0A50E5;" onclick="chongxin()">返回重新设置</a>
	             </div>
		      </div>
		</div>
		
		
		
		
		<!-- Window窗体三End -->
		
		
		
<!-- --------------------------------------------------------------------------------------------------------------------------------------------------------- -->		
		
		
		
		<!-- Window窗体四 -->
		
		<div class="easyui-window" id="winok" data-options="inline:true,fit:true,title:' ',maximizable:false,closable:false,resizable:false,collapsible:false,minimizable:false,draggable:false" >
		   <div style="width:100%;margin-top:10px;"><font style="color:rgb(153, 148, 148)">产品管理　>　批量导入新产品</font></div>
		   <div style="padding-top:20px"><img src="img/bt3.png"></img></div>
		   <div style="padding-top:20px;"></div>
		   <div style="width:820px;height:80px;background: #EDF5FF;border:1px solid;border-color:#53B85B;">
		      <div class="easyui-layout" fit="true" data-options="border:false">
		         <div region="west" style="width:50px;background: #E8FFE8;" data-options="border:false">
		            <div style="padding-top:25px;padding-left:10px;">
		               <img src="img/dui.png"></img>
		            </div>
		            
		         </div>
		         <div region="center" style="padding-top:16px;background: #E8FFE8;" data-options="border:false">
		            <font size="3"><strong>恭喜您，成功导入<font id="sl3" color="#FDB04D"></font>件产品！</strong>
		            <font size="2">由于价格为系统自动折算导入，请务必核对采购价与零售价区间，再铺货。</font>
		            <br>
		            <font size="2">您可以：继续<a class="easyui-linkbutton" data-options="plain:true" style="color:#0A50E5;" onclick="JiXuDaoRu()">批量导入产品</a>，回到
		            <a class="easyui-linkbutton" data-options="plain:true" style="color:#0A50E5;">我的产品库</a>。 
		            </font>
		            </font>
		         </div>
		      </div>
		            
		            
		   </div>
		   
		</div>
		
		<!-- Window窗体四End -->
		
  </body>
</html>
