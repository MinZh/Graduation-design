package TianMaoFenXiao.Action;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.HashMap;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import TianMaoFenXiao.IService.IYaoQingFenXiaoShangService;
import TianMaoFenXiao.pojo.*;


public class YaoQingFenXiaoShangAction extends baseAction {
	private JSONObject JSObj;
	private JSONArray JSArr;
	private IYaoQingFenXiaoShangService yaoqingfenxiaoshangService;
	private String MSG;
	
	public String getMSG() {
		return MSG;
	}
	public void setMSG(String mSG) {
		MSG = mSG;
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
	public IYaoQingFenXiaoShangService getYaoqingfenxiaoshangService() {
		return yaoqingfenxiaoshangService;
	}
	public void setYaoqingfenxiaoshangService(
			IYaoQingFenXiaoShangService yaoqingfenxiaoshangService) {
		this.yaoqingfenxiaoshangService = yaoqingfenxiaoshangService;
	}
	

	public String getYaoQingJiLu(){
		List yaoqing = 
				this.yaoqingfenxiaoshangService.QueryYaoQingJiLu();//查询邀请信息
		JSONArray jsArr = new JSONArray();
		JSONObject jsObj = new JSONObject();
		
		for(int i=0;i<yaoqing.size();i++){
			Object[] obj = (Object[])yaoqing.get(i);
			jsObj.clear();
			jsObj.put("fenXiaoShang", obj[0]);
			jsObj.put("xinYongDengJi", obj[1]);
			jsObj.put("haoPinLv", obj[2]);
			jsObj.put("kaiDianShiJian", obj[3].toString());
			jsObj.put("leiMuMingCheng", obj[4]);
			jsObj.put("yaoQingShiJian", obj[5].toString());
			jsObj.put("fenXiaoFangShi", obj[6]);
			jsObj.put("yaoQingZhuangTai", obj[7]);
			jsObj.put("juJueLiYou", obj[8]);
			jsArr.add(jsObj);
		}	
		HashMap<String,Object> jsMap = new HashMap<String,Object>();//实例化一个哈希映射对象
		jsMap.put("rows", jsArr);//将jsArr添加到jsMap
		JSObj = JSONObject.fromObject(jsMap);
		return SUCCESS;
	}
	
	public String getFenXiaoShangByID(){//根据ID查询分销商
		int fenXiaoShangId = Integer.parseInt(getRequest().getParameter("fenXiaoShangId"));
		List fenXiaoShang = this.yaoqingfenxiaoshangService.QueryFenXiaoShangByID(fenXiaoShangId);
		JSONArray jsArr = new JSONArray();
		JSONObject jsObj = new JSONObject();
		if(fenXiaoShang.size()>0){
			for(int i=0;i<fenXiaoShang.size();i++){
				Object[] obj = (Object[])fenXiaoShang.get(i);
				jsObj.clear();
				jsObj.put("fenXiaoShang", obj[0]);
				jsObj.put("xinYongDengJi", obj[1]);
				jsObj.put("haoPinLv", obj[2]);
				jsObj.put("kaiDianShiJian", obj[3].toString());
				jsObj.put("leiMuMingCheng", obj[4]);
				jsArr.add(jsObj);
			}	
			HashMap<String,Object> jsMap = new HashMap<String,Object>();//实例化一个哈希映射对象
			jsMap.put("rows", jsArr);//将jsArr添加到jsMap
			JSObj = JSONObject.fromObject(jsMap);
		}
		else{
			JSObj = null;
		}		
		return SUCCESS;
	}
	
	public String addYaoQingShengChanShang(){
		int fenXiaoShangId = Integer.parseInt(getRequest().getParameter("fenXiaoShangId"));
		String checkdaixiao = this.getRequest().getParameter("checkdaixiao").toString();
		String checkjingxiao = this.getRequest().getParameter("checkjingxiao").toString();
		Date myDate = new Date();
		Timestamp ts = new Timestamp(myDate.getTime());
		
		int hezuomoshi = 0;
		if(checkdaixiao.equals("undefined") && checkjingxiao.equals("undefined")){
			MSG = "请选择合作模式！";
		}
		else{
			if(checkdaixiao.equals("on") && checkjingxiao.equals("on")){
  				hezuomoshi = 3;
  			}else if (checkdaixiao.equals("on") && checkjingxiao.equals("undefined")){
  				hezuomoshi = 1;
  			}else if (checkdaixiao.equals("undefined") && checkjingxiao.equals("on")){
  				hezuomoshi = 2;
  			}
			YaoQingFenXiaoShangBiao yaoqingbiao = new YaoQingFenXiaoShangBiao();
			yaoqingbiao.setFenXiaoShangId(fenXiaoShangId);
			yaoqingbiao.setFenXiaoFangShiId(hezuomoshi);
			yaoqingbiao.setYaoQingShiJian(ts);
			yaoqingbiao.setYaoQingZhuangTai("邀请中");
			this.yaoqingfenxiaoshangService.addYaoQingFenXiaoBiao(yaoqingbiao);
			MSG = "OK";
		}  			
		return SUCCESS;
	}
}
