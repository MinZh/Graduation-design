package TianMaoFenXiao.IService;

import java.util.List;
import TianMaoFenXiao.pojo.*;

public interface IYaoQingFenXiaoShangService {
	List QueryYaoQingJiLu();	//��ѯ�����¼
	List QueryFenXiaoShangByID(int fenXiaoShangId);	//��ѯ��ѡ�еķ�����
	public int addYaoQingFenXiaoBiao(YaoQingFenXiaoShangBiao yaoqingbiao);//���������¼
}
