<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'WodeChanPinKu.jsp' starting page</title>
    
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
  		 $('#editZiLiao1').window('close');
  		 $('#faBuChengGong').window('close');
  		 $('#woDeChanPinKu').window('open');
  		 $('#cbofenxiaofangshi').combobox({url:'getFenXiaoFangShi'});
  		 $('#cbofenxiaofangshi1').combobox({url:'getFenXiaoFangShi'});
  		 $('#cbochanpinxian').combobox({url:'getChanPinXian'});
  		 $('#cbochanpinxian').combobox('setValue',0);
  		 $('#cbofenxiaofangshi').combobox('setValue',0);
  		 $('#cbofenxiaofangshi1').combobox('setValue',0);
  		 
  		  });
  		
  		function returnBtnColumn(shangPinId,row,rowIndex){
  		   var zanTingXiaoShouFou= row.zanTingXiaoShouFou;
  		   if(zanTingXiaoShouFou==true){
  		    
  		     return  "<button style='background-color:#07D0D8;width:50px;border:1px solid white;' onclick='zanTingPuHuo("+shangPinId+","+rowIndex+")'><font style='font-size:6px;color:#ffffff;''>暂停铺货</font></button><br> "+
  		            "<button style='background-color:#07D0D8;width:50px;border:1px solid white;' onclick='zanTingXiaoShou("+shangPinId+","+rowIndex+")'><font style='font-size:6px;color:#ffffff;''>暂停销售</font></button><br> "+
  		            "<a href='javascript:edit("+shangPinId+","+rowIndex+")'>修改</a> ";   
  		            
  		   
  		   }else{
  		   
  		   return   "<button style='background-color:#07D0D8;width:50px;border:1px solid white;' onclick='zanTingPuHuo("+shangPinId+","+rowIndex+")'><font style='font-size:6px;color:#ffffff;''>暂停铺货</font></button><br> "+
  		            "<button style='background-color:#07D0D8;width:50px;border:1px solid white;' onclick='kaiQiXiaoShou("+shangPinId+","+rowIndex+")'><font style='font-size:6px;color:#ffffff;''>开启销售</font></button><br> "+
  		            "<a href='javascript:edit("+shangPinId+","+rowIndex+")'>修改</a> ";   
  		         }		
  	}
  	function returnBtnColumn1(shangPinId,row,rowIndex){  
  	  return  "<button style='background-color:#07D0D8;width:50px;border:1px solid white;' onclick='puHuo("+shangPinId+","+rowIndex+")'><font style='font-size:6px;color:#ffffff;''>铺货</font></button><br> "+
  		      "<a href='javascript:edit1("+shangPinId+","+rowIndex+")'>修改</a> ";   
  
  		 		
  	}
  	function kaiQiXiaoShou(shangPinId,rowIndex){
  	   
  	     var url="kaiQiXiaoShou?shangPinId="+shangPinId;
  	      $.getJSON(url,function(result){
                     if(result == 'OK'){
  					alert("该商品已开启销售!");
  				}
         });
         $('#yiPuHuoXinXi').datagrid('reload');
  	}
  	function zanTingXiaoShou(shangPinId,rowIndex){
  	   
  	     var url="zanTingXiaoShou?shangPinId="+shangPinId;
  	      $.getJSON(url,function(result){
                     if(result == 'OK'){
  					alert("该产品已暂停销售!");
  				}
         });
         $('#yiPuHuoXinXi').datagrid('reload');
  	}
  	function zanTingPuHuo(shangPinId,rowIndex){
  	   
  	     var url="zanTingPuHuo?shangPinId="+shangPinId;
  	      $.getJSON(url,function(result){
                     if(result == 'OK'){
  					alert("该产品已暂停铺货!");
  				}
         });
         $('#yiPuHuoXinXi').datagrid('reload');
         $('#weiPuHuoXinXi').datagrid('reload');
  	}
  	function queryOnClick(){//已铺货
  		var chanPinXianId=$('#cbochanpinxian').combobox('getValue');
  		var shangJiaBianMa=$("#shangJiaBianMa").val();
  		var fenXiaoFangShiId=$("#cbofenxiaofangshi").combobox('getValue');
  		var shangPinMingCheng=$("#shangPinMingCheng").val();
  	    var url1="queryChanPinZiLiao?chanPinXianId="+chanPinXianId+"&shangJiaBianMa="+shangJiaBianMa+"&fenXiaoFangShiId="+fenXiaoFangShiId+"&shangPinMingCheng="+shangPinMingCheng;
  		    $('#yiPuHuoXinXi').datagrid({
  		      url:url1
  		    });   
  		
  		}
  		
  		var shangPinId;
  		var chanPinBiaoTi1;
  		var chanPinXianId1;
  		var fenXiaoFangShiId1;
  		var jingXiaoJiaGe1;
  		var fenXiaoJiaGe1;
  		var shangJiaBianMa1;
  		var jingJieKuCun1;
//   		var zanTingXiaoShouFou;
     function bianji(rowIndex, rowData){//已铺货
  		chanPinKuCun1=rowData.chanPinKuCun;
		shangPinId=rowData.shangPinId;
		kuCunId=rowData.kuCunId;
		shangpingMC=rowData.shangPinMingCheng;
	    chanPinBiaoTi1=rowData.chanPinBiaoTi;
	    chanPinXianId1=rowData.chanPinXianId;
	    fenXiaoFangShiId1=rowData.fenXiaoFangShiId;
	    shiChangJiaGe1=rowData.shiChangJiaGe;
	    lingShouQuJian11=shiChangJiaGe*0.8;
	    lingShouQuJian21=shiChangJiaGe*1; 
	    jingXiaoJiaGe1=shiChangJiaGe*0.8;
	    fenXiaoJiaGe1=shiChangJiaGe*0.8;
	    shangJiaBianMa1=rowData.shangJiaBianMa;
	    jingJieKuCun1=rowData.jingJieKuCun;
	    kuCunId=rowData.kuCunId;
	    $("#chanPinKuCun").val(chanPinKuCun1);
	    $("#shangPinBiaoTi").val(chanPinBiaoTi1);
	    $("#chanPinXianId").combobox('setValue',chanPinXianId1);
	    $("#fenXiaoFangShiId").combobox('setValue',fenXiaoFangShiId1);
	    $("#shiChangJiaGe").val(shiChangJiaGe1);
	    $("#lingShouQuJian1").val(shiChangJiaGe1*0.8);
	    $("#lingShouQuJian2").val(shiChangJiaGe1*1);
	    $("#jingXiaoJiaGe").val(shiChangJiaGe1*0.8);
	    $("#fenXiaoJiaGe").val(shiChangJiaGe1*0.8);
	    $("#shangJiaBianMa1").val(shangJiaBianMa1);
	    $("#jingJieKuCun").val(jingJieKuCun1); 
	    zanTingXiaoShouFou=rowData.zanTingXiaoShouFou;
		curIndex = rowIndex;
		$("#spmc").val(shangpingMC);

		}
		
		
	function jiage(){
		   var shiChangJiaGe=$('#shiChangJiaGe3').val();
		   var lingShouQuJian1=shiChangJiaGe*0.8;  
		   var lingShouQuJian2=shiChangJiaGe*1;
		   var jingXiaoJiaGe=shiChangJiaGe*0.8;
		   var fenXiaoJiaGe=shiChangJiaGe*0.8;
		   $('#lingShouQuJian13').val(lingShouQuJian1);
		   $('#lingShouQuJian23').val(lingShouQuJian2);
		   $('#jingXiaoJiaGe3').val(jingXiaoJiaGe);
		   $('#fenXiaoJiaGe3').val(fenXiaoJiaGe);
		}	
	 function bianji1(rowIndex, rowData){//未铺货
  		chanPinKuCun3=rowData.chanPinKuCun;
		shangPinId=rowData.shangPinId;
		kuCunId=rowData.kuCunId;
		shangpingMC=rowData.shangPinMingCheng;
	    chanPinBiaoTi3=rowData.chanPinBiaoTi;
	    chanPinXianId3=rowData.chanPinXianId;
	    fenXiaoFangShiId3=rowData.fenXiaoFangShiId;
	    shiChangJiaGe3=rowData.shiChangJiaGe;
	    lingShouQuJian13=shiChangJiaGe*0.8;
	    lingShouQuJian23=shiChangJiaGe*1; 
	    jingXiaoJiaGe3=shiChangJiaGe*0.8;
	    fenXiaoJiaGe3=shiChangJiaGe*0.8;
	    shangJiaBianMa3=rowData.shangJiaBianMa;
	    jingJieKuCun3=rowData.jingJieKuCun;
	    kuCunId=rowData.kuCunId;
	    $("#chanPinKuCun3").val(chanPinKuCun3);
	    $("#shangPinBiaoTi3").val(chanPinBiaoTi3);
	    $("#chanPinXianId3").combobox('setValue',chanPinXianId3);
	    $("#fenXiaoFangShiId3").combobox('setValue',fenXiaoFangShiId3);
	    $("#shiChangJiaGe3").val(shiChangJiaGe3);
	    $("#lingShouQuJian13").val(shiChangJiaGe3*0.8);
	    $("#lingShouQuJian23").val(shiChangJiaGe3*1);
	    $("#jingXiaoJiaGe3").val(shiChangJiaGe3*0.8);
	    $("#fenXiaoJiaGe3").val(shiChangJiaGe3*0.8);
	    $("#shangJiaBianMa13").val(shangJiaBianMa3);
	    $("#jingJieKuCun3").val(jingJieKuCun3); 
	    $("#spmc").val(shangpingMC);
	    
		curIndex = rowIndex;
		
		
		}
		function puHuo(shangPinId,rowIndex){
  	   
  	     var url="puHuo?shangPinId="+shangPinId;
  	      $.getJSON(url,function(result){
                     if(result == 'OK'){
  					alert("铺货成功!");
  				}
         });
         $('#weiPuHuoXinXi').datagrid('reload');
         $('#yiPuHuoXinXi').datagrid('reload');
  	}
		function chaXun(){//未铺货
  		var chanPinXianId=$("#cbochanpinxian").combobox('getValue');
  		var shangJiaBianMa=$("#shangJiaBianMa2").val();
  		var fenXiaoFangShiId=$("#cbofenxiaofangshi1").combobox('getValue');
  		var shangPinMingCheng=$("#shangPinMingCheng1").val();
  	    var url1="queryChanPinZiLiaoWeiPuHuo?chanPinXianId="+chanPinXianId+"&shangJiaBianMa="+shangJiaBianMa+"&fenXiaoFangShiId="+fenXiaoFangShiId+"&shangPinMingCheng="+shangPinMingCheng;
  		    $('#weiPuHuoXinXi').datagrid({
  		      url:url1
  		    });   
  		}

		function edit(shangPinId,rowIndex){
  		$('#editZiLiao').window('open');
       
  		}
  		function edit1(shangPinId,rowIndex){
  		
        $('#editZiLiao1').window('open');
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
  	       var shangJiaBianMa=$('#shangJiaBianMa1').val();
  	       var chanPinKuCun=$('#chanPinKuCun').val();
  	       var jingJieKuCun=$('#jingJieKuCun').val();
//   	       alert(jingXiaoJiaGe);
  	       var url="editChanPin?shangPinId="+shangPinId
                     +"&shangPinBiaoTi="+shangPinBiaoTi+"&chanPinXianId="+chanPinXianId
  	                 +"&fenXiaoFangShiId="+fenXiaoFangShiId+"&shiChangJiaGe="+shiChangJiaGe
                     +"&lingShouQuJian1="+lingShouQuJian1+"&lingShouQuJian2="+lingShouQuJian2
                     + "&fenXiaoJiaGe="+fenXiaoJiaGe+"&shangJiaBianMa="+shangJiaBianMa
                     +"&jingJieKuCun="+jingJieKuCun +"&jingXiaoJiaGe="+jingXiaoJiaGe+"&chanPinKuCun="+chanPinKuCun;
                     $.getJSON(url,function(result){
                     if(result == 'OK'){
  				}
         });
          
  		}
  			function queDing1(){
  		     $('#faBuChanPin').window('close');
 			$('#editZiLiao1').window('close');
 			$('#faBuChengGong').window('open');
//  		   var shangPinMingCheng=$('#shangPinMingCheng').val();
           var shangPinBiaoTi=$('#shangPinBiaoTi3').val();
  	   	   var chanPinXianId=$('#chanPinXianId3').combobox('getValue');
  	       var fenXiaoFangShiId=$('#fenXiaoFangShiId3').combobox('getValue');
  	       var shiChangJiaGe=$('#shiChangJiaGe3').val();
           var lingShouQuJian1=$('#lingShouQuJian13').val();
  	       var lingShouQuJian2=$('#lingShouQuJian23').val();
  	       var jingXiaoJiaGe=$('#jingXiaoJiaGe3').val();
  	       var fenXiaoJiaGe=$('#fenXiaoJiaGe3').val();
  	       var shangJiaBianMa=$('#shangJiaBianMa13').val();
  	       var chanPinKuCun=$('#chanPinKuCun3').val();
  	       var jingJieKuCun=$('#jingJieKuCun3').val();
//   	       alert(jingXiaoJiaGe);
  	       var url="editChanPin?shangPinId="+shangPinId
                     +"&shangPinBiaoTi="+shangPinBiaoTi+"&chanPinXianId="+chanPinXianId
  	                 +"&fenXiaoFangShiId="+fenXiaoFangShiId+"&shiChangJiaGe="+shiChangJiaGe
                     +"&lingShouQuJian1="+lingShouQuJian1+"&lingShouQuJian2="+lingShouQuJian2
                     + "&fenXiaoJiaGe="+fenXiaoJiaGe+"&shangJiaBianMa="+shangJiaBianMa
                     +"&jingJieKuCun="+jingJieKuCun +"&jingXiaoJiaGe="+jingXiaoJiaGe+"&chanPinKuCun="+chanPinKuCun;
                     $.getJSON(url,function(result){
                     if(result == 'OK'){
  				}
         });
          
  		}
	function reloadDGChanPinXinXi(){
  			$('#yiPuHuoXinXi').datagrid('reload');
  			$('#weiPuHuoXinXi').datagrid('reload');
  		}
    </script>

  </head>
  
  <body>
   <!-- --------------------------------------------我的产品库window4--------------------------------------------- -->
   <div id="woDeChanPinKu"  class="easyui-window" title="" data-options="fit:true,inline:true,draggable:false,resizable:false,
    	  collapsible:false,minimizable:false,maximizable:false">
    	  <div class="easyui-layout" fit="true">
    	     <div  data-options="region:'north'" style="height:120px;width:900px;">
             <div  style="margin-left:20px;margin-top:20px;"><font color="gray" size="2" ><strong>产品管理>>我的产品库</strong></font></div>  
               <div style="margin-left:20px;width:800px;height:40px;margin-top:30px;"><font size=2> 选择您需要查看的产品线:　</font><input class="easyui-combobox" id="cbochanpinxian" name="chanPinXian"
                    data-options="valueField:'chanPinXianId',textField:'chanPinXian'"></input> 
                    
               <a class="easyui-linkbutton" style="color:#0099FF;" data-options="plain:true" onclick="">编辑/添加产品线</a><br/>
                    
               </div> 
             </div>
             
             
     <div region="center">
      <div class="easyui-layout" fit="true">
                <!-- ------------north------- -->
<!--        <div region="north"> -->
           <div class="easyui-tabs" style="width:1000px;height:auto;margin-left:20px;margin-top:20px;">
           
             <!--------------------- 已铺货 ----------------------------->
                 <div title="已铺货" style="padding:10px">
                    <table>
                       <tr>
                         <th><font size=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商家编码:&nbsp;</font><input   id="shangJiaBianMa" type="text" style="width:160px;height:25px;"></input>
                         </th>
                         <th><font size=2>&nbsp;&nbsp;&nbsp;分销方式:&nbsp;</font><input class="easyui-combobox" id="cbofenxiaofangshi" name="fenXiaoFangShi"
                          data-options="valueField:'fenXiaoFangShiId',textField:'fenXiaoFangShi'" style="height:20px;"></input>
                         </th>   
<!--                          <th><font size=2>&nbsp;&nbsp;&nbsp;库存状态:&nbsp;</font><input class="easyui-combobox" id="KuCunZhuangTaiID" name="kuCunZhuangTai" -->
<!--                           data-options="valueField:'kuCunZhuangTaiID',textField:'kuCunZhuangTai'" style="height:20px;"></input> -->
<!--                          </th>   -->
<!--                          <th><font size=2>&nbsp;&nbsp;&nbsp;来源:&nbsp;</font><input class="easyui-combobox" id="LaiYuanID" name="laiYuan" -->
<!--                           data-options="valueField:'laiYuanID',textField:'laiYuan'" style="height:20px;"></input> -->
<!--                          </th>  -->
                           <th><font size=1>&nbsp;&nbsp;&nbsp;产品名称:&nbsp;</font><input id="shangPinMingCheng"  type="text" style="width:135px;height:25px;"></input>
                         </th>
<!--                       </tr> -->
<!--                       <tr><th><br></th></tr> -->
<!--                       <tr> -->
<!--                           <th><font size=2>经销下单是否需要授权:&nbsp;<input class="easyui-combobox" id="ShouQuanID" name="shouQuanFou" -->
<!--                           data-options="valueField:'shouQuanID',textField:'shouQuanFou'" style="height:20px;"></input></font> -->
<!--                           </th>  -->

<!--                           <th> -->
<!--                           </th> -->
                          <th>
                             <button style="background-color:#07D0D8;width:85px;height:25px;border:1px solid black;margin-left:190px;" onclick="queryOnClick()"><strong style="font-size:15px;color:#ffffff;">查询</strong></button>   
                          </th>
                     </tr>
                  </table>
                  <table style="margin-left:30px;margin-top:10px;">
                         <tr>
                             <th><button style="background-color:#62B7D1;"><font style="font-size:15px;color:#ffffff;">暂停销售</font></button> 
                             <th><button style="background-color:#62B7D1;"><font style="font-size:15px;color:#ffffff;">设置邮费</font></button> 
                             <th><button style="background-color:#62B7D1;"><font style="font-size:15px;color:#ffffff;">调价</font></button> 
                             <th><button style="background-color:#62B7D1;"><font style="font-size:15px;color:#ffffff;">设置等级折扣</font></button> 
                             <th><button style="background-color:#62B7D1;"><font style="font-size:15px;color:#ffffff;">设置分销方式</font></button> 
                             <th><button style="background-color:#62B7D1;"><font style="font-size:15px;color:#ffffff;">同步店铺产品信息</font></button> 
                             <th><button style="background-color:#62B7D1;"><font style="font-size:15px;color:#ffffff;">添加产品</font></button> 
                         </tr>
                    </table>
                  <table id="yiPuHuoXinXi" class="easyui-datagrid" style="width:auto;height:350px;margin-top:20px;"
			               data-options="rownumbers:true,singleSelect:true,scrolling:true,onClickRow:bianji">
		          <thead>
			           <tr>
			              <th data-options="field:'ck',checkbox:true">全选</th>
                          <th data-options="field:'chanPinKuCun',width:80,hidden:true">产品库存</th>
				          <th data-options="field:'shangPinMingCheng',width:80">产品名称</th>
				          <th data-options="field:'chanPinXian',width:100" >产品线</th>
				          <th data-options="field:'daiXiaoCaiGouJia',width:80" >采购价(元)</th>
				          <th data-options="field:'lingShouJiaQuJian',width:100,align:'center'" >零售价区间(元)</th>
				          <th data-options="field:'zanTingXiaoShouFou',width:100,align:'center',hidden:true" >产品状态</th>
			              <th data-options="field:'shangJiaBianMa',width:100,align:'center'" >商家编码</th>
			              <th data-options="field:'shiChangJiaGe',width:60,align:'center' "  >市场价格</th>
			              <th data-options="field:'chanPinKuCun',width:60,align:'center',hidden:true " >产品库存</th>
			              <th data-options="field:'jingJieKuCun',width:60,align:'center',hidden:true " >警戒库存</th>
			              <th data-options="field:'fenXiaoFangShiId',width:60,align:'center',hidden:true " >分销方式</th>
			              <th data-options="field:'chanPinXianId',width:60,align:'center',hidden:true " >产品线</th>
			              <th data-options="field:'chanPinBiaoTi',width:60,align:'center',hidden:true "  >产品标题</th>
			              <th data-options="field:'gengXinShiJian',align:'center',width:120">最近更新时间</th>
			              
			              
			              <th data-options="field:'shangPinId',align:'center',width:100,formatter:returnBtnColumn">操作</th>
			             </tr>
		            </thead>	 
	             </table>   
                 </div>
                 <!-- -----------------已铺货end------------------------- -->
                 
                 <!-- -----------------------------------未铺货---- ----------------------------------------->
                 <div title="未铺货" style="padding:10px">
                   
                      <table>
                       <tr>
                         <th><font size=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商家编码:&nbsp;</font><input id="shangJiaBianMa2" type="text" style="width:160px;height:25px;"></input>
                         </th>
                         <th><font size=2>&nbsp;&nbsp;&nbsp;分销方式:&nbsp;</font><input class="easyui-combobox" id="cbofenxiaofangshi1" name="fenXiaoFangShi"
                          data-options="valueField:'fenXiaoFangShiId',textField:'fenXiaoFangShi'" style="height:20px;"></input>
                         </th>   
<!--                          <th><font size=2>&nbsp;&nbsp;&nbsp;库存状态:&nbsp;</font><input class="easyui-combobox" id="KuCunZhuangTaiID" name="kuCunZhuangTai" -->
<!--                           data-options="valueField:'kuCunZhuangTaiID',textField:'kuCunZhuangTai'" style="height:20px;"></input></a> -->
<!--                          </th>   -->
<!--                          <th><font size=2>&nbsp;&nbsp;&nbsp;来源:&nbsp;</font><input class="easyui-combobox" id="LaiYuanID" name="laiYuan" -->
<!--                           data-options="valueField:'laiYuanID',textField:'laiYuan'" style="height:20px;"></input> -->
<!--                          </th>  -->
<!--                       </tr> -->
<!--                       <tr><th><br></th></tr> -->
<!--                       <tr> -->
<!--                           <th><font size=2>经销下单是否需要授权:&nbsp;<input class="easyui-combobox" id="ShouQuanID" name="shouQuanFou" -->
<!--                           data-options="valueField:'shouQuanID',textField:'shouQuanFou'" style="height:20px;"></input></font> -->
<!--                           </th>  -->
                           <th><font size=2>&nbsp;&nbsp;&nbsp;产品名称:&nbsp;</font><input id="shangPinMingCheng1" type="text" style="width:135px;height:25px;"></input>
                         </th>
                          <th>
                          </th>
                          <th>
                             <button style="background-color:#07D0D8;width:85px;height:25px;border:1px solid black;margin-left:190px;" onclick="chaXun()"><strong style="font-size:16px;color:#ffffff;">查询</strong></button>   
                          </th>
                     </tr>
                  </table>
                   <table style="margin-left:30px;margin-top:10px;">
                         <tr>
                             <th><button style="background-color:#62B7D1;"><font style="font-size:15px;color:#ffffff;">暂停销售</font></button> 
                             <th><button style="background-color:#62B7D1;"><font style="font-size:15px;color:#ffffff;">设置邮费</font></button> 
                             <th><button style="background-color:#62B7D1;"><font style="font-size:15px;color:#ffffff;">调价</font></button> 
                             <th><button style="background-color:#62B7D1;"><font style="font-size:15px;color:#ffffff;">设置等级折扣</font></button> 
                             <th><button style="background-color:#62B7D1;"><font style="font-size:15px;color:#ffffff;">设置分销方式</font></button> 
                             <th><button style="background-color:#62B7D1;"><font style="font-size:15px;color:#ffffff;">同步店铺产品信息</font></button> 
                             <th><button style="background-color:#62B7D1;"><font style="font-size:15px;color:#ffffff;">添加产品</font></button> 
                         </tr>
                    </table>
                  
                 <table id="weiPuHuoXinXi" class="easyui-datagrid" style="width:900px;height:350px;"
			               data-options="rownumbers:true,singleSelect:true,scrolling:true,onClickRow:bianji1">
		          <thead>
			            <tr>
			              <th data-options="field:'ck',checkbox:true">全选</th>
                          <th data-options="field:'chanPinKuCun',width:80,hidden:true">产品库存</th>
				          <th data-options="field:'shangPinMingCheng',width:80">产品名称</th>
				          <th data-options="field:'chanPinXian',width:100" >产品线</th>
				          <th data-options="field:'daiXiaoCaiGouJia',width:80" >采购价(元)</th>
				          <th data-options="field:'lingShouJiaQuJian',width:100,align:'center'" >零售价区间(元)</th>
<!-- 				          <th data-options="field:'zanTingXiaoShouFou',width:100,align:'center'" >产品状态</th> -->
			              <th data-options="field:'shangJiaBianMa',width:100,align:'center'" >商家编码</th>
			              <th data-options="field:'shiChangJiaGe',width:60,align:'center' "  >市场价格</th>
			              <th data-options="field:'jingJieKuCun',width:60,align:'center',hidden:true " >警戒库存</th>
			              <th data-options="field:'fenXiaoFangShiId',width:60,align:'center',hidden:true " >分销方式</th>
			              <th data-options="field:'chanPinXianId',width:60,align:'center',hidden:true " >产品线</th>
			              <th data-options="field:'chanPinBiaoTi',width:60,align:'center',hidden:true "  >产品标题</th>
			              <th data-options="field:'gengXinShiJian',align:'center',width:120">最近更新时间</th>
			              <th data-options="field:'shangPinId',align:'center',width:100,formatter:returnBtnColumn1">操作</th>
			             </tr>
		             </thead>	 
	               </table>   
                
                </div>
               </div>
           </div>
               <!--------------------------------------- 未铺货end ---------------------------------->  	            
          </div>
                        
    </div>
    
   </div>
      <!-- --------------------------------------------我的产品库window4--------------------------------------------- -->
  
      <!-- --------------------------------------------修改产品信息window1--------------------------------------------- -->
      
   <div id="editZiLiao"  class="easyui-window"  title="" data-options="fit:true,inline:true,draggable:false,resizable:false,
    	  collapsible:false,minimizable:false,maximizable:false">
         <div class="easyui-layout" data-options="region:'north',split:true"  >
	           <div  style="margin-left:20px;margin-top:20px;"><font color="gray" size="2" ><strong>产品管理>>我的产品库>>修改</strong></font></div>
  	    </div>
        
       <div data-options="region:'center',split:true" >
              <div style="margin-left:80px;width:800px;height:40px;margin-top:20px;" ><font size=3> 产品标题:</font><font color="red" size="3">*</font>
<!--                     <input id="shangPinMingCheng" type="text" name="ShangPinBiao.shangPinMingCheng"   style="margin-left:20px;width:500px;" ></input>　限定在30个字内(60字符)</div> -->
                        <input id="shangPinBiaoTi" type="text"  style="margin-left:20px;width:500px;background-color:rgb(233, 227, 227);" readOnly="true" ></input>　限定在30个字内(60字符)</div>
              <div style="margin-left:80px;width:800px;height:40px;"><font size=3> 所属产品线:</font><font color="red" size="3">*　</font><input readOnly="true"    class="easyui-combobox" id="chanPinXianId" name="chanPinXian"
                          data-options="url:'getChanPinXian',valueField:'chanPinXianId',textField:'chanPinXian'"></input> </div> 
              <div style="margin-left:80px;width:800px;height:40px;"><font size=3> 分销方式:</font><font color="red" size="3">*　</font><input readOnly="true" class="easyui-combobox" id="fenXiaoFangShiId" name="fenXiaoFangShi"
                          data-options="url:'getFenXiaoFangShi',valueField:'fenXiaoFangShiId',textField:'fenXiaoFangShi'"></input> </div> 
              <div style="margin-left:80px;width:300px;height:40px;"><font size=3>市场价格:</font><font color="red" size="3">*</font><input readOnly="true" id="shiChangJiaGe"  type="text" style="margin-left:20px;background-color:rgb(233, 227, 227);" onKeyup="jiage()" ></input></div>  
              <div style="margin-left:80px;width:600px;height:40px;"><font size=3>零售价区间:</font><font color="red" size="3">*　</font><input readOnly="true" id="lingShouQuJian1" type="text" style="background-color:rgb(233, 227, 227);">　元-<input id="lingShouQuJian2" readOnly="true" type="text" style="margin-left:20px;background-color:rgb(233, 227, 227);" ></input>　元</div>
              <font color="Gray" style="margin-left:80px;">代销产品下载发布时,系统会限制其价格在此范围内;</font><br><font color="Gray" style="margin-left:80px;">经销商品下载发布时不收此限制,但供应商可在"经销商品销售跟踪"中跟踪其实际销售价格.</font><br><font color="Gray" style="margin-left:80px;">分销商销售商品时价格将会受此区间限制,您可以通过设置销售控制来启动或取消此限制.</font>
              <div style="margin-left:80px;width:600px;height:40px;margin-top:20px;"><font size=3>采购价格:</font><font color="red" size="3">*　</font><a class="fl" style="background-color:#0099FF;color:#ffffff;font-size:6;">代销</a>　普通分销商采购价格<input readOnly="true" id="fenXiaoJiaGe" type="text" style="margin-left:20px;background-color:rgb(233, 227, 227);" >　元
              <br><font color="red" size="3" style="margin-left:70px;">*　</font><a class="fl" style="background-color:red;color:#ffffff;font-size:6;">经销</a>　普通经销商采购价格<input readOnly="true"  id="jingXiaoJiaGe" type="text" style="margin-left:20px;background-color:rgb(233, 227, 227);" >　元</div>
              <div style="margin-left:80px;width:300px;height:40px;margin-top:20px;"><font size=3>商家编码:</font><font color="red" size="3">*</font><input readOnly="true" id="shangJiaBianMa1" type="text" style="margin-left:20px;background-color:rgb(233, 227, 227);" ></input></div>  
              <div style="margin-left:80px;width:300px;height:40px;"><font size=3>产品库存:</font><font color="red" size="3">*</font><input id="chanPinKuCun" type="text" style="margin-left:20px;" ></input>　件</div>
              <div style="margin-left:80px;width:300px;height:40px;"><font size=3>警戒库存:</font><font color="red" size="3">*</font><input id="jingJieKuCun" type="text" style="margin-left:20px;" >　件</div>
      </div>
       <div  data-options="region:'south',split:true">

                 <div data-options="region:'south',split:true">
                    <button style="background-color:#07D0D8;width:90px;height:25px;border:1px solid black;margin-left:900px;margin-top:20px;" onclick="queDing()"><strong style="font-size:16px;color:#ffffff;">确定</strong></button>   
                 </div>
              
           </div>
    
  </div>


    <!-- --------------------------------------------修改产品信息window1--------------------------------------------- -->
    
      <!-- --------------------------------------------修改产品信息window2--------------------------------------------- -->
      
   <div id="editZiLiao1"  class="easyui-window"  title="" data-options="fit:true,inline:true,draggable:false,resizable:false,
    	  collapsible:false,minimizable:false,maximizable:false">
         <div class="easyui-layout" data-options="region:'north',split:true"  >
	           <div  style="margin-left:20px;margin-top:20px;"><font color="gray" size="2" ><strong>产品管理>>我的产品库>>修改</strong></font></div>
  	    </div>
        
       <div data-options="region:'center',split:true" >
              <div style="margin-left:80px;width:800px;height:40px;margin-top:20px;"><font size=3> 产品标题:</font><font color="red" size="3">*</font>
<!--                     <input id="shangPinMingCheng" type="text" name="ShangPinBiao.shangPinMingCheng"   style="margin-left:20px;width:500px;" ></input>　限定在30个字内(60字符)</div> -->
                        <input id="shangPinBiaoTi3" type="text"  style="margin-left:20px;width:500px;" ></input>　限定在30个字内(60字符)</div>
              <div style="margin-left:80px;width:800px;height:40px;"><font size=3> 所属产品线:</font><font color="red" size="3">*　</font><input class="easyui-combobox" id="chanPinXianId3" name="chanPinXian"
                          data-options="url:'getChanPinXian',valueField:'chanPinXianId',textField:'chanPinXian'"></input> </div> 
              <div style="margin-left:80px;width:800px;height:40px;"><font size=3> 分销方式:</font><font color="red" size="3">*　</font><input class="easyui-combobox" id="fenXiaoFangShiId3" name="fenXiaoFangShi"
                          data-options="url:'getFenXiaoFangShi',valueField:'fenXiaoFangShiId',textField:'fenXiaoFangShi'"></input> </div> 
              <div style="margin-left:80px;width:300px;height:40px;"><font size=3>市场价格:</font><font color="red" size="3">*</font><input id="shiChangJiaGe3"  type="text" style="margin-left:20px;" onKeyup="jiage()" ></input></div>  
              <div style="margin-left:80px;width:600px;height:40px;"><font size=3>零售价区间:</font><font color="red" size="3">*　</font><input id="lingShouQuJian13" type="text" >　元-<input id="lingShouQuJian23" type="text" style="margin-left:20px;" ></input>　元</div>
              <font color="Gray" style="margin-left:80px;">代销产品下载发布时,系统会限制其价格在此范围内;</font><br><font color="Gray" style="margin-left:80px;">经销商品下载发布时不收此限制,但供应商可在"经销商品销售跟踪"中跟踪其实际销售价格.</font><br><font color="Gray" style="margin-left:80px;">分销商销售商品时价格将会受此区间限制,您可以通过设置销售控制来启动或取消此限制.</font>
              <div style="margin-left:80px;width:600px;height:40px;margin-top:20px;"><font size=3>采购价格:</font><font color="red" size="3">*　</font><a class="fl" style="background-color:#0099FF;color:#ffffff;font-size:6;">代销</a>　普通分销商采购价格<input id="fenXiaoJiaGe3" type="text" style="margin-left:20px;" >　元
              <br><font color="red" size="3" style="margin-left:70px;">*　</font><a class="fl" style="background-color:red;color:#ffffff;font-size:6;">经销</a>　普通分销商采购价格<input id="jingXiaoJiaGe3" type="text" style="margin-left:20px;" >　元</div>
              <div style="margin-left:80px;width:300px;height:40px;margin-top:20px;"><font size=3>商家编码:</font><font color="red" size="3">*</font><input id="shangJiaBianMa13" type="text" style="margin-left:20px;" ></input></div>  
              <div style="margin-left:80px;width:300px;height:40px;"><font size=3>产品库存:</font><font color="red" size="3">*</font><input id="chanPinKuCun3" type="text" style="margin-left:20px;" ></input>　件</div>
              <div style="margin-left:80px;width:300px;height:40px;"><font size=3>警戒库存:</font><font color="red" size="3">*</font><input id="jingJieKuCun3" type="text" style="margin-left:20px;" >　件</div>
      </div>
       <div  data-options="region:'south',split:true">

                 <div data-options="region:'south',split:true">
                    <button style="background-color:#07D0D8;width:90px;height:25px;border:1px solid black;margin-left:900px;margin-top:20px;" onclick="queDing1()"><strong style="font-size:16px;color:#ffffff;">确定</strong></button>   
                 </div>
              
           </div>
    
  </div>


    <!-- --------------------------------------------修改产品信息window2--------------------------------------------- -->
    
    
    
    
    
    
    
     <!-- --------------------------------------------发布成功window3--------------------------------------------- -->
    
<!--     <div id="faBuChengGong"  class="easyui-window" data-options="fit:true,inline:true,draggable:false,resizable:false, -->
<!--     	  collapsible:false,minimizable:false,maximizable:false"> -->
        <div class="easyui-window" id="faBuChengGong" data-options="inline:true,fit:true,title:' ',maximizable:false,closable:false,resizable:false,collapsible:false,minimizable:false,draggable:false" >
		   <div  style="margin-left:20px;margin-top:20px;"><font color="gray" size="2" ><strong>产品管理>>我的产品库>>修改</strong></font></div>
		   <div style="padding-top:20px;"></div>
		   <div style="width:820px;height:80px;background: #EDF5FF;border:1px solid;border-color:#53B85B;margin-left:30px;margin-top:20px;">
		      <div class="easyui-layout" fit="true" data-options="border:false" >
		         <div region="west" style="width:50px;background: #E8FFE8;" data-options="border:false">
		            <div style="padding-top:25px;padding-left:10px;">
		               <img src="img/dui.png"></img>
		            </div>
		            
		         </div>
		         <div region="center" style="padding-top:16px;background: #E8FFE8;margin-left:20px;" data-options="border:false">
		            <font size="3"><strong>恭喜您，编辑成功<font id="spmc" color="#FDB04D"></font>产品！</strong>
		            <font size="2">由于价格为系统自动折算导入，请务必核对采购价与零售价区间。</font>
		            <br>
		            <font size="2">您可以：继续<a class="easyui-linkbutton" data-options="plain:true" style="color:#0A50E5;" onclick="">单件导入产品</a>，回到
		            <a class="easyui-linkbutton" data-options="plain:true" style="color:#0A50E5;" onclick="$('#woDeChanPinKu').window('open');">我的产品库</a>。 
		            </font>
		            </font>
		         </div>
		      </div>
		            
		            
		   </div>
		   
		</div>
       
       
     <!-- --------------------------------------------发布成功window3--------------------------------------------- -->
  </body>
</html>
