package TianMaoFenXiao.IService;
import java.util.List;
import TianMaoFenXiao.pojo.*;
public interface IFaBuDanJianChanPinService {
	public List getLeiMu();
	public List getChanPinZiLiao();
	public List getChanPinLeiBie(int  leiMuId);
	public List QueryShangPinXinXi(int shangPinId);
	public List getFenXiaoFangShi();
	public List getChanPinXian();
	public ShangPinBiao  QueryChanPinById(int shangPinId);
	public boolean modifyPd(ShangPinBiao entity);
	public List<ShangPinBiao> QueryShangPinAll();
	public boolean modifyKuCun(KuCunBiao entity);
	public List<ShangPinBiao> QueryShangPin(int shangPinId);
	public List<KuCunBiao> QueryKuCunXinXi(int kuCunId);
	public int addKuCunXinXi(KuCunBiao entity);
	public List QueryPd(int chanPinXianId, String shangJiaBianMa, int fenXiaoFangShiId,String  shangPinMingCheng);
	public List QueryChanPinMingXi(int shangPinId);
	public List QueryWeiPuHuo(int chanPinXianId, String shangJiaBianMa, int fenXiaoFangShiId,String  shangPinMingCheng);
	public List QueryShangPinXinXi1(int shangPinId,int lvl);
}
