package TianMaoFenXiao.Service;

import java.util.List;
import TianMaoFenXiao.IDAO.IDAO;
import TianMaoFenXiao.IService.IYaoQingFenXiaoShangService;
import TianMaoFenXiao.pojo.*;

public class YaoQingFenXiaoShangService implements IYaoQingFenXiaoShangService {
	private IDAO dao;

	public IDAO getDao() {
		return dao;
	}

	public void setDao(IDAO dao) {
		this.dao = dao;
	}
	
	@Override	
	public List QueryYaoQingJiLu(){//²éÑ¯ÑûÇë¼ÇÂ¼
		try{
			StringBuffer queryString=new StringBuffer();
			queryString.append("SELECT fenxiaoshang.fenXiaoShang,fenxiaoshang.xinYongDengJi,fenxiaoshang.haoPinLv, " +
					"fenxiaoshang.kaiDianShiJian,leimu.leiMuMingCheng,yaoqing.yaoQingShiJian,fangshi.fenXiaoFangShi," +
					"yaoqing.yaoQingZhuangTai,yaoqing.juJueLiYou ");			
			queryString.append("FROM YaoQingFenXiaoShangBiao AS yaoqing, FenXiaoShangBiao AS fenxiaoshang, " +
					"FenXiaoFangShiBiao AS fangshi, LeiMuBiao AS leimu ");
			queryString.append("WHERE yaoqing.fenXiaoShangId=fenxiaoshang.fenXiaoShangId " +
					"AND yaoqing.fenXiaoFangShiId=fangshi.fenXiaoFangShiId AND fenxiaoshang.leiMuId=leimu.leiMuId ");
				return dao.findByHql(queryString.toString());
		}catch (Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List QueryFenXiaoShangByID(int fenXiaoShangId){
		try{
			StringBuffer queryString=new StringBuffer();
			queryString.append("SELECT fenxiaoshang.fenXiaoShang,fenxiaoshang.xinYongDengJi,fenxiaoshang.haoPinLv, " +
					"fenxiaoshang.kaiDianShiJian,leimu.leiMuMingCheng ");			
			queryString.append("FROM FenXiaoShangBiao AS fenxiaoshang, LeiMuBiao AS leimu ");
			queryString.append("WHERE fenxiaoshang.leiMuId=leimu.leiMuId " +
					"AND fenxiaoshang.fenXiaoShangId=? ");
				return dao.findByHql(queryString.toString(),new Object[]{fenXiaoShangId});
		}catch (Exception ex){
			ex.printStackTrace();
			return null;
		}
	}
	
	@Override
	public int addYaoQingFenXiaoBiao(YaoQingFenXiaoShangBiao yaoqingbiao){
		try {
			return dao.addAndGetId4Integer(yaoqingbiao);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
}
