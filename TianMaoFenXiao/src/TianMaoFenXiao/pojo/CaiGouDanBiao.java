package TianMaoFenXiao.pojo;

import java.sql.Timestamp;

/**
 * CaiGouDanBiao entity. @author MyEclipse Persistence Tools
 */

public class CaiGouDanBiao implements java.io.Serializable {

	// Fields

	private Integer caiGouDanId;
	private String caiGouDanBianHao;
	private String dingDanBianHao;
	private Timestamp chuangJianTime;
	private Timestamp chengJiaoTime;
	private Integer zongJia;
	private Integer shiShouKuan;
	private Integer zhuFuLeiXingId;
	private Integer caiGouZhuangTaiId;
	private Integer fenXiaoShangId;
	private Integer fenXiaoFangShiId;
	private String shouHuoDiZhi;
	private String youBian;
	private String shouHuoRen;
	private String shouJiHaoMa;
	private String beiWang;
	private Integer kuaiDiFei;
	private Integer wuLiuId;
	private String yunDanHao;
	private String beiZhu;

	// Constructors

	/** default constructor */
	public CaiGouDanBiao() {
	}

	/** full constructor */
	public CaiGouDanBiao(String caiGouDanBianHao, String dingDanBianHao,
			Timestamp chuangJianTime, Timestamp chengJiaoTime, Integer zongJia,
			Integer shiShouKuan, Integer zhuFuLeiXingId,
			Integer caiGouZhuangTaiId, Integer fenXiaoShangId,
			Integer fenXiaoFangShiId, String shouHuoDiZhi, String youBian,
			String shouHuoRen, String shouJiHaoMa, String beiWang,
			Integer kuaiDiFei, Integer wuLiuId, String yunDanHao, String beiZhu) {
		this.caiGouDanBianHao = caiGouDanBianHao;
		this.dingDanBianHao = dingDanBianHao;
		this.chuangJianTime = chuangJianTime;
		this.chengJiaoTime = chengJiaoTime;
		this.zongJia = zongJia;
		this.shiShouKuan = shiShouKuan;
		this.zhuFuLeiXingId = zhuFuLeiXingId;
		this.caiGouZhuangTaiId = caiGouZhuangTaiId;
		this.fenXiaoShangId = fenXiaoShangId;
		this.fenXiaoFangShiId = fenXiaoFangShiId;
		this.shouHuoDiZhi = shouHuoDiZhi;
		this.youBian = youBian;
		this.shouHuoRen = shouHuoRen;
		this.shouJiHaoMa = shouJiHaoMa;
		this.beiWang = beiWang;
		this.kuaiDiFei = kuaiDiFei;
		this.wuLiuId = wuLiuId;
		this.yunDanHao = yunDanHao;
		this.beiZhu = beiZhu;
	}

	// Property accessors

	public Integer getCaiGouDanId() {
		return this.caiGouDanId;
	}

	public void setCaiGouDanId(Integer caiGouDanId) {
		this.caiGouDanId = caiGouDanId;
	}

	public String getCaiGouDanBianHao() {
		return this.caiGouDanBianHao;
	}

	public void setCaiGouDanBianHao(String caiGouDanBianHao) {
		this.caiGouDanBianHao = caiGouDanBianHao;
	}

	public String getDingDanBianHao() {
		return this.dingDanBianHao;
	}

	public void setDingDanBianHao(String dingDanBianHao) {
		this.dingDanBianHao = dingDanBianHao;
	}

	public Timestamp getChuangJianTime() {
		return this.chuangJianTime;
	}

	public void setChuangJianTime(Timestamp chuangJianTime) {
		this.chuangJianTime = chuangJianTime;
	}

	public Timestamp getChengJiaoTime() {
		return this.chengJiaoTime;
	}

	public void setChengJiaoTime(Timestamp chengJiaoTime) {
		this.chengJiaoTime = chengJiaoTime;
	}

	public Integer getZongJia() {
		return this.zongJia;
	}

	public void setZongJia(Integer zongJia) {
		this.zongJia = zongJia;
	}

	public Integer getShiShouKuan() {
		return this.shiShouKuan;
	}

	public void setShiShouKuan(Integer shiShouKuan) {
		this.shiShouKuan = shiShouKuan;
	}

	public Integer getZhuFuLeiXingId() {
		return this.zhuFuLeiXingId;
	}

	public void setZhuFuLeiXingId(Integer zhuFuLeiXingId) {
		this.zhuFuLeiXingId = zhuFuLeiXingId;
	}

	public Integer getCaiGouZhuangTaiId() {
		return this.caiGouZhuangTaiId;
	}

	public void setCaiGouZhuangTaiId(Integer caiGouZhuangTaiId) {
		this.caiGouZhuangTaiId = caiGouZhuangTaiId;
	}

	public Integer getFenXiaoShangId() {
		return this.fenXiaoShangId;
	}

	public void setFenXiaoShangId(Integer fenXiaoShangId) {
		this.fenXiaoShangId = fenXiaoShangId;
	}

	public Integer getFenXiaoFangShiId() {
		return this.fenXiaoFangShiId;
	}

	public void setFenXiaoFangShiId(Integer fenXiaoFangShiId) {
		this.fenXiaoFangShiId = fenXiaoFangShiId;
	}

	public String getShouHuoDiZhi() {
		return this.shouHuoDiZhi;
	}

	public void setShouHuoDiZhi(String shouHuoDiZhi) {
		this.shouHuoDiZhi = shouHuoDiZhi;
	}

	public String getYouBian() {
		return this.youBian;
	}

	public void setYouBian(String youBian) {
		this.youBian = youBian;
	}

	public String getShouHuoRen() {
		return this.shouHuoRen;
	}

	public void setShouHuoRen(String shouHuoRen) {
		this.shouHuoRen = shouHuoRen;
	}

	public String getShouJiHaoMa() {
		return this.shouJiHaoMa;
	}

	public void setShouJiHaoMa(String shouJiHaoMa) {
		this.shouJiHaoMa = shouJiHaoMa;
	}

	public String getBeiWang() {
		return this.beiWang;
	}

	public void setBeiWang(String beiWang) {
		this.beiWang = beiWang;
	}

	public Integer getKuaiDiFei() {
		return this.kuaiDiFei;
	}

	public void setKuaiDiFei(Integer kuaiDiFei) {
		this.kuaiDiFei = kuaiDiFei;
	}

	public Integer getWuLiuId() {
		return this.wuLiuId;
	}

	public void setWuLiuId(Integer wuLiuId) {
		this.wuLiuId = wuLiuId;
	}

	public String getYunDanHao() {
		return this.yunDanHao;
	}

	public void setYunDanHao(String yunDanHao) {
		this.yunDanHao = yunDanHao;
	}

	public String getBeiZhu() {
		return this.beiZhu;
	}

	public void setBeiZhu(String beiZhu) {
		this.beiZhu = beiZhu;
	}

}