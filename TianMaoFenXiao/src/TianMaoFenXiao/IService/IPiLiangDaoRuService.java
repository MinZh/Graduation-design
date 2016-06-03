package TianMaoFenXiao.IService;

import java.util.List;
import TianMaoFenXiao.pojo.*;

public interface IPiLiangDaoRuService {
	
	public List QueryDianPu();
	
	public List QueryDianPuLeiBie();
	
	public List QueryShangPinZhuangTai();
	
//	public List QueryShangPin(int dianPuLeiBieId,String shangPinMingCheng);
	
	public List QueryShangPinByDianPu(int[] DianPuId,int dianPuLeiBieId,String shangPinMingCheng,String SpZhuangTai);
	
	public List QueryAllShangPin(int[] DianPuId,String shangPinMingCheng,String SpZhuangTai);
	
	public List QureyFenXiaoFangShi();
	
	public List QueryChanPinXian();
	
	public int addKuCun(KuCunBiao entity);
	
	public ShangPinBiao QueryShangPinById(int shangPinId);
	
	public boolean modifyShangPin(ShangPinBiao entity);
	
	public List QueryZhangHao(String zhangHao,String passWord);
	
	public List QueryGongYingShang(int taoBaoZhangHaoId);
	
	/*---------------------------------------------------------------------·¢»õ²Ù×÷-----------------------------------------------------------------*/
	
	public List QueryWuLiuGongSi();

}
