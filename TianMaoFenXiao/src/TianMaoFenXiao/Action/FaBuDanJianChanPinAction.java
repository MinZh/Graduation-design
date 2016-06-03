package TianMaoFenXiao.Action;



import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import TianMaoFenXiao.IService.IFaBuDanJianChanPinService;
import TianMaoFenXiao.pojo.*;
import TianMaoFenXiao.Function.encodingFunction;
public class FaBuDanJianChanPinAction extends baseAction{
	private JSONObject JSObj;
	private JSONArray JSArr;
	private String MSG;			
	public String getMSG() {
		return MSG;
	}
	public void setMSG(String mSG) {
		MSG = mSG;
	}
	private KuCunBiao    KuCunBiao;
	private ShangPinBiao ShangPinBiao;
	private int shangPinId;
	private int kuCunId;
	public int getKuCunId() {
		return kuCunId;
	}
	public void setKuCunId(int kuCunId) {
		this.kuCunId = kuCunId;
	}
	public KuCunBiao getKuCunBiao() {
		return KuCunBiao;
	}
	public void setKuCunBiao(KuCunBiao kuCunBiao) {
		KuCunBiao = kuCunBiao;
	}
	public ShangPinBiao getShangPinBiao() {
		return ShangPinBiao;
	}
	public void setShangPinBiao(ShangPinBiao shangPinBiao) {
		ShangPinBiao = shangPinBiao;
	}
	public int getShangPinId() {
		return shangPinId;
	}
	public void setShangPinId(int shangPinId) {
		this.shangPinId = shangPinId;
	}
	private IFaBuDanJianChanPinService fabudanjianchanpinservice;
	private int shangPinLeiBieId;
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
	public IFaBuDanJianChanPinService getFabudanjianchanpinservice() {
		return fabudanjianchanpinservice;
	}
	public void setFabudanjianchanpinservice(
			IFaBuDanJianChanPinService fabudanjianchanpinservice) {
		this.fabudanjianchanpinservice = fabudanjianchanpinservice;
	}
	
	public String getLeiMu(){
		List lstLeiMu = fabudanjianchanpinservice.getLeiMu();
		JSONArray jsArr = new JSONArray();
		JSONObject jsObj = new JSONObject();
        for(int i = 0;i<lstLeiMu.size();i++){
			Object[] obj = (Object[])lstLeiMu.get(i);
			jsObj.clear();
			jsObj.put("leiMuId", obj[0]);
			jsObj.put("leiMuMingCheng", obj[1]);
			jsArr.add(jsObj);
        }
        JSArr=jsArr;		
		return SUCCESS;
	}
	public String getFenXiaoFangShi(){
		List lstLeiMu = fabudanjianchanpinservice.getFenXiaoFangShi();
		JSONArray jsArr = new JSONArray();
		JSONObject jsObj = new JSONObject();
        for(int i = 0;i<lstLeiMu.size();i++){
			Object[] obj = (Object[])lstLeiMu.get(i);
			jsObj.clear();
			jsObj.put("fenXiaoFangShiId", obj[0]);
			jsObj.put("fenXiaoFangShi", obj[1]);
			jsArr.add(jsObj);
        }
        jsObj.clear();
        jsObj.clear();
		jsObj.put("fenXiaoFangShiId", 0);
		jsObj.put("fenXiaoFangShi", "所有");
		jsArr.add(jsObj);	
        JSArr=jsArr;		
		return SUCCESS;
	}
	public String getChanPinXian(){
		List lstLeiMu = fabudanjianchanpinservice.getChanPinXian();
		JSONArray jsArr = new JSONArray();
		JSONObject jsObj = new JSONObject();
        for(int i = 0;i<lstLeiMu.size();i++){
			Object[] obj = (Object[])lstLeiMu.get(i);
			jsObj.clear();
			jsObj.put("chanPinXianId", obj[0]);
			jsObj.put("chanPinXian", obj[1]);
			jsArr.add(jsObj);
        }
        jsObj.clear();
		jsObj.put("chanPinXianId",0);
		jsObj.put("chanPinXian", "所有");
		jsArr.add(jsObj);
        JSArr=jsArr;		
		return SUCCESS;
	}
	public String getShangPinByShangPinID(){//双击树节点查询
		int shangPinId = Integer.parseInt(this.getRequest().getParameter("shangPinId").toString());
		int lvl = Integer.parseInt(this.getRequest().getParameter("lvl").toString());
		List lstChanPinXinXi = fabudanjianchanpinservice.QueryShangPinXinXi1(shangPinId,lvl);
//		List lstChanPinXinXi = this.fabudanjianchanpinservice.QueryShangPinXinXi(shangPinId);
		
		JSONArray jsArr = new JSONArray();
		JSONObject jsObj = new JSONObject();
        for(int i = 0;i<lstChanPinXinXi.size();i++){
			Object[] obj = (Object[])lstChanPinXinXi.get(i);
			jsObj.clear();
			jsObj.put("shangPinId", obj[0]);
			jsObj.put("shangPinMingCheng", obj[1]);
			jsObj.put("shangJiaBianMa", obj[2]);
			jsObj.put("shangPinLeiBie", obj[3]);
			jsObj.put("dangQianJiaGe", obj[4]);
			jsObj.put("daoRuZhuangTai", obj[5]);
			jsObj.put("shuLiang", obj[7]);
			jsObj.put("kuCunId", obj[8]);
			
//			jsObj.put("actionColumn","导入");
			jsArr.add(jsObj);
			
        }
        HashMap<String,Object> jsMap = new HashMap<String,Object>();
		jsMap.put("rows", jsArr);
		JSObj = JSONObject.fromObject(jsMap);		
		return SUCCESS;
	}
	public String getShangPinAll(){//树节点
		List lstLeiMu=fabudanjianchanpinservice.getChanPinZiLiao();
		//JSONArray childList;
		JSONArray jsArr = new JSONArray();
		JSONObject jsObj = new JSONObject();
		for (int i=0;i<lstLeiMu.size();i++){
               Object[] obj=(Object[])lstLeiMu.get(i);
               jsObj.clear();
               jsObj.put("id", obj[0]);
               jsObj.put("text", obj[1]);
               jsObj.put("attributes", "{'lvl':1}");
                if (getChanPinLeiBie(Integer.parseInt(obj[0].toString()))!=null){
                   jsObj.put("state", "closed");
                   jsObj.put("children",getChanPinLeiBie(Integer.parseInt(obj[0].toString())));
               }
               jsArr.add(jsObj);
		}
		HashMap<String,Object> jsMap = new HashMap<String,Object>();
		jsMap.put("",jsArr);
		JSArr=jsArr;
		return SUCCESS;
	}
	private JSONArray getChanPinLeiBie(int leiMuId){
		//JSONArray jsArr = new JSONArray();
		JSONObject jsObj = new JSONObject();
		List lstleibie=fabudanjianchanpinservice.getChanPinLeiBie(leiMuId);
		if (lstleibie.size()==0){
			return null;
		}
		else{
		    JSONArray childArr= new JSONArray();
		    for (int i=0;i<lstleibie.size();i++){
			    Object[] obj=(Object[]) lstleibie.get(i);
                jsObj.clear();
                jsObj.put("id", obj[0]);
                jsObj.put("text", obj[1]);
                jsObj.put("attributes", "{'lvl':2}");
                childArr.add(jsObj);
		}
		    return childArr;
		}
	}
	public String getChanPinMingXi(){//获取修改产品界面加载所需相关数据
		int shangPinId=Integer.parseInt(this.getRequest().getParameter("shangPinId").trim());
        List cpzl = fabudanjianchanpinservice.QueryChanPinMingXi(shangPinId);
		JSONArray jsArr = new JSONArray();
		JSONObject jsObj = new JSONObject();
		for(int i = 0;i<cpzl.size();i++){
			Object[] obj = (Object[])cpzl.get(i);
			jsObj.clear();
			jsObj.put("shangPinId", obj[0]);
			jsObj.put("shangJiaBianMa", obj[1]);
			jsObj.put("chanPinBiaoTi", obj[2]);
			jsObj.put("chanPinXianId", obj[3]);
			jsObj.put("shiChangJiaGe", obj[5]);
			jsObj.put("chanPinKuCun", obj[7]);
			jsObj.put("jingJieKuCun", obj[8]);
			jsObj.put("fenXiaoFangShiId", obj[9]);
			jsArr.add(jsObj);
		}
		HashMap<String,Object> jsMap = new HashMap<String,Object>();
		jsMap.put("rows", jsArr);
		JSObj = JSONObject.fromObject(jsMap);		
		return SUCCESS;
    }
	public String editChanPin(){//修改产品
//		    String shangPinMingCheng=TianMaoFenXiao.Function.encodingFunction.getMethodEncoding(this.getRequest().getParameter("shangPinMingCheng").trim());
	        String shangPinBiaoTi=TianMaoFenXiao.Function.encodingFunction.getMethodEncoding(this.getRequest().getParameter("shangPinBiaoTi").trim());
		    int chanPinXianId=Integer.parseInt(this.getRequest().getParameter("chanPinXianId").trim());
//		    int kuCunId=Integer.parseInt(this.getRequest().getParameter("kuCunId").trim());
			int fenXiaoFangShiId=Integer.parseInt(this.getRequest().getParameter("fenXiaoFangShiId").toString().trim());
			Long shiChangJiaGe=Long.parseLong(this.getRequest().getParameter("shiChangJiaGe").toString().trim());
			int lingShouQuJian1=(int) (shiChangJiaGe*0.8);
			int lingShouQuJian2=(int) (shiChangJiaGe*1);
		
			String lsqj1=String.valueOf(lingShouQuJian1);
			String lsqj2=String.valueOf(lingShouQuJian2);	
            String lingShouQuJian=lsqj1+"-"+lsqj2;
//            Long jingXiaoJiaGe=Long.parseLong(this.getRequest().getParameter("jingXiaoJiaGe").toString().trim());
            long jingXiaoJiaGe1=(long)(shiChangJiaGe*0.8);
//           Long fenXiaoJiaGe=Long.parseLong(this.getRequest().getParameter("fenXiaoJiaGe").toString().trim());
            Long fenXiaoJiaGe1=(long)(shiChangJiaGe*0.8);
            String shangJiaBianMa=TianMaoFenXiao.Function.encodingFunction.getMethodEncoding(this.getRequest().getParameter("shangJiaBianMa").trim());
            Long chanPinKuCun=Long.parseLong(this.getRequest().getParameter("chanPinKuCun").toString().trim());
            
            Long jingJieKuCun=Long.parseLong(this.getRequest().getParameter("jingJieKuCun").toString().trim());
            int shangPinId=Integer.parseInt(this.getRequest().getParameter("shangPinId").toString().trim());
            
            List<ShangPinBiao> shangpinxinxi=fabudanjianchanpinservice.QueryShangPin(shangPinId);
            KuCunBiao kucunbiao=new KuCunBiao();
            
            kucunbiao.setChanPinKuCun(chanPinKuCun);
            kucunbiao.setJingJieKuCun(jingJieKuCun);
            int kuCun=this.fabudanjianchanpinservice.addKuCunXinXi(kucunbiao);
            
            ShangPinBiao shangpinbiao =shangpinxinxi.get(0);
            shangpinbiao.setChanPinBiaoTi(shangPinBiaoTi);
//          shangpinbiao.setShangPinMingCheng(shangPinMingCheng);
            shangpinbiao.setChanPinXianId(chanPinXianId);
            shangpinbiao.setFenXiaoFangShiId(fenXiaoFangShiId);
            shangpinbiao.setShiChangJiaGe(shiChangJiaGe);  
            shangpinbiao.setLingShouJiaQuJian(lingShouQuJian);
            shangpinbiao.setDaiXiaoCaiGouJia(fenXiaoJiaGe1);
            shangpinbiao.setYingXiaoCaiGouJia(jingXiaoJiaGe1);
            shangpinbiao.setShangJiaBianMa(shangJiaBianMa);
            shangpinbiao.setKuCunId(kuCun);
            shangpinbiao.setDaoRuZhuangTai("已导入");
            this.fabudanjianchanpinservice.modifyPd(shangpinbiao);

            MSG="OK";
	        return SUCCESS;

	}
	public String queryChanPinZiLiao(){//获取产品资料
		
		String shangJiaBianMa=TianMaoFenXiao.Function.encodingFunction.getMethodEncoding(this.getRequest().getParameter("shangJiaBianMa").trim());
		String shangPinMingCheng=TianMaoFenXiao.Function.encodingFunction.getMethodEncoding(this.getRequest().getParameter("shangPinMingCheng").trim());
		int chanPinXian=Integer.parseInt(this.getRequest().getParameter("chanPinXianId").trim());
		int fenXiaoFangShiId=Integer.parseInt(this.getRequest().getParameter("fenXiaoFangShiId").trim());
        List cpzl = fabudanjianchanpinservice.QueryPd(chanPinXian,shangJiaBianMa,fenXiaoFangShiId,shangPinMingCheng);
		JSONArray jsArr = new JSONArray();
		JSONObject jsObj = new JSONObject();
		for(int i = 0;i<cpzl.size();i++){
			Object[] obj = (Object[])cpzl.get(i);
			jsObj.clear();
			jsObj.put("shangPinId", obj[0]);
			jsObj.put("shangJiaBianMa", obj[1]);
			jsObj.put("chanPinXianId", obj[2]);
			jsObj.put("daiXiaoCaiGouJia", obj[3]);
			jsObj.put("lingShouJiaQuJian", obj[4]);
			jsObj.put("zanTingXiaoShouFou", obj[5]);
			jsObj.put("gengXinShiJian", obj[6].toString());
			jsObj.put("fenXiaoFangShiId", obj[7]);
			jsObj.put("shangPinMingCheng", obj[8]);
			jsObj.put("chanPinBiaoTi", obj[9]);
			jsObj.put("chanPinKuCun", obj[10]);
			jsObj.put("jingJieKuCun", obj[11]);
			jsObj.put("shiChangJiaGe", obj[12]);
			jsObj.put("chanPinXian", obj[13]);
			jsObj.put("kuCunId", obj[14]);
			jsArr.add(jsObj);
		}
		HashMap<String,Object> jsMap = new HashMap<String,Object>();
		jsMap.put("rows", jsArr);
		JSObj = JSONObject.fromObject(jsMap);		
		return SUCCESS;
    }
public String queryChanPinZiLiaoWeiPuHuo(){//获取产品资料
		
		String shangJiaBianMa=TianMaoFenXiao.Function.encodingFunction.getMethodEncoding(this.getRequest().getParameter("shangJiaBianMa").trim());
		String shangPinMingCheng=TianMaoFenXiao.Function.encodingFunction.getMethodEncoding(this.getRequest().getParameter("shangPinMingCheng").trim());
		int chanPinXian=Integer.parseInt(this.getRequest().getParameter("chanPinXianId").trim());
		int fenXiaoFangShiId=Integer.parseInt(this.getRequest().getParameter("fenXiaoFangShiId").trim());
        List cpzl = fabudanjianchanpinservice.QueryWeiPuHuo(chanPinXian,shangJiaBianMa,fenXiaoFangShiId,shangPinMingCheng);
		JSONArray jsArr = new JSONArray();
		JSONObject jsObj = new JSONObject();
		for(int i = 0;i<cpzl.size();i++){
			Object[] obj = (Object[])cpzl.get(i);
			jsObj.clear();
			jsObj.put("shangPinId", obj[0]);
			jsObj.put("shangJiaBianMa", obj[1]);
			jsObj.put("chanPinXianId", obj[2]);
			jsObj.put("daiXiaoCaiGouJia", obj[3]);
			jsObj.put("lingShouJiaQuJian", obj[4]);
			jsObj.put("zanTingXiaoShouFou", obj[5]);
			jsObj.put("gengXinShiJian", obj[6].toString());
			jsObj.put("fenXiaoFangShiId", obj[7]);
			jsObj.put("shangPinMingCheng", obj[8]);
			jsObj.put("chanPinBiaoTi", obj[9]);
			jsObj.put("chanPinKuCun", obj[10]);
			jsObj.put("jingJieKuCun", obj[11]);
			jsObj.put("shiChangJiaGe", obj[12]);
			jsObj.put("chanPinXian", obj[13]);
			jsObj.put("kuCunId", obj[14]);
			jsArr.add(jsObj);
		}
		HashMap<String,Object> jsMap = new HashMap<String,Object>();
		jsMap.put("rows", jsArr);
		JSObj = JSONObject.fromObject(jsMap);		
		return SUCCESS;
    }
    public String zanTingXiaoShou(){
    	int shangPinId=Integer.parseInt(this.getRequest().getParameter("shangPinId").trim());
    	 List<ShangPinBiao> shangpinxinxi=fabudanjianchanpinservice.QueryShangPin(shangPinId);
    	 ShangPinBiao shangpinbiao =shangpinxinxi.get(0);
    	 shangpinbiao.setZanTingXiaoShouFou(false);
    	 shangpinbiao.setShangPinId(shangPinId);
    	 this.fabudanjianchanpinservice.modifyPd(shangpinbiao);
    	 
    	MSG="OK";
    	return SUCCESS;
    	
    }
    public String puHuo(){
    	int shangPinId=Integer.parseInt(this.getRequest().getParameter("shangPinId").trim());
    	 List<ShangPinBiao> shangpinxinxi=fabudanjianchanpinservice.QueryShangPin(shangPinId);
    	 ShangPinBiao shangpinbiao =shangpinxinxi.get(0);
    	 shangpinbiao.setPuHuoFou(true);
    	 shangpinbiao.setShangPinId(shangPinId);
    	 
    	 this.fabudanjianchanpinservice.modifyPd(shangpinbiao);
    	 
    	MSG="OK";
    	return SUCCESS;
    	
    }
    public String zanTingPuHuo(){
    	int shangPinId=Integer.parseInt(this.getRequest().getParameter("shangPinId").trim());
    	 List<ShangPinBiao> shangpinxinxi=fabudanjianchanpinservice.QueryShangPin(shangPinId);
    	 ShangPinBiao shangpinbiao =shangpinxinxi.get(0);
    	 shangpinbiao.setPuHuoFou(false);
    	 shangpinbiao.setZanTingXiaoShouFou(false);
    	 shangpinbiao.setShangPinId(shangPinId);
    	 
    	 this.fabudanjianchanpinservice.modifyPd(shangpinbiao);
    	 
    	MSG="OK";
    	return SUCCESS;
    	
    }
    public String kaiQiXiaoShou(){
    	int shangPinId=Integer.parseInt(this.getRequest().getParameter("shangPinId").trim());
    	 List<ShangPinBiao> shangpinxinxi=fabudanjianchanpinservice.QueryShangPin(shangPinId);
    	 ShangPinBiao shangpinbiao =shangpinxinxi.get(0);
    	 
    	 shangpinbiao.setZanTingXiaoShouFou(true);
    	 shangpinbiao.setShangPinId(shangPinId);
    	 
    	 this.fabudanjianchanpinservice.modifyPd(shangpinbiao);
    	 
    	MSG="OK";
    	return SUCCESS;
    	
    }
    
    public String getChanPinZiLiao(){
		int leiMuId = Integer.parseInt(this.getRequest().getParameter("leiMuId").toString());
		List lstChanPinXinXi = fabudanjianchanpinservice.QueryShangPinXinXi(shangPinLeiBieId);
//		List lstChanPinXinXi = this.fabudanjianchanpinservice.QueryShangPinXinXi(shangPinId);
		
		JSONArray jsArr = new JSONArray();
		JSONObject jsObj = new JSONObject();
        for(int i = 0;i<lstChanPinXinXi.size();i++){
			Object[] obj = (Object[])lstChanPinXinXi.get(i);
			jsObj.clear();
			jsObj.put("shangPinId", obj[0]);
			jsObj.put("shangPinMingCheng", obj[1]);
			jsObj.put("shangJiaBianMa", obj[2]);
			jsObj.put("shangPinLeiBie", obj[3]);
			jsObj.put("dangQianJiaGe", obj[4]);
			jsObj.put("daoRuZhuangTai", obj[5]);
			jsObj.put("shuLiang", obj[7]);
			jsObj.put("kuCunId", obj[8]);
			
//			jsObj.put("actionColumn","导入");
			jsArr.add(jsObj);
			
        }
        HashMap<String,Object> jsMap = new HashMap<String,Object>();
		jsMap.put("rows", jsArr);
		JSObj = JSONObject.fromObject(jsMap);		
		return SUCCESS;
	}
    
    
    
}
