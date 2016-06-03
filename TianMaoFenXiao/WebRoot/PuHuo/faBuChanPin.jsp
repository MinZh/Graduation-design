<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'faBuChanPin.jsp' starting page</title>
    
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
  	<link rel="stylesheet" href="css/ZhuJieMianCss.css" type="text/css"></link>
  	<style type="text/css">
  		.tdr{
  			text-align:right;
  		}
  	</style>
  	<script type="text/javascript">
  		$(document).ready(function(){
 			$('#editZiLiao').window('close');
 			$('#faBuChengGong').window('close');
 			$('#cboLeiMu').combobox({url:'getLeiMu'});
 			$('#cboLeiMu').combobox('setValue',1);
 			$("#categoryTree").tree("expandAll");
//  			var leiMuId=$('#cboLeiMu').combobox('getValue');
//  			  	var url1="getChanPinZiLiao?leiMuId="+leiMuId;
// 		          $('#chanpinxinxi').datagrid({
// 		          url:url1
// 		          });
 			$('#chanpinxinxi').datagrid({
  				url:'getChanPinZiLiao',
  				onSelect:function(){
  					var id = $('#chanpinxinxi').datagrid('getSelected').shangPinId;
  					$('#shangPinId').val(id);
  				}
  			});

 		});
 		function ChaXun(){
		    var leiMuId=$('#cboLeiMu').combobox('getValue');
		     var url1="getShangPin?leiMuId="+leiMuId;
		          $('#chanpinxinxi').datagrid({
		          url:url1
		          });
		     }
		    
 		var shangpingMC;
 		function reloadDGChanPinXinXi(){
  			$('#chanpinxinxi').datagrid('reload');
  		}
 		function openfaBuChanPin(){
 			$('#faBuChanPin').window('open');
 		}

  		function editXiaYiBu(){
  		    $('#faBuChanPin').window('close');
 			$('#editZiLiao').window('open');
         if(shangPinId==null){
            $('#faBuChanPin').window('open');
             $('#editZiLiao').window('close');
            alert("您还未选择商品,请选择!!");
         }
 			
  		}
  		
  		function queDing(){
  		    $('#faBuChanPin').window('close');
 			$('#editZiLiao').window('close');
 			$('#faBuChengGong').window('open');
//  		   var shangPinMingCheng=$('#shangPinMingCheng').val();
           var shangPinBiaoTi=$('#shangPinBiaoTi').val();
  	   	   var chanPinXianId=$('#chanPinXianId').combobox('getValue');
  	       var fenXiaoFangShiId=$('#fenXiaoFangShiId').combobox('getValue');
  	       var shiChangJiaGe=$('#shiChangJiaGe').val();
           var lingShouQuJian1=$('#lingShouQuJian1').val();
  	       var lingShouQuJian2=$('#lingShouQuJian2').val();
  	       var jingXiaoJiaGe=$('#jingXiaoJiaGe').val();
  	       var fenXiaoJiaGe=$('#fenXiaoJiaGe').val();
  	       var shangJiaBianMa=$('#shangJiaBianMa').val();
//   	       var chanPinKuCun=$('#chanPinKuCun').val();
  	       var jingJieKuCun=$('#jingJieKuCun').val();
//   	       alert(jingXiaoJiaGe);
  	       var url="editChanPin?shangPinId="+shangPinId+"&kuCunId="+kuCunId
                     +"&shangPinBiaoTi="+shangPinBiaoTi+"&chanPinXianId="+chanPinXianId
  	                 +"&fenXiaoFangShiId="+fenXiaoFangShiId+"&shiChangJiaGe="+shiChangJiaGe
                     +"&lingShouQuJian1="+lingShouQuJian1+"&lingShouQuJian2="+lingShouQuJian2
                     + "&fenXiaoJiaGe="+fenXiaoJiaGe+"&shangJiaBianMa="+shangJiaBianMa
                     +"&jingJieKuCun="+jingJieKuCun +"&jingXiaoJiaGe="+jingXiaoJiaGe+"&chanPinKuCun="+chanPinKuCun;
                     $.getJSON(url,function(result){
                     if(result == 'OK'){
  					alert("发布成功!");
  				}
         });
           $('#chanpinxinxi').datagrid('reload');
  		}
  		function editKuCun(){
  		    $('#faBuChanPin').window('close');
 			$('#editZiLiao').window('close');
 			$('#faBuChengGong').window('close');
 			$('#woDeChanPinKu').window('open');
  		
  		}
  		
  		var curIndex;
  		var shangPinId;	
  		var kuCunId;
  		var chanPinKuCun;
		function danji(rowIndex, rowData){
		  shangPinId=rowData.shangPinId;
		  kuCunId=rowData.kuCunId;
		  shangpingMC=rowData.shangPinMingCheng;
	      $("#spmc").html(shangpingMC);
	      $("#spmc1").html(shangpingMC);
	      shuLiang=rowData.shuLiang;
	      chanPinKuCun=shuLiang;
	      $("#chanPinKuCun").html(shuLiang);
			curIndex = rowIndex;
		}
		function jiage(){
		   var shiChangJiaGe=$('#shiChangJiaGe').val();
		   var lingShouQuJian1=shiChangJiaGe*0.8;  
		   var lingShouQuJian2=shiChangJiaGe*1;
		   var jingXiaoJiaGe=shiChangJiaGe*0.8;
		   var fenXiaoJiaGe=shiChangJiaGe*0.8;
		   $('#lingShouQuJian1').val(lingShouQuJian1);
		   $('#lingShouQuJian2').val(lingShouQuJian2);
		   $('#jingXiaoJiaGe').val(jingXiaoJiaGe);
		   $('#fenXiaoJiaGe').val(fenXiaoJiaGe);
		}
		
  	function edit(shangPinId,rowIndex){
           $('#faBuChengGong').val(shangPinId);
     
 }
//        function categoryOnClick(){
//   		 var id=$("#categoryTree").tree("getSelected").id;
//   		 var url1="getShangPinByShangPinID?shangPinId="+id;
//   		    $('#chanpinxinxi').datagrid({
//   		      url:url1
//   		    });  
    function categoryOnClick(node){//双击树节点查询
         var lvl = node.attributes.lvl;
         var id= node.id;
//   		 var id=$("#categoryTree").tree("getSelected").id;
  		 var url1="getShangPinByShangPinID?shangPinId="+id+"&lvl="+lvl;
  		    $('#chanpinxinxi').datagrid({
  		      url:url1
  		    });   
  		} 
//   		}
  	</script>
  	
  </head>
  
  <body>
		
	  <!-- ---------------------------------------------选择类目window1--------------------------------------------- -->
        <div id="faBuChanPin"  class="easyui-window" title=""  data-options="fit:true,inline:true,draggable:false,resizable:false,
    	  collapsible:false,minimizable:false,maximizable:false">
    	  <div class="easyui-layout" style="width:auto;height:620px;">
    	     <div data-options="region:'north',border:false" style="width:1000px;height:150px;" >
	           <div  style="margin-left:20px;margin-top:20px;"><font color="gray" size="2" ><strong>产品管理>>单个发布产品</strong></strong></font></div>
	           <img style="margin-left:20px;margin-top:20px;" src="img/biaoti2.png"></img>
  	        <div  style="width:600px;height:30px;overflow:hidden;margin-top:5px;font-size:14px;margin-left:20px;margin-top:20px;">
                                                       您经常选择的项目:<input class="easyui-combobox" id="cboLeiMu" name="leiMuMingCheng"
                          data-options="valueField:'leiMuId',textField:'leiMuMingCheng'" style="width:200px;" onchange="ChaXun()"></input>  
            </div>   
  	    </div>
  	    
  	     <div data-options="region:'center',split:true,border:false" style="width:1000px;height:650px;" >
             <input type="hidden" id="shangPinId" value="0" />
           <div class="easyui-layout" style="width:1000px;height:400px;">
           <div data-options="region:'west',split:true" style="border:2px solid #ccc;width:300px;margin-left:5px;margin-left:20px;">
                    
    	                    <ul id="categoryTree" class="easyui-tree" style="margin-top:10px;margin-left:5px;" data-options="url:'getShangPinAll',animate:true,lines:true,onDblClick:categoryOnClick">

    	                  </ul>
                 </div>
           <div  data-options="region:'center',split:true" style="width:auto;height:400px;">

					<table id="chanpinxinxi" class="easyui-datagrid" 
			data-options="rownumbers:true,singleSelect:true,scrolling:true,idField:'shangPinId',onClickRow:danji">

						<thead>
							<tr>
							    <th data-options="field:'ck',checkbox:true">
							    <input type="checkbox" checked onchange="$('#chanpinxinxi').datagrid({selectOnCheck:$(this).is(':checked')})"></th>
							    <th data-options="field:'shangPinMingCheng'" width="100">商品名称</th>
								<th data-options="field:'shangJiaBianMa',align:'center'" width="80">商家编码</th>
								<th data-options="field:'shangPinLeiBie',align:'center'" width="120">商品类别</th>
								<th data-options="field:'dangQianJiaGe',align:'center'" width="80">当前价格</th>
								<th data-options="field:'shuLiang',align:'center'" width="80">数量</th>
								<th data-options="field:'daoRuZhuangTai',align:'center'" width="80">导入状态</th>
								<th data-options="field:'kuCunId',align:'center',hidden:true" width="80" >库存ID</th>
						
							</tr>
						</thead>
					</table>

                 </div>          
  	       </div>

  	          <div  data-options="region:'south',split:true,border:false" >
                  
                    <div data-options="region:'center',split:true">
                      <div  style="width:500px;height:30px;overflow:hidden;margin-top:5px;font-size:14px;margin-left:20px;">您当前选择的是:　<font size="3" color="red" id="spmc"></font></div>
                    </div>
                   <div data-options="region:'south',split:true">
                      <button style="background-color:#07D0D8;width:90px;height:25px;border:1px solid black;margin-left:900px;margin-top:5px;" onclick="editXiaYiBu()"><strong style="font-size:16px;color:#ffffff;" >下一步</strong></button>   
                  </div>
              
           </div>
      </div>
    </div>      
          
  </div>
  
   <!-- ---------------------------------------------选择类目window1--------------------------------------------- -->
   
    <!-- --------------------------------------------填写产品信息window2--------------------------------------------- -->
      
    <div id="editZiLiao"  class="easyui-window"  title=""  data-options="fit:true,inline:true,draggable:false,resizable:false,
    	  collapsible:false,minimizable:false,maximizable:false">
         <div class="easyui-layout" data-options="region:'north',split:true"  >
	           <div  style="margin-left:20px;margin-top:20px;"><font color="gray" size="2" ><strong>产品管理>>单个发布产品</strong></font></div>
	           <img style="margin-left:30px;margin-top:20px;" src="img/biaoti3.png"></img>
  	    </div>
        
       <div data-options="region:'center',split:true" >
              <div style="margin-left:80px;width:800px;height:40px;margin-top:20px;"><font size=3> 产品标题:</font><font color="red" size="3">*</font>
<!--                     <input id="shangPinMingCheng" type="text" name="ShangPinBiao.shangPinMingCheng"   style="margin-left:20px;width:500px;" ></input>　限定在30个字内(60字符)</div> -->
                        <input id="shangPinBiaoTi" type="text" name="ShangPinBiao.shangPinBiaoTi"   style="margin-left:20px;width:500px;" ></input>　限定在30个字内(60字符)</div>
              <div style="margin-left:80px;width:800px;height:40px;"><font size=3> 所属产品线:</font><font color="red" size="3">*　</font><input class="easyui-combobox" id="chanPinXianId" name="chanPinXian"
                          data-options="url:'getChanPinXian2',valueField:'chanPinXianId',textField:'chanPinXian'"></input> </div> 
              <div style="margin-left:80px;width:800px;height:40px;"><font size=3> 分销方式:</font><font color="red" size="3">*　</font><input class="easyui-combobox" id="fenXiaoFangShiId" name="fenXiaoFangShi"
                          data-options="url:'getFenXiaoFangShi2',valueField:'fenXiaoFangShiId',textField:'fenXiaoFangShi'"></input> </div> 
              <div style="margin-left:80px;width:300px;height:40px;"><font size=3>市场价格:</font><font color="red" size="3">*</font><input id="shiChangJiaGe"  type="text" style="margin-left:20px;" onKeyup="jiage()" ></input></div>  
              <div style="margin-left:80px;width:600px;height:40px;"><font size=3>零售价区间:</font><font color="red" size="3">*　</font><input id="lingShouQuJian1" type="text" >　元-<input id="lingShouQuJian2" type="text" style="margin-left:20px;" ></input>　元</div>
              <font color="Gray" style="margin-left:80px;">代销产品下载发布时,系统会限制其价格在此范围内;</font><br><font color="Gray" style="margin-left:80px;">经销商品下载发布时不收此限制,但供应商可在"经销商品销售跟踪"中跟踪其实际销售价格.</font><br><font color="Gray" style="margin-left:80px;">分销商销售商品时价格将会受此区间限制,您可以通过设置销售控制来启动或取消此限制.</font>
              <div style="margin-left:80px;width:600px;height:40px;margin-top:20px;"><font size=3>采购价格:</font><font color="red" size="3">*　</font><a class="fl" style="background-color:#0099FF;color:#ffffff;font-size:6;">代销</a>　普通分销商采购价格<input id="fenXiaoJiaGe" type="text" style="margin-left:20px;" >　元
              <br><font color="red" size="3" style="margin-left:70px;">*　</font><a class="fl" style="background-color:red;color:#ffffff;font-size:6;">经销</a>　普通分销商采购价格<input id="jingXiaoJiaGe" type="text" style="margin-left:20px;" >　元</div>
              <div style="margin-left:80px;width:300px;height:40px;margin-top:20px;"><font size=3>商家编码:</font><font color="red" size="3">*</font><input id="shangJiaBianMa" type="text" style="margin-left:20px;" ></input></div>  
              <div style="margin-left:80px;width:300px;height:40px;"><font size=3>产品库存:</font><font color="red" size="3">*</font><font id="chanPinKuCun" style="margin-left:20px;" ></font>　件</div>
              <div style="margin-left:80px;width:300px;height:40px;"><font size=3>警戒库存:</font><font color="red" size="3">*</font><input id="jingJieKuCun" type="text" style="margin-left:20px;" >　件</div>
      </div>
       <div  data-options="region:'south',split:true">

                 <div data-options="region:'south',split:true">
                    <button style="background-color:#07D0D8;width:90px;height:25px;border:1px solid black;margin-left:900px;margin-top:20px;" onclick="queDing()"><strong style="font-size:16px;color:#ffffff;">确定</strong></button>   
                 </div>
              
           </div>
    
  </div>

    <!-- --------------------------------------------填写产品信息window2--------------------------------------------- -->
     <!-- --------------------------------------------发布成功window3--------------------------------------------- -->
    
<!--     <div id="faBuChengGong"  class="easyui-window" data-options="fit:true,inline:true,draggable:false,resizable:false, -->
<!--     	  collapsible:false,minimizable:false,maximizable:false"> -->
        <div class="easyui-window" id="faBuChengGong" title=""   data-options="inline:true,fit:true,title:' ',maximizable:false,closable:false,resizable:false,collapsible:false,minimizable:false,draggable:false" >
		   <div  style="margin-left:20px;margin-top:20px;"><font color="gray" size="2" ><strong>产品管理>>单个发布产品</strong></font></div>
		   <img style="margin-left:30px;margin-top:20px;" src="img/biaoti6.png"></img>
		   <div style="padding-top:20px;"></div>
		   <div style="width:820px;height:80px;background: #EDF5FF;border:1px solid;border-color:#53B85B;margin-left:30px;margin-top:20px;">
		      <div class="easyui-layout" fit="true" data-options="border:false" >
		         <div region="west" style="width:50px;background: #E8FFE8;" data-options="border:false">
		            <div style="padding-top:25px;padding-left:10px;">
		               <img src="img/dui.png"></img>
		            </div>
		            
		         </div>
		         <div region="center" style="padding-top:16px;background: #E8FFE8;margin-left:20px;" data-options="border:false">
		            <font size="3"><strong>恭喜您，成功导入<font id="spmc1" color="#FDB04D"></font>产品！</strong>
		            <font size="2">由于价格为系统自动折算导入，请务必核对采购价与零售价区间，再铺货。</font>
		            <br>
		            <font size="2">您可以：继续<a class="easyui-linkbutton" data-options="plain:true" style="color:#0A50E5;">单件导入产品</a>，回到
		            <a class="easyui-linkbutton" data-options="plain:true" style="color:#0A50E5;" >我的产品库</a>。 
		            </font>
		            </font>
		         </div>
		      </div>
		            
		            
		   </div>
		   
		</div>
       
       
     <!-- --------------------------------------------发布成功window3--------------------------------------------- -->
     
		
<!--        </div> -->

		<!--主体End -->	

		
<!-- 	</div>     -->
    <!-- 菜单&&邀请分销商合作 End -->
  </body>
</html>

