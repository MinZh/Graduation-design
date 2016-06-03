package TianMaoFenXiao.Service;

import java.util.List;
import TianMaoFenXiao.IDAO.IDAO;
import TianMaoFenXiao.IService.ICaiGouDanFaHuoService;
import TianMaoFenXiao.pojo.*;

public class CaiGouDanFaHuoService implements ICaiGouDanFaHuoService{
	private IDAO dao;

	public IDAO getDao() {
		return dao;
	}

	public void setDao(IDAO dao) {
		this.dao = dao;
	}
	
	@Override	
	public List QueryPayType(){
		try{
			StringBuffer queryString=new StringBuffer();
			queryString.append("SELECT zhifu.zhiFuLeiXingId,zhifu.zhiFuLeiXing ");			
			queryString.append("FROM ZhiFuLeiXingBiao AS zhifu ");
//			queryString.append("WHERE ");
				return dao.findByHql(queryString.toString());
		}catch (Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	
	@Override	
	public List QueryProcureType(){
		try{
			StringBuffer queryString=new StringBuffer();
			queryString.append("SELECT caigouleixing.caiGouZhuangTaiId,caigouleixing.caiGouZhuangTai ");			
			queryString.append("FROM CaiGouZhuangTaiBiao AS caigouleixing ");
				return dao.findByHql(queryString.toString());
		}catch (Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	
	@Override	
	public List QueryCaiGouDanByID0(int zhiFuLeiXingId,int caiGouZhuangTaiId){
		try{
			StringBuffer queryString=new StringBuffer();
			queryString.append("SELECT fangshi.fenXiaoFangShi,caigoudan.caiGouDanBianHao,caigoudan.dingDanBianHao," +
					"caigoudan.shouHuoRen,caigoudan.chengJiaoTime,zhifu.zhiFuLeiXing,caigoudan.caiGouDanId ");			
			queryString.append("FROM CaiGouDanBiao AS caigoudan," +
					"FenXiaoFangShiBiao AS fangshi,ZhiFuLeiXingBiao AS zhifu ");
			queryString.append("WHERE caigoudan.fenXiaoFangShiId=fangshi.fenXiaoFangShiId " +
					"AND caigoudan.zhuFuLeiXingId=zhifu.zhiFuLeiXingId ");
			queryString.append("AND caigoudan.zhuFuLeiXingId=? AND caigoudan.caiGouZhuangTaiId=? ");
				return dao.findByHql(queryString.toString(),new Object[]{zhiFuLeiXingId,caiGouZhuangTaiId});
		}catch (Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	
	
	@Override	
	public List QueryCaiGouDanByID1(int caigoudanID){
		try{
			StringBuffer queryString=new StringBuffer();
			queryString.append("SELECT shangpin.shangPinMingCheng,shangpin.dangQianJiaGe,mingxi.caiGouJia," +
					"mingxi.shuLiang,fenxiaoshang.fenXiaoShang,caigoudan.shiShouKuan,caigoudan.zongJia," +
					"caigoudan.kuaiDiFei,zhuangtai.caiGouZhuangTai,shangpin.shangJiaBianMa ");			
			queryString.append("FROM ShangPinBiao AS shangpin,CaiGouDanMingXiBiao AS mingxi," +
					"CaiGouDanBiao AS caigoudan,FenXiaoShangBiao AS fenxiaoshang," +
					"CaiGouZhuangTaiBiao AS zhuangtai ");
			queryString.append("WHERE mingxi.shangPinId=shangpin.shangPinId AND mingxi.caiGouDanId=caigoudan.caiGouDanId " +
					"AND caigoudan.fenXiaoShangId=fenxiaoshang.fenXiaoShangId AND caigoudan.caiGouZhuangTaiId=zhuangtai.caiGouZhuangTaiId ");
			queryString.append("AND caigoudan.caiGouDanId=? ");
				return dao.findByHql(queryString.toString(),new Object[]{caigoudanID});
		}catch (Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
//	
//	@Override
//	public List QueryCaiGouDanMingXiByID(int caigoudanID){
//		try{
//			StringBuffer queryString=new StringBuffer();
//			queryString.append("SELECT shangpin.shangPinMingCheng, ");			
//			queryString.append("FROM CaiGouDanMingXiBiao AS mingxi,ShangPinBiao AS shangpin ");
//			queryString.append("WHERE  ");
//			queryString.append("AND caigoudan.caiGouDanId=? ");
//				return dao.findByHql(queryString.toString(),new Object[]{caigoudanID});
//		}catch (Exception ex){
//			ex.printStackTrace();
//			return null;
//		}
//	}
	
	@Override
	public List QueryCaiGouDanByID(int caigoudanID){
		try{
			StringBuffer queryString=new StringBuffer();
			queryString.append("SELECT caigoudan.caiGouDanBianHao,caigoudan.chuangJianTime,fangshi.fenXiaoFangShi," +
					"caigoudan.shouHuoDiZhi,caigoudan.youBian,caigoudan.shouHuoRen,caigoudan.shouJiHaoMa ");			
			queryString.append("FROM CaiGouDanBiao AS caigoudan,FenXiaoFangShiBiao AS fangshi ");
			queryString.append("WHERE caigoudan.fenXiaoFangShiId=fangshi.fenXiaoFangShiId ");
			queryString.append("AND caigoudan.caiGouDanId=? ");
				return dao.findByHql(queryString.toString(),new Object[]{caigoudanID});
		}catch (Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List QueryMyDiZhiByID(int taobaoID){
		try{
			StringBuffer queryString=new StringBuffer();
			queryString.append("SELECT dizhi.faOrTui,dizhi.diZhi,dizhi.youBian,dizhi.lianXiRen,dizhi.shouJiHaoMa ");			
			queryString.append("FROM DiZhiXinXiBiao AS dizhi,GongYingShangBiao AS gys ");
			queryString.append("WHERE dizhi.gongYingShangId=gys.gongYingShangId ");
			queryString.append("AND gys.taoBaoZhangHaoId=? ");
				return dao.findByHql(queryString.toString(),new Object[]{taobaoID});
		}catch (Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	
	
	@Override
	public CaiGouDanBiao getCaiGouDanBiaoByID(int caigoudanId){
		try{
//			StringBuffer queryString=new StringBuffer();			
//			queryString.append("FROM CaiGouDanBiao AS caigoudan ");
//			queryString.append("WHERE caigoudan.caiGouDanId=? ");
//				return dao.findByHql(queryString.toString(),new Object[]{caigoudanId});
			List<CaiGouDanBiao> cgd = dao.findByHql("FROM CaiGouDanBiao where caiGouDanId ="+caigoudanId);
				return 	cgd.get(0);
		}catch (Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	
	public boolean editCaiGouDanBiao(CaiGouDanBiao caigoudanbiao){
		try {
			
			return dao.edit(caigoudanbiao);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}		
	}
}
