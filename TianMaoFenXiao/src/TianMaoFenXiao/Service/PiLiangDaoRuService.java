package TianMaoFenXiao.Service;

import java.util.List;

import TianMaoFenXiao.IService.IPiLiangDaoRuService;
import TianMaoFenXiao.pojo.*;
import TianMaoFenXiao.IDAO.IDAO;

public class PiLiangDaoRuService implements IPiLiangDaoRuService {
	
	private IDAO dao;

	public IDAO getDao() {
		return dao;
	}

	public void setDao(IDAO dao) {
		this.dao = dao;
	}

	@Override
	public List QueryDianPu() {
		// TODO Auto-generated method stub
		try{
		    StringBuffer queryString=new StringBuffer();
		    queryString.append("SELECT dianpu.dianPuId,dianpu.dianZhuNiCheng,dianpu.dianPuMingCheng,dianpu.dianPuLeiBieId,DPlb.dianPuLeiBie ");
		    queryString.append("FROM DianPuBiao AS dianpu,DianPuLeiBieBiao AS DPlb ");
		    queryString.append("WHERE dianpu.dianPuLeiBieId=DPlb.dianPuLeiBieId");
		    return dao.findByHql(queryString.toString());
		}catch (Exception ex){
			return null;
		}
	}

	@Override
	public List QueryDianPuLeiBie() {
		// TODO Auto-generated method stub
		try{
		    StringBuffer queryString=new StringBuffer();
		    queryString.append("SELECT DPlb.dianPuLeiBieId,DPlb.dianPuLeiBie ");
		    queryString.append("FROM DianPuLeiBieBiao AS DPlb ");
		    return dao.findByHql(queryString.toString());
		}catch (Exception ex){
			return null;
		}
	}

	@Override
	public List QueryShangPinZhuangTai() {
		// TODO Auto-generated method stub
		try{
		    StringBuffer queryString=new StringBuffer();
		    queryString.append("SELECT SPzt.shangPinZhuangTaiId,SPzt.shangPinZhuangTai ");
		    queryString.append("FROM ShangPinZhuangTaiBiao AS SPzt ");
		    return dao.findByHql(queryString.toString());
		}catch (Exception ex){
			return null;
		}
	}

//	@Override
//	public List QueryShangPin(int dianPuLeiBieId, String shangPinMingCheng) {
//		// TODO Auto-generated method stub
//		try{
//		    StringBuffer queryString=new StringBuffer();
//		    queryString.append("SELECT Sp.shangPinId,Sp.shangPinMingCheng,Sp.shangJiaBianMa,Sp.dangQianJiaGe,Sp.shuLiang,Sp.baoBeiZhuangTai,Sp.daoRuZhuangTai,Sp.gengXinShiJian ");
//		    queryString.append("FROM ShangPinBiao AS Sp,DianPuBiao AS Dp ");
//		    queryString.append("WHERE Sp.dianPuId=Dp.dianPuId AND Dp.dianPuLeiBieId=? ");
//		    queryString.append("AND Sp.shangPinMingCheng like '%'+");
//		    queryString.append("?+'%'");
//			return dao.findByHql(queryString.toString(),new Object[]{dianPuLeiBieId,shangPinMingCheng});
//		}catch (Exception ex){
//			return null;
//		}
//	}

	@Override
	public List QueryAllShangPin(int[] DianPuId,String shangPinMingCheng,String SpZhuangTai) {
		// TODO Auto-generated method stub
		try{
		    String str="";
	        StringBuffer queryString=new StringBuffer();
	        queryString.append("SELECT Sp.shangPinId,Sp.shangPinMingCheng,Sp.shangJiaBianMa,Sp.dangQianJiaGe,Sp.shuLiang,Sp.baoBeiZhuangTai,Sp.daoRuZhuangTai,Sp.gengXinShiJian ");
	        queryString.append("FROM ShangPinBiao AS Sp,DianPuBiao AS Dp ");
	        queryString.append("WHERE Sp.dianPuId=Dp.dianPuId AND (");
	        for(int i=0;i<DianPuId.length;i++){
	    	    str=str+"Sp.dianPuId="+DianPuId[i]+" or ";
	        }
	        str=str.substring(0, str.length()-4);
		
			queryString.append(str+") AND Sp.shangPinMingCheng like '%'+?+'%' AND Sp.baoBeiZhuangTai=?");
			return dao.findByHql(queryString.toString(),new Object[]{shangPinMingCheng,SpZhuangTai});	    
		}catch (Exception ex){
			return null;
		}
	}

	@Override
	public List QureyFenXiaoFangShi() {
		// TODO Auto-generated method stub
		try{
		    StringBuffer queryString=new StringBuffer();
		    queryString.append("SELECT Fx.fenXiaoFangShiId,Fx.fenXiaoFangShi ");
		    queryString.append("FROM FenXiaoFangShiBiao AS Fx ");
		    return dao.findByHql(queryString.toString());
		}catch (Exception ex){
			return null;
		}
	}

	@Override
	public List QueryChanPinXian() {
		// TODO Auto-generated method stub
		try{
		    StringBuffer queryString=new StringBuffer();
		    queryString.append("SELECT cpx.chanPinXianId,cpx.chanPinXian ");
		    queryString.append("FROM ChanPinXianBiao AS cpx ");
		    return dao.findByHql(queryString.toString());
		}catch (Exception ex){
			return null;
		}
	}

	@Override
	public int addKuCun(KuCunBiao entity) {
		// TODO Auto-generated method stub
		try {
			return dao.addAndGetId4Integer(entity);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public ShangPinBiao QueryShangPinById(int shangPinId) {
		// TODO Auto-generated method stub
		try{
			List<ShangPinBiao> spb = dao.findByHql("FROM ShangPinBiao where shangPinId ="+shangPinId);
			return 	spb.get(0);
		}
		catch (Exception ex){
		    return null;
		}
	}

	@Override
	public boolean modifyShangPin(ShangPinBiao entity) {
		// TODO Auto-generated method stub
		try {
			return dao.edit(entity);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List QueryZhangHao(String zhangHao, String passWord) {
		// TODO Auto-generated method stub
		try{
		    StringBuffer queryString=new StringBuffer();
		    queryString.append("SELECT tbzh.taoBaoZhangHaoId,tbzh.niCheng ");
		    queryString.append("FROM TaoBaoZhangHao AS tbzh ");
		    queryString.append("WHERE tbzh.zhangHao=? AND tbzh.passWord=? ");
		    return dao.findByHql(queryString.toString(),new Object[]{zhangHao,passWord});
		}catch (Exception ex){
			return null;
		}
	}

	@Override
	public List QueryGongYingShang(int taoBaoZhangHaoId) {
		// TODO Auto-generated method stub
		try{
		    StringBuffer queryString=new StringBuffer();
		    queryString.append("SELECT gys.gongYingShangId ");
		    queryString.append("FROM GongYingShangBiao AS gys ");
		    queryString.append("WHERE gys.taoBaoZhangHaoId=? ");
		    return dao.findByHql(queryString.toString(),new Object[]{taoBaoZhangHaoId});
		}catch (Exception ex){
			return null;
		}
	}

	@Override
	public List QueryWuLiuGongSi() {
		// TODO Auto-generated method stub
		try{
		    StringBuffer queryString=new StringBuffer();
		    queryString.append("SELECT wl.wuLiuId,wl.wuLiuGongSi ");
		    queryString.append("FROM WuLiuBiao AS wl ");
		    return dao.findByHql(queryString.toString());
		}catch (Exception ex){
			return null;
		}
	}

	@Override
	public List QueryShangPinByDianPu(int[] DianPuId, int dianPuLeiBieId,
			String shangPinMingCheng,String SpZhuangTai) {
		// TODO Auto-generated method stub
		try{
		    String str="";
	        StringBuffer queryString=new StringBuffer();
	        queryString.append("SELECT Sp.shangPinId,Sp.shangPinMingCheng,Sp.shangJiaBianMa,Sp.dangQianJiaGe,Sp.shuLiang,Sp.baoBeiZhuangTai,Sp.daoRuZhuangTai,Sp.gengXinShiJian ");
	        queryString.append("FROM ShangPinBiao AS Sp,DianPuBiao AS Dp,DianPuLeiBieBiao AS lb ");
	        queryString.append("WHERE Sp.dianPuId=Dp.dianPuId AND Dp.dianPuLeiBieId=lb.dianPuLeiBieId AND (");
	        for(int i=0;i<DianPuId.length;i++){
	    	    str=str+"Sp.dianPuId="+DianPuId[i]+" or ";
	        }
	        str=str.substring(0, str.length()-4);
		
			queryString.append(str+") AND Dp.dianPuLeiBieId=? AND Sp.shangPinMingCheng like '%'+?+'%' AND Sp.baoBeiZhuangTai=?");
			return dao.findByHql(queryString.toString(),new Object[]{dianPuLeiBieId,shangPinMingCheng,SpZhuangTai});
		}catch (Exception ex){
			return null;
		}
	}





	
	

}
