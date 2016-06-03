package TianMaoFenXiao.IService;

import java.util.List;
import TianMaoFenXiao.pojo.*;

public interface ICaiGouDanFaHuoService {
	List QueryPayType();	//查询支付类型
	List QueryProcureType();	//查询采购单类型
	/******多条件查询采购单*************/
	List QueryCaiGouDanByID0(int zhiFuLeiXingId,int caiGouZhuangTaiId);	
	List QueryCaiGouDanByID1(int caigoudanID);	
	/******多条件查询采购单End*************/
//	List QueryCaiGouDanMingXiByID(int caigoudanID);	//根据采购单id查询采购单明细
	
	List QueryCaiGouDanByID(int caigoudanID);//根据采购单id查询采购单
	List QueryMyDiZhiByID(int taobaoID);//根据供应商id查询我的地址
	CaiGouDanBiao getCaiGouDanBiaoByID(int caigoudanId);//根据采购单id查询要修改的采购单
	boolean editCaiGouDanBiao(CaiGouDanBiao caigoudanbiao);//发货-修改采购单表
}
