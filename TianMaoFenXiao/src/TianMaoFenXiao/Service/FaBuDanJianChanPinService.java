package TianMaoFenXiao.Service;
import java.util.ArrayList;
import java.util.List;

import TianMaoFenXiao.pojo.*;

import TianMaoFenXiao.IDAO.IDAO;
import TianMaoFenXiao.IService.IFaBuDanJianChanPinService;
public class FaBuDanJianChanPinService implements IFaBuDanJianChanPinService {
	private IDAO dao;

	public IDAO getDao() {
		return dao;
	}

	public void setDao(IDAO dao) {
		this.dao = dao;
	}
	@Override
	public List getLeiMu() {
		// TODO Auto-generated method stub
		try{
			
			StringBuffer queryString=new StringBuffer();
			queryString.append("SELECT LeiMuBiao.leiMuId,LeiMuBiao.leiMuMingCheng ");
			queryString.append("FROM LeiMuBiao AS LeiMuBiao ");
			return dao.findByHql(queryString.toString());
		}catch(Exception ex){
			return null;
		}
	}
	@Override
	public List getFenXiaoFangShi() {
		// TODO Auto-generated method stub
		try{
			
			StringBuffer queryString=new StringBuffer();
			queryString.append("SELECT FenXiaoFangShiBiao.fenXiaoFangShiId,FenXiaoFangShiBiao.fenXiaoFangShi ");
			queryString.append("FROM FenXiaoFangShiBiao AS FenXiaoFangShiBiao ");
			return dao.findByHql(queryString.toString());
		}catch(Exception ex){
			return null;
		}
	}
	@Override
	public List getChanPinXian() {
		// TODO Auto-generated method stub
		try{
			
			StringBuffer queryString=new StringBuffer();
			queryString.append("SELECT ChanPinXianBiao.chanPinXianId,ChanPinXianBiao.chanPinXian ");
			queryString.append("FROM ChanPinXianBiao AS ChanPinXianBiao ");
			return dao.findByHql(queryString.toString());
		}catch(Exception ex){
			return null;
		}
	}
	@Override
	public List getChanPinZiLiao() {//谁树节点类目表
		// TODO Auto-generated method stub
		try{
			StringBuffer queryString=new StringBuffer();
			queryString.append("SELECT LeiMuBiao.leiMuId,LeiMuBiao.leiMuMingCheng ");
			queryString.append("FROM LeiMuBiao AS LeiMuBiao ");
			return dao.findByHql(queryString.toString());
		}catch(Exception ex){
			return null;
		}
	}
	@Override
	public List getChanPinLeiBie(int  leiMuId) {
		// TODO Auto-generated method stub
		try{
	        StringBuffer queryString=new StringBuffer();
	        queryString.append("SELECT ShangPinLeiBieBiao.shangPinLeiBieId,ShangPinLeiBieBiao.shangPinLeiBie ");
	        queryString.append("FROM ShangPinLeiBieBiao AS ShangPinLeiBieBiao ");
	        queryString.append("WHERE ShangPinLeiBieBiao.leiMuId=?");
	        return this.dao.findByHql(queryString.toString(),new Object[]{leiMuId});
		}catch(Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	@Override
//	public List QueryShangPinXinXi(int shangPinId,int lvl)
	public List QueryShangPinXinXi(int shangPinLeiBieId) {
		// TODO Auto-generated method stub
		StringBuffer query=new StringBuffer(" SELECT ShangPinBiao.shangPinId,ShangPinBiao.shangPinMingCheng,ShangPinBiao.shangJiaBianMa,ShangPinLeiBieBiao.shangPinLeiBie," +
				" ShangPinBiao.dangQianJiaGe,ShangPinBiao.daoRuZhuangTai,ShangPinLeiBieBiao.shangPinLeiBieId,ShangPinBiao.shuLiang,KuCunBiao.kuCunId,KuCunBiao.chanPinKuCun,KuCunBiao.jingJieKuCun ");
		query.append(" FROM  ShangPinBiao AS ShangPinBiao,ShangPinLeiBieBiao AS ShangPinLeiBieBiao,KuCunBiao AS KuCunBiao ");
		query.append(" WHERE ShangPinBiao.shangPinLeiBieId=ShangPinLeiBieBiao.shangPinLeiBieId AND ShangPinBiao.kuCunId = KuCunBiao.kuCunId AND  ShangPinBiao.zanTingXiaoShouFou='False' AND" +
				" ShangPinBiao.puHuoFou='False' AND ShangPinBiao.daoRuZhuangTai='未导入' AND ShangPinBiao.shangPinLeiBieId=? ");

			try {
				return this.dao.findByHql(query.toString(),new Object[]{shangPinLeiBieId});
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
		
    }
	@Override
	public ShangPinBiao  QueryChanPinById(int shangPinId)
	{
		try{
			//StringBuffer queryString=new StringBuffer();
			List<ShangPinBiao> ShangPinBiao = dao.findByHql("FROM ShangPinBiao where shangPinId ="+shangPinId);

			return 	ShangPinBiao.get(0);
		}
		catch (Exception ex){
		    return null;
		}
	}
	@Override
	public boolean modifyPd(ShangPinBiao entity) {
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
	public List<ShangPinBiao> QueryShangPinAll() {
		// TODO Auto-generated method stub
				try{
					//StringBuffer queryString=new StringBuffer();
					return dao.findByHql("FROM ShangPinBiao");
				}
				catch (Exception ex){
				    return null;
				}
	}
	@Override
	public boolean modifyKuCun(KuCunBiao entity) {
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
	public List<ShangPinBiao> QueryShangPin(int shangPinId) {
		List<ShangPinBiao> list=null;
		try{
			StringBuffer queryString=new StringBuffer();
		        queryString.append("FROM ShangPinBiao AS ShangPinBiao WHERE ShangPinBiao.shangPinId=?");
			    list=dao.findByHql(queryString.toString(),new Object[]{shangPinId});
			return list;
		}
		catch (Exception ex){
			return null;
		}
		}
	@Override
	public List<KuCunBiao> QueryKuCunXinXi(int kuCunId) {
		List<KuCunBiao> list=null;
		try{
			StringBuffer queryString=new StringBuffer();
			    queryString.append(" SELECT KuCunBiao.kuCunId,KuCunBiao.chanPinKuCun,KuCunBiao.jingJieKuCun ");
		        queryString.append(" FROM KuCunBiao AS KuCunBiao ");
		        queryString.append(" WHERE KuCunBiao.kuCunId=? " );
			    list=dao.findByHql(queryString.toString(),new Object[]{kuCunId});
			return list;
		}
		catch (Exception ex){
			return null;
		}
		}
	@Override
	public int addKuCunXinXi(KuCunBiao entity) {
		try {
			return dao.addAndGetId4Integer(entity);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	@Override//已铺货
	public List QueryPd(int chanPinXianId, String shangJiaBianMa, int fenXiaoFangShiId,String shangPinMingCheng) {
		// TODO Auto-generated method stub
		try{
		    StringBuffer queryString=new StringBuffer();
		  
		    queryString.append(" SELECT ShangPinBiao.shangPinId,ShangPinBiao.shangJiaBianMa,ChanPinXianBiao.chanPinXianId,ShangPinBiao.daiXiaoCaiGouJia,ShangPinBiao.lingShouJiaQuJian," +
		    		" ShangPinBiao.zanTingXiaoShouFou,ShangPinBiao.gengXinShiJian,FenXiaoFangShiBiao.fenXiaoFangShiId,ShangPinBiao.shangPinMingCheng,ShangPinBiao.chanPinBiaoTi," +
		    		"KuCunBiao.chanPinKuCun,KuCunBiao.jingJieKuCun,ShangPinBiao.shiChangJiaGe,ChanPinXianBiao.chanPinXian,KuCunBiao.kuCunId ");
		    queryString.append("FROM ShangPinBiao AS ShangPinBiao,FenXiaoFangShiBiao AS FenXiaoFangShiBiao,ChanPinXianBiao AS ChanPinXianBiao,KuCunBiao AS KuCunBiao ");
		   
		    if(chanPinXianId==0 && fenXiaoFangShiId==0){
		    	queryString.append("WHERE ShangPinBiao.chanPinXianId=ChanPinXianBiao.chanPinXianId AND ShangPinBiao.fenXiaoFangShiId=FenXiaoFangShiBiao.fenXiaoFangShiId AND" +
			    		" ShangPinBiao.kuCunId=KuCunBiao.kuCunId AND  ShangPinBiao.puHuoFou='true' AND ShangPinBiao.daoRuZhuangTai='已导入' ");
			    queryString.append("AND ShangPinBiao.shangJiaBianMa like '%'+");
			    queryString.append("?+'%' AND ");
			    queryString.append(" ShangPinBiao.shangPinMingCheng like '%'+");
			    queryString.append("?+'%'");
			    
			    return dao.findByHql(queryString.toString(),new Object[]{shangJiaBianMa,shangPinMingCheng});
		    	
		    }
		    if(chanPinXianId==0 && fenXiaoFangShiId!=0){
		    	queryString.append("WHERE ShangPinBiao.chanPinXianId=ChanPinXianBiao.chanPinXianId AND ShangPinBiao.fenXiaoFangShiId=FenXiaoFangShiBiao.fenXiaoFangShiId AND" +
			    		" ShangPinBiao.kuCunId=KuCunBiao.kuCunId AND ShangPinBiao.daoRuZhuangTai='已导入' AND ShangPinBiao.puHuoFou=true AND  ShangPinBiao.fenXiaoFangShiId=? ");
			    queryString.append("AND ShangPinBiao.shangJiaBianMa like '%'+");
			    queryString.append("?+'%' AND ");
			    queryString.append(" ShangPinBiao.shangPinMingCheng like '%'+");
			    queryString.append("?+'%'");
			    
			    return dao.findByHql(queryString.toString(),new Object[]{fenXiaoFangShiId,shangJiaBianMa,shangPinMingCheng});
		    	
		    	
		    }
		    if(chanPinXianId !=0 && fenXiaoFangShiId==0){
		    	
		    	 queryString.append("WHERE ShangPinBiao.chanPinXianId=ChanPinXianBiao.chanPinXianId AND ShangPinBiao.fenXiaoFangShiId=FenXiaoFangShiBiao.fenXiaoFangShiId AND" +
				    		" ShangPinBiao.kuCunId=KuCunBiao.kuCunId AND ShangPinBiao.daoRuZhuangTai='已导入' AND ShangPinBiao.puHuoFou=true AND ShangPinBiao.chanPinXianId=?  ");
				    queryString.append("AND ShangPinBiao.shangJiaBianMa like '%'+");
				    queryString.append("?+'%' AND ");
				    queryString.append(" ShangPinBiao.shangPinMingCheng like '%'+");
				    queryString.append("?+'%'");
				    return dao.findByHql(queryString.toString(),new Object[]{chanPinXianId,shangJiaBianMa,shangPinMingCheng});
		    	
		    }
		    
		    else{
		    	    queryString.append("WHERE ShangPinBiao.chanPinXianId=ChanPinXianBiao.chanPinXianId AND ShangPinBiao.fenXiaoFangShiId=FenXiaoFangShiBiao.fenXiaoFangShiId AND" +
				    		" ShangPinBiao.kuCunId=KuCunBiao.kuCunId AND  ShangPinBiao.puHuoFou='true' AND ShangPinBiao.daoRuZhuangTai='已导入' AND  ShangPinBiao.chanPinXianId=? AND  ShangPinBiao.fenXiaoFangShiId=?  ");
				    queryString.append("AND ShangPinBiao.shangJiaBianMa like '%'+");
				    queryString.append("?+'%' AND ");
				    queryString.append(" ShangPinBiao.shangPinMingCheng like '%'+");
				    queryString.append("?+'%'");
		    }
		    	
		    
			    return dao.findByHql(queryString.toString(),new Object[]{chanPinXianId,fenXiaoFangShiId,shangJiaBianMa,shangPinMingCheng});
		}catch (Exception ex){
			return null;
		}
	}
	@Override
//	public List QueryShangPinXinXi(int shangPinId,int lvl)
	public List QueryChanPinMingXi(int shangPinId) {
		// TODO Auto-generated method stub
		StringBuffer query=new StringBuffer(" SELECT ShangPinBiao.shangPinId,ShangPinBiao.shangJiaBianMa,ShangPinBiao.chanPinBiaoTi,ChanPinXianBiao.chanPinXianId,ChanPinXianBiao.chanPinXian,ShangPinBiao.shiChangJiaGe,ShangPinBiao.shuLiang, " +
				" KuCunBiao.chanPinKuCun,KuCunBiao.jingJieKuCun,FenXiaoFangShiBiao.fenXiaoFangShiId ");
		query.append(" FROM  ShangPinBiao AS ShangPinBiao,FenXiaoFangShiBiao AS FenXiaoFangShiBiao,KuCunBiao AS KuCunBiao,ChanPinXianBiao AS ChanPinXianBiao ");
		query.append(" WHERE ShangPinBiao.fenXiaoFangShiId=FenXiaoFangShiBiao.fenXiaoFangShiId AND ShangPinBiao.kuCunId = KuCunBiao.kuCunId  AND " +
				" ShangPinBiao.chanPinXianId=ChanPinXianBiao.chanPinXianId AND ShangPinBiao.shangPinId=? ");

			try {
				return this.dao.findByHql(query.toString(),new Object[]{shangPinId});
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
		
    }

	@Override//未铺货
	public List QueryWeiPuHuo(int chanPinXianId, String shangJiaBianMa,
			int fenXiaoFangShiId, String shangPinMingCheng) {
		try{
		    StringBuffer queryString=new StringBuffer();
		  
		    queryString.append(" SELECT ShangPinBiao.shangPinId,ShangPinBiao.shangJiaBianMa,ChanPinXianBiao.chanPinXianId,ShangPinBiao.daiXiaoCaiGouJia,ShangPinBiao.lingShouJiaQuJian," +
		    		" ShangPinBiao.zanTingXiaoShouFou,ShangPinBiao.gengXinShiJian,FenXiaoFangShiBiao.fenXiaoFangShiId,ShangPinBiao.shangPinMingCheng,ShangPinBiao.chanPinBiaoTi," +
		    		"KuCunBiao.chanPinKuCun,KuCunBiao.jingJieKuCun,ShangPinBiao.shiChangJiaGe,ChanPinXianBiao.chanPinXian,KuCunBiao.kuCunId ");
		    queryString.append("FROM ShangPinBiao AS ShangPinBiao,FenXiaoFangShiBiao AS FenXiaoFangShiBiao,ChanPinXianBiao AS ChanPinXianBiao,KuCunBiao AS KuCunBiao ");
		   
		    if(chanPinXianId==0 && fenXiaoFangShiId==0){
		    	queryString.append("WHERE ShangPinBiao.chanPinXianId=ChanPinXianBiao.chanPinXianId AND ShangPinBiao.fenXiaoFangShiId=FenXiaoFangShiBiao.fenXiaoFangShiId AND" +
			    		" ShangPinBiao.kuCunId=KuCunBiao.kuCunId AND  ShangPinBiao.puHuoFou=false AND ShangPinBiao.daoRuZhuangTai='已导入' AND  ShangPinBiao.zanTingXiaoShouFou='False' ");
			    queryString.append("AND ShangPinBiao.shangJiaBianMa like '%'+");
			    queryString.append("?+'%' AND ");
			    queryString.append(" ShangPinBiao.shangPinMingCheng like '%'+");
			    queryString.append("?+'%'");
			    
			    return dao.findByHql(queryString.toString(),new Object[]{shangJiaBianMa,shangPinMingCheng});
		    	
		    }
		    if(chanPinXianId==0 && fenXiaoFangShiId!=0){
		    	queryString.append("WHERE ShangPinBiao.chanPinXianId=ChanPinXianBiao.chanPinXianId AND ShangPinBiao.fenXiaoFangShiId=FenXiaoFangShiBiao.fenXiaoFangShiId AND" +
			    		" ShangPinBiao.kuCunId=KuCunBiao.kuCunId AND  ShangPinBiao.puHuoFou='False' AND ShangPinBiao.daoRuZhuangTai='已导入' AND  ShangPinBiao.fenXiaoFangShiId=? ");
			    queryString.append("AND ShangPinBiao.shangJiaBianMa like '%'+");
			    queryString.append("?+'%' AND ");
			    queryString.append(" ShangPinBiao.shangPinMingCheng like '%'+");
			    queryString.append("?+'%'");
			    
			    return dao.findByHql(queryString.toString(),new Object[]{fenXiaoFangShiId,shangJiaBianMa,shangPinMingCheng});
		    	
		    	
		    }
		    if(chanPinXianId !=0 && fenXiaoFangShiId==0){
		    	
		    	 queryString.append("WHERE ShangPinBiao.chanPinXianId=ChanPinXianBiao.chanPinXianId AND ShangPinBiao.fenXiaoFangShiId=FenXiaoFangShiBiao.fenXiaoFangShiId AND" +
				    		" ShangPinBiao.kuCunId=KuCunBiao.kuCunId AND  ShangPinBiao.puHuoFou='False' AND ShangPinBiao.daoRuZhuangTai='已导入' AND  ShangPinBiao.chanPinXianId=?  ");
				    queryString.append("AND ShangPinBiao.shangJiaBianMa like '%'+");
				    queryString.append("?+'%' AND ");
				    queryString.append(" ShangPinBiao.shangPinMingCheng like '%'+");
				    queryString.append("?+'%'");
				    return dao.findByHql(queryString.toString(),new Object[]{chanPinXianId,shangJiaBianMa,shangPinMingCheng});
		    	
		    }
		    	
		    
		    else{
		    	    queryString.append("WHERE ShangPinBiao.chanPinXianId=ChanPinXianBiao.chanPinXianId AND ShangPinBiao.fenXiaoFangShiId=FenXiaoFangShiBiao.fenXiaoFangShiId AND" +
				    		" ShangPinBiao.kuCunId=KuCunBiao.kuCunId AND  ShangPinBiao.puHuoFou='False' AND ShangPinBiao.chanPinXianId=? AND ShangPinBiao.daoRuZhuangTai='已导入' AND  ShangPinBiao.fenXiaoFangShiId=?  ");
				    queryString.append("AND ShangPinBiao.shangJiaBianMa like '%'+");
				    queryString.append("?+'%' AND ");
				    queryString.append(" ShangPinBiao.shangPinMingCheng like '%'+");
				    queryString.append("?+'%'");
		    }
		    	
		    
			    return dao.findByHql(queryString.toString(),new Object[]{chanPinXianId,fenXiaoFangShiId,shangJiaBianMa,shangPinMingCheng});
		}catch (Exception ex){
			return null;
		}
	}

	@Override
	public List QueryShangPinXinXi1(int shangPinId, int lvl) {
		// TODO Auto-generated method stub
		StringBuffer query=new StringBuffer(" SELECT ShangPinBiao.shangPinId,ShangPinBiao.shangPinMingCheng,ShangPinBiao.shangJiaBianMa,ShangPinLeiBieBiao.shangPinLeiBie," +
				" ShangPinBiao.dangQianJiaGe,ShangPinBiao.daoRuZhuangTai,ShangPinLeiBieBiao.shangPinLeiBieId,ShangPinBiao.shuLiang,KuCunBiao.kuCunId,KuCunBiao.chanPinKuCun,KuCunBiao.jingJieKuCun ");
		query.append(" FROM  ShangPinBiao AS ShangPinBiao,ShangPinLeiBieBiao AS ShangPinLeiBieBiao,KuCunBiao AS KuCunBiao,LeiMuBiao AS LeiMuBiao ");
		query.append(" WHERE ShangPinBiao.shangPinLeiBieId=ShangPinLeiBieBiao.shangPinLeiBieId AND ShangPinBiao.kuCunId = KuCunBiao.kuCunId AND ShangPinBiao.zanTingXiaoShouFou='False' AND " +
				" ShangPinBiao.puHuoFou='False' AND ShangPinBiao.daoRuZhuangTai='未导入' AND ShangPinLeiBieBiao.leiMuId=LeiMuBiao.leiMuId ");
		switch(lvl){
		case 1:{
			query.append(" AND ShangPinLeiBieBiao.leiMuId=?  ");
		}break;
		case 2:{
			query.append(" AND ShangPinLeiBieBiao.shangPinLeiBieId=? ");
		}break;
		}
		try {
	   return this.dao.findByHql(query.toString(),new Object[]{shangPinId});
             } catch (Exception e) {
	   // TODO Auto-generated catch block
	  e.printStackTrace();
	  return null;
             }
	}
}
