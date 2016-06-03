package TianMaoFenXiao.Action;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import TianMaoFenXiao.IService.IPiLiangDaoRuService;
import TianMaoFenXiao.pojo.*;
import TianMaoFenXiao.Function.encodingFunction;

public class PiLiangDaoRuAction extends baseAction {

	private JSONObject JSObj;
	private JSONArray JSArr;
	private IPiLiangDaoRuService piliangdaoruservice;
	private String MSG;

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

	public IPiLiangDaoRuService getPiliangdaoruservice() {
		return piliangdaoruservice;
	}

	public void setPiliangdaoruservice(IPiLiangDaoRuService piliangdaoruservice) {
		this.piliangdaoruservice = piliangdaoruservice;
	}
	
	public String getMSG() {
		return MSG;
	}

	public void setMSG(String mSG) {
		MSG = mSG;
	}

	public String getDianPu(){
		List cpzl=piliangdaoruservice.QueryDianPu();
		JSONArray jsArr=new JSONArray();
		JSONObject jsObj=new JSONObject();
		for(int i=0;i<cpzl.size();i++){
			Object[] obj=(Object[])cpzl.get(i);
			jsObj.clear();
			jsObj.put("DianPuID", obj[0]);
			jsObj.put("DianZhuNiCheng", obj[1]);
			jsObj.put("DianPuMingCheng", obj[2]);
			jsObj.put("DianPuLeiBie", obj[4]);
			jsArr.add(jsObj);
		}
		HashMap<String,Object> jsMap=new HashMap<String,Object>();
		jsMap.put("rows", jsArr);
		JSObj=JSONObject.fromObject(jsMap);
		return SUCCESS;
	}
	
	public String getDianPuLeiBie(){
		List cpzl=piliangdaoruservice.QueryDianPuLeiBie();
		JSONArray jsArr=new JSONArray();
		JSONObject jsObj=new JSONObject();
		for(int i=0;i<cpzl.size();i++){
			Object[] obj=(Object[])cpzl.get(i);
			jsObj.clear();
			jsObj.put("dianPuLeiBieId", obj[0]);
			jsObj.put("dianPuLeiBie", obj[1].toString().trim());
			jsArr.add(jsObj);
		}
		JSArr=jsArr;
		return SUCCESS;
	}
	
	public String getShangPinZhuangTai(){
		List cpzl=piliangdaoruservice.QueryShangPinZhuangTai();
		JSONArray jsArr=new JSONArray();
		JSONObject jsObj=new JSONObject();
		for(int i=0;i<cpzl.size();i++){
			Object[] obj=(Object[])cpzl.get(i);
			jsObj.clear();
			jsObj.put("shangPinZhuangTaiId", obj[0]);
			jsObj.put("shangPinZhuangTai", obj[1].toString().trim());
			jsArr.add(jsObj);
		}
		JSArr=jsArr;
		return SUCCESS;
	}
	
    public String getShangPin(){
    	List cpzl;
    	String shangPinMingCheng= encodingFunction.getMethodEncoding(getRequest().getParameter("SpMingCheng").toString());
   	    String SpZhuangTai= encodingFunction.getMethodEncoding(getRequest().getParameter("SpZhuangTai").toString().trim());
   	    String mydianpuId= encodingFunction.getMethodEncoding(getRequest().getParameter("mydianpuId").toString());
//    	String shangPinMingCheng= getRequest().getParameter("SpMingCheng").toString();
//    	String SpZhuangTai= getRequest().getParameter("SpZhuangTai").toString().trim();
//    	String mydianpuId= getRequest().getParameter("mydianpuId").toString();
 
    	String[] DianPu=mydianpuId.split("<<");
    	int[] DianPuId=new int[DianPu.length];
    	for(int i=0;i<DianPuId.length;i++){
    		DianPuId[i]=Integer.parseInt(DianPu[i]);
    	}
    	int dianPuLeiBieId=Integer.parseInt(getRequest().getParameter("DpLeimuId").toString());
    	if(dianPuLeiBieId==1){
    		cpzl=piliangdaoruservice.QueryAllShangPin(DianPuId,shangPinMingCheng,SpZhuangTai);
    	}
    	else{
    		cpzl=piliangdaoruservice.QueryShangPinByDianPu(DianPuId, dianPuLeiBieId, shangPinMingCheng,SpZhuangTai);
    	}
    	
		JSONArray jsArr = new JSONArray();
		JSONObject jsObj = new JSONObject();
		for(int i = 0;i<cpzl.size();i++){
			Object[] obj = (Object[])cpzl.get(i);
			jsObj.clear();
			jsObj.put("shangPinId", obj[0]);
			jsObj.put("shangPinMingCheng", obj[1]);
			jsObj.put("shangJiaBianMa", obj[2]);
			jsObj.put("dangQianJiaGe", obj[3]);
			jsObj.put("shuLiang", obj[4]);
			jsObj.put("baoBeiZhuangTai", obj[5]);
			jsObj.put("daoRuZhuangTai", obj[6]);
			jsObj.put("gengXinShiJian", obj[7].toString());
			jsArr.add(jsObj);
		}
		HashMap<String,Object> jsMap = new HashMap<String,Object>();
		jsMap.put("rows", jsArr);
		JSObj = JSONObject.fromObject(jsMap);		
		return SUCCESS;
    }	
    
    
    public String getShuLiang(){
    	this.MSG="BangDingCbo";
		return SUCCESS;
    } 
    
    
	public String getFenXiaoFangShi2(){
		List cpzl=piliangdaoruservice.QureyFenXiaoFangShi();
		JSONArray jsArr=new JSONArray();
		JSONObject jsObj=new JSONObject();
		for(int i=0;i<cpzl.size();i++){
			Object[] obj=(Object[])cpzl.get(i);
			jsObj.clear();
			jsObj.put("fenXiaoFangShiId", obj[0]);
			jsObj.put("fenXiaoFangShi", obj[1].toString().trim());
			jsArr.add(jsObj);
		}
		JSArr=jsArr;
		return SUCCESS;
	}    
	

	public String getChanPinXian2(){
		List cpzl=piliangdaoruservice.QueryChanPinXian();
		JSONArray jsArr=new JSONArray();
		JSONObject jsObj=new JSONObject();
		for(int i=0;i<cpzl.size();i++){
			Object[] obj=(Object[])cpzl.get(i);
			jsObj.clear();
			jsObj.put("chanPinXianId", obj[0]);
			jsObj.put("chanPinXian", obj[1].toString().trim());
			jsArr.add(jsObj);
		}
		JSArr=jsArr;
		return SUCCESS;
	}	
	
	public String DaoRuShangPin(){
		String MySelectId=getRequest().getParameter("MySelectId").toString();
		String SelPrice=getRequest().getParameter("SelPrice").toString();
		String SelShuLiang=getRequest().getParameter("SelShuLiang").toString();
		int fxfsId=Integer.parseInt(getRequest().getParameter("fxfsId").toString());
		int cpxId=Integer.parseInt(getRequest().getParameter("cpxId").toString());
//		System.out.println(MySelectId+SelPrice+SelShuLiang+fxfsId+"<>"+cpxId);
		
		String[] ShuLiang=SelShuLiang.split("<<");
		String[] SelectId=MySelectId.split("<<");
		String[] Price=SelPrice.split("<<");
		
		for(int i=0;i<SelectId.length;i++){
			int shangPinId=Integer.parseInt(SelectId[i].toString());
			Long dangQianJiaGe=Long.parseLong(Price[i].toString());
			float flsqj=(float)(dangQianJiaGe*0.8);
			String lsjqj1=String.valueOf(flsqj);
			String lsjqj2=dangQianJiaGe.toString();
			String lingShouJiaQuJian=lsjqj1+"-"+lsjqj2;
			Long DandJPrice=(long) (dangQianJiaGe*0.6);
			Long chanPinKuCun=Long.parseLong(ShuLiang[i].toString());
			Long jingJieKuCun=Long.parseLong("10");
			KuCunBiao kucun=new KuCunBiao();
			kucun.setChanPinKuCun(chanPinKuCun);
			kucun.setJingJieKuCun(jingJieKuCun);
			int KuCunId=piliangdaoruservice.addKuCun(kucun);
			
			ShangPinBiao shangpin=piliangdaoruservice.QueryShangPinById(shangPinId);
			shangpin.setShiChangJiaGe(dangQianJiaGe);
			shangpin.setLingShouJiaQuJian(lingShouJiaQuJian);
			shangpin.setDaiXiaoCaiGouJia(DandJPrice);
			shangpin.setYingXiaoCaiGouJia(DandJPrice);
			shangpin.setDaoRuZhuangTai("已导入");
			shangpin.setFenXiaoFangShiId(fxfsId);
			shangpin.setChanPinXianId(cpxId);
			shangpin.setKuCunId(KuCunId);
			piliangdaoruservice.modifyShangPin(shangpin);		
		}
		
		
		this.MSG="OK";
		
		return SUCCESS;
	}
	
	public String Login(){
		String zhangHao=getRequest().getParameter("dengluming").toString().trim();
		String passWord=getRequest().getParameter("password").toString().trim();
//	    System.out.println(zhangHao+passWord);
	    List cpzl=piliangdaoruservice.QueryZhangHao(zhangHao, passWord);
	    if(cpzl.size()>0){
	    	Object[] obj=(Object[])cpzl.get(0);
	    	int taoBaoZhangHaoId=Integer.parseInt(obj[0].toString());
	    	String niCheng=obj[1].toString();
	    	List lstGongYingShang=piliangdaoruservice.QueryGongYingShang(taoBaoZhangHaoId);
	    	if(lstGongYingShang.size()>0){
	    		this.MSG="have";
	    		this.getSession().setAttribute("taoBaoZhangHaoId", taoBaoZhangHaoId);
	    	}
	    	else{
	    		this.getSession().setAttribute("niCheng", niCheng);
	    		this.MSG="TianXie";
	    	}
	    }
	    else{
	    	this.MSG="NO";
	    }
	    
		return SUCCESS;
	}
	
	
	
	
	/*---------------------------------------------------------------------发货操作-----------------------------------------------------------------*/
	
	public String getWuLiuGongSi(){
		List cpzl=piliangdaoruservice.QueryWuLiuGongSi();
		JSONArray jsArr=new JSONArray();
		JSONObject jsObj=new JSONObject();
		for(int i=0;i<cpzl.size();i++){
			Object[] obj=(Object[])cpzl.get(i);
			jsObj.clear();
			jsObj.put("wuLiuId", obj[0]);
			jsObj.put("wuLiuGongSi", obj[1].toString().trim());
			jsArr.add(jsObj);
		}
		JSArr=jsArr;
		return SUCCESS;
	}
	
	
	
	

	
	
	
	
	
	
	

}
