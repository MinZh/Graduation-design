package TianMaoFenXiao.IService;

import java.util.List;
import TianMaoFenXiao.pojo.*;

public interface IYaoQingFenXiaoShangService {
	List QueryYaoQingJiLu();	//查询邀请记录
	List QueryFenXiaoShangByID(int fenXiaoShangId);	//查询被选中的分销商
	public int addYaoQingFenXiaoBiao(YaoQingFenXiaoShangBiao yaoqingbiao);//新增邀请记录
}
