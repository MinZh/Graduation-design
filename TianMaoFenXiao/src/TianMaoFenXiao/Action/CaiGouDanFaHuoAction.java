package TianMaoFenXiao.Action;

import java.util.List;
import java.util.HashMap;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import TianMaoFenXiao.Function.encodingFunction;
import TianMaoFenXiao.IService.ICaiGouDanFaHuoService;
import TianMaoFenXiao.IService.IYaoQingFenXiaoShangService;
import TianMaoFenXiao.pojo.*;

public class CaiGouDanFaHuoAction extends baseAction {
	private JSONObject JSObj;
	private JSONArray JSArr;
	private ICaiGouDanFaHuoService caigoudanfahuoservice;
	private String MSG;
	private int mytaobaoID;
	
	public int getMytaobaoID() {
		return mytaobaoID;
	}
	public void setMytaobaoID(int mytaobaoID) {
		this.mytaobaoID = mytaobaoID;
	}
	public JSONObject getJSObj() {
		return JSObj;
	}
	public void setJSObj(JSONObject jSObj) {
		JSObj = jSObj;
	}
	public JSONArray getJSArr() {
		return JSArr;
	}
	public void setJSArr(JSONArray jSArr) {
		JSArr = jSArr;
	}
	public ICaiGouDanFaHuoService getCaigoudanfahuoservice() {
		return caigoudanfahuoservice;
	}
	public void setCaigoudanfahuoservice(
			ICaiGouDanFaHuoService caigoudanfahuoservice) {
		this.caigoudanfahuoservice = caigoudanfahuoservice;
	}
	public String getMSG() {
		return MSG;
	}
	public void setMSG(String mSG) {
		MSG = mSG;
	}
	
	public String getPayType(){//查询支付类型
		List lstPT = this.caigoudanfahuoservice.QueryPayType();
		JSONArray jsArr = new JSONArray();
		JSONObject jsObj = new JSONObject();
		jsObj.put("J_PayTypeID",100);
		jsObj.put("J_PayType", "所有");
		jsArr.add(jsObj);
		for(int i = 0;i<lstPT.size();i++){
			Object[] obj = (Object[])lstPT.get(i);
			jsObj.clear();
			jsObj.put("J_PayTypeID", obj[0]);
			jsObj.put("J_PayType", obj[1]);
			jsArr.add(jsObj);
		}		
		JSArr = jsArr;
		return SUCCESS;
	}
	
	public String getProcureType(){//查询采购单类型
		List lstPT = this.caigoudanfahuoservice.QueryProcureType();
		JSONArray jsArr = new JSONArray();
		JSONObject jsObj = new JSONObject();
		jsObj.put("J_ProcureTypeID", 100);
		jsObj.put("J_ProcureType", "所有");
		jsArr.add(jsObj);
		for(int i = 0;i<lstPT.size();i++){
			Object[] obj = (Object[])lstPT.get(i);
			jsObj.clear();
			jsObj.put("J_ProcureTypeID", obj[0]);
			jsObj.put("J_ProcureType", obj[1]);
			jsArr.add(jsObj);
		}		
		JSArr = jsArr;
		return SUCCESS;
	}
	
//	SELECT 0.caiGouDanId,1.shangPinMingCheng,2.dangQianJiaGe,3.caiGouJia," +
//	"4.shuLiang,5.fenXiaoShang,6.shiShouKuan,7.zongJia," +
//	"8.kuaiDiFei,9.caiGouZhuangTai,10.shangJiaBianMa 
	
	public String selectCaiGouDan(){//多条件查询采购单
		int zhiFuLeiXingId = Integer.parseInt(getRequest().getParameter("zhiFuLeiXingId"));
		int caiGouZhuangTaiId = Integer.parseInt(getRequest().getParameter("caiGouZhuangTaiId"));
		HashMap<String,Object> jsMap = new HashMap<String,Object>();//实例化一个哈希映射对象
		List lstCaiGouDan0 = this.caigoudanfahuoservice.QueryCaiGouDanByID0(zhiFuLeiXingId, caiGouZhuangTaiId);		
		
		double TiaoJia = 0;
		double ZongJia = 0;
		
		int caigoudanID = 0;
		String strCaiGouDan0 = null;
		
		double xuhao = 0;
		for(int i=0;i<lstCaiGouDan0.size();i++){
			Object[] objc = (Object[])lstCaiGouDan0.get(i);
			caigoudanID = Integer.parseInt(objc[6].toString());
			xuhao = lstCaiGouDan0.size()-i;
			strCaiGouDan0 = "<input type=\"checkbox\" id=\"checkjingxiao"+i+"\" style=\"margin-left:15px\"><font size=\"2\">"+(int)xuhao+")</font>"
					+"<font style=\"background-color:#6969FF;color:#fff;margin-left:5px\">"+objc[0]+"</font>"
					+"<font style=\"color:rgb(153, 148, 148);padding-left:5px\">采购单编号："+objc[1]+"</font>"
					+"<font style=\"color:rgb(153, 148, 148);padding-left:15px\">订单编号："+objc[2]+"</font>"
					+"<font style=\"color:rgb(153, 148, 148);padding-left:15px\">收货人："+objc[3]+"</font>"
					+"<font style=\"color:rgb(153, 148, 148);padding-left:260px\">成交时间："+objc[4]+"</font>"
					+"<font style=\"color:rgb(153, 148, 148);padding-left:15px\">"+objc[5]+"</font>";
			JSONArray jsArr = new JSONArray();
			JSONObject jsObj = new JSONObject();
			List lstCaiGouDan = this.caigoudanfahuoservice.QueryCaiGouDanByID1(caigoudanID);
			for(int j = 0;j<lstCaiGouDan.size();j++){
				Object[] obj = (Object[])lstCaiGouDan.get(j);
				jsObj.clear();		
				jsObj.put("caigoudanID", caigoudanID);
				jsObj.put("shangpin", "<font style=\"color:#6969FF\" size=\"3\">"+obj[0]
						+"</font><br/><br/><font size=\"2\">商家编码："+obj[9]+"</font>");
				jsObj.put("price1", "<font style=\"background-color:red;color:#fff\">"+obj[1]+"</font>");
				jsObj.put("price2", obj[2]);			
				jsObj.put("quantity", obj[3]);				
				if(caiGouZhuangTaiId==5){
					jsObj.put("caozuo", "<font style=\"color:rgb(153, 148, 148)\">交易关闭</font>");
				}
				else{
					jsObj.put("caozuo","");			
				}				 
				jsObj.put("salesman","<a href=\"#\">"+ obj[4]+"</a>");			
				ZongJia = Integer.parseInt(obj[6].toString())+Integer.parseInt(obj[7].toString());
				TiaoJia = Integer.parseInt(obj[5].toString())-ZongJia;
				jsObj.put("amount", "<font style=\"color:orange\"><strong>"+ZongJia
						+"</strong></font><br/><font style=\"color:rgb(153, 148, 148)\">(含快递:"+obj[7]+"<br/>调价:"
						+TiaoJia+")</font><br/><font style=\"color:red\">买家实付:"+obj[5]+"</font>");				
				if(caiGouZhuangTaiId==2){
					jsObj.put("tradestatus", obj[8]+"<br/><hr/><button onclick=\"ShangPinFaHuo("+caigoudanID+")\" style=\"width:70px\">发货</button>");
				}
				else{
					jsObj.put("tradestatus",obj[8]+"<br/><hr/>");			
				}
				jsArr.add(jsObj);
			}
			jsMap.put(strCaiGouDan0, jsArr);//将jsArr添加到jsMap
		}
		JSObj = JSONObject.fromObject(jsMap);
		return SUCCESS;
	}
	
//	0.shangPinMingCheng,1.dangQianJiaGe,2.caiGouJia," +
//	"3.shuLiang,4.fenXiaoShang,5.shiShouKuan,6.zongJia," +
//	"7.kuaiDiFei,8.caiGouZhuangTai,9.shangJiaBianMa
	
	public String getCaiGouMingXi(){
		int caigoudanID = Integer.parseInt(getRequest().getParameter("caigoudanID"));
		List lstCaiGouDan = this.caigoudanfahuoservice.QueryCaiGouDanByID1(caigoudanID);//根据采购单id查询采购单明细
		JSONArray jsArr = new JSONArray();
		JSONObject jsObj = new JSONObject();
		for(int j = 0;j<lstCaiGouDan.size();j++){
			Object[] obj = (Object[])lstCaiGouDan.get(j);
			jsObj.clear();	
			jsObj.put("ShangPinMingCheng", obj[0]);
			jsObj.put("ShangJiaBianMa", obj[9]);
			jsObj.put("DanJia", obj[2]);
			jsObj.put("ShuLiang", obj[3]);
			jsArr.add(jsObj);
		}
		HashMap<String,Object> jsMap = new HashMap<String,Object>();//实例化一个哈希映射对象
		jsMap.put("rows", jsArr);//将jsArr添加到jsMap
		JSObj = JSONObject.fromObject(jsMap);
		return SUCCESS;
	}
	
	public String getCaiGouDanByID(){
		int caigoudanID = Integer.parseInt(getRequest().getParameter("caigoudanID"));
		List lstCaiGou = this.caigoudanfahuoservice.QueryCaiGouDanByID(caigoudanID);
		String str = "";
		Object[] obj = (Object[])lstCaiGou.get(0);
		for(int j = 0;j<obj.length;j++){			
			str = str + obj[j].toString().trim() + ">>";
		}
		MSG = str;
		return SUCCESS;
	}
	
	public String getMyDiZhiByID(){
//		int taobaoID = Integer.parseInt(getRequest().getParameter("taobaoID"));
//		System.out.println(taobaoID);
		List lstDiZhi = this.caigoudanfahuoservice.QueryMyDiZhiByID(mytaobaoID);
		String strfa = "";
		String strtui = "";	
		for(int i=0; i<lstDiZhi.size();i++){
			Object[] obj = (Object[])lstDiZhi.get(i);			
			for(int j = 1;j<obj.length;j++){
				
				if(obj[0].toString().trim().equals("发")){
					strfa = strfa + obj[j].toString().trim() + "，";
				}
				else{					
					strtui = strtui + obj[j].toString().trim() + "，";								
				}
			}		
			
		}		
		MSG = strfa + ">>" + strtui;
		return SUCCESS;
	}
	
	
	public String CaiGouDanFaHuo(){
		int caigoudanId = Integer.parseInt(getRequest().getParameter("caigoudanId").toString().trim());
		String yunDanHao = getRequest().getParameter("yunDanHao").toString().trim();
		String beiZhu = getRequest().getParameter("beiZhu").toString().trim();
		int wuLiuID = Integer.parseInt(getRequest().getParameter("wuLiuID").toString().trim());
		String myBaiWang = getRequest().getParameter("myBaiWang").toString().trim();
		
		CaiGouDanBiao caigoudanbiao = this.caigoudanfahuoservice.getCaiGouDanBiaoByID(caigoudanId);
		caigoudanbiao.setYunDanHao(yunDanHao);
		caigoudanbiao.setBeiZhu(TianMaoFenXiao.Function.encodingFunction.getMethodEncoding(beiZhu));
		caigoudanbiao.setWuLiuId(wuLiuID);
		caigoudanbiao.setBeiWang(TianMaoFenXiao.Function.encodingFunction.getMethodEncoding(myBaiWang));
		caigoudanbiao.setCaiGouZhuangTaiId(3);
		this.caigoudanfahuoservice.editCaiGouDanBiao(caigoudanbiao);
		MSG = "OK";
		return SUCCESS;
	}
}
