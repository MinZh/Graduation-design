package TianMaoFenXiao.IService;

import java.util.List;
import TianMaoFenXiao.pojo.*;

public interface ICaiGouDanFaHuoService {
	List QueryPayType();	//��ѯ֧������
	List QueryProcureType();	//��ѯ�ɹ�������
	/******��������ѯ�ɹ���*************/
	List QueryCaiGouDanByID0(int zhiFuLeiXingId,int caiGouZhuangTaiId);	
	List QueryCaiGouDanByID1(int caigoudanID);	
	/******��������ѯ�ɹ���End*************/
//	List QueryCaiGouDanMingXiByID(int caigoudanID);	//���ݲɹ���id��ѯ�ɹ�����ϸ
	
	List QueryCaiGouDanByID(int caigoudanID);//���ݲɹ���id��ѯ�ɹ���
	List QueryMyDiZhiByID(int taobaoID);//���ݹ�Ӧ��id��ѯ�ҵĵ�ַ
	CaiGouDanBiao getCaiGouDanBiaoByID(int caigoudanId);//���ݲɹ���id��ѯҪ�޸ĵĲɹ���
	boolean editCaiGouDanBiao(CaiGouDanBiao caigoudanbiao);//����-�޸Ĳɹ�����
}
