package TianMaoFenXiao.pojo;

import java.sql.Timestamp;

/**
 * ShangPinBiao entity. @author MyEclipse Persistence Tools
 */

public class ShangPinBiao implements java.io.Serializable {

	// Fields

	private Integer shangPinId;
	private Integer dianPuId;
	private String shangPinMingCheng;
	private String shangJiaBianMa;
	private Long dangQianJiaGe;
	private Long shiChangJiaGe;
	private String lingShouJiaQuJian;
	private Long daiXiaoCaiGouJia;
	private Long yingXiaoCaiGouJia;
	private Integer shuLiang;
	private String baoBeiZhuangTai;
	private String daoRuZhuangTai;
	private Timestamp gengXinShiJian;
	private Integer shangPinLeiBieId;
	private Integer fenXiaoFangShiId;
	private Integer chanPinXianId;
	private Integer kuCunId;
	private Boolean puHuoFou;
	private Boolean zanTingXiaoShouFou;
	private String chanPinBiaoTi;

	// Constructors

	/** default constructor */
	public ShangPinBiao() {
	}

	/** full constructor */
	public ShangPinBiao(Integer dianPuId, String shangPinMingCheng,
			String shangJiaBianMa, Long dangQianJiaGe, Long shiChangJiaGe,
			String lingShouJiaQuJian, Long daiXiaoCaiGouJia,
			Long yingXiaoCaiGouJia, Integer shuLiang, String baoBeiZhuangTai,
			String daoRuZhuangTai, Timestamp gengXinShiJian,
			Integer shangPinLeiBieId, Integer fenXiaoFangShiId,
			Integer chanPinXianId, Integer kuCunId, Boolean puHuoFou,
			Boolean zanTingXiaoShouFou, String chanPinBiaoTi) {
		this.dianPuId = dianPuId;
		this.shangPinMingCheng = shangPinMingCheng;
		this.shangJiaBianMa = shangJiaBianMa;
		this.dangQianJiaGe = dangQianJiaGe;
		this.shiChangJiaGe = shiChangJiaGe;
		this.lingShouJiaQuJian = lingShouJiaQuJian;
		this.daiXiaoCaiGouJia = daiXiaoCaiGouJia;
		this.yingXiaoCaiGouJia = yingXiaoCaiGouJia;
		this.shuLiang = shuLiang;
		this.baoBeiZhuangTai = baoBeiZhuangTai;
		this.daoRuZhuangTai = daoRuZhuangTai;
		this.gengXinShiJian = gengXinShiJian;
		this.shangPinLeiBieId = shangPinLeiBieId;
		this.fenXiaoFangShiId = fenXiaoFangShiId;
		this.chanPinXianId = chanPinXianId;
		this.kuCunId = kuCunId;
		this.puHuoFou = puHuoFou;
		this.zanTingXiaoShouFou = zanTingXiaoShouFou;
		this.chanPinBiaoTi = chanPinBiaoTi;
	}

	// Property accessors

	public Integer getShangPinId() {
		return this.shangPinId;
	}

	public void setShangPinId(Integer shangPinId) {
		this.shangPinId = shangPinId;
	}

	public Integer getDianPuId() {
		return this.dianPuId;
	}

	public void setDianPuId(Integer dianPuId) {
		this.dianPuId = dianPuId;
	}

	public String getShangPinMingCheng() {
		return this.shangPinMingCheng;
	}

	public void setShangPinMingCheng(String shangPinMingCheng) {
		this.shangPinMingCheng = shangPinMingCheng;
	}

	public String getShangJiaBianMa() {
		return this.shangJiaBianMa;
	}

	public void setShangJiaBianMa(String shangJiaBianMa) {
		this.shangJiaBianMa = shangJiaBianMa;
	}

	public Long getDangQianJiaGe() {
		return this.dangQianJiaGe;
	}

	public void setDangQianJiaGe(Long dangQianJiaGe) {
		this.dangQianJiaGe = dangQianJiaGe;
	}

	public Long getShiChangJiaGe() {
		return this.shiChangJiaGe;
	}

	public void setShiChangJiaGe(Long shiChangJiaGe) {
		this.shiChangJiaGe = shiChangJiaGe;
	}

	public String getLingShouJiaQuJian() {
		return this.lingShouJiaQuJian;
	}

	public void setLingShouJiaQuJian(String lingShouJiaQuJian) {
		this.lingShouJiaQuJian = lingShouJiaQuJian;
	}

	public Long getDaiXiaoCaiGouJia() {
		return this.daiXiaoCaiGouJia;
	}

	public void setDaiXiaoCaiGouJia(Long daiXiaoCaiGouJia) {
		this.daiXiaoCaiGouJia = daiXiaoCaiGouJia;
	}

	public Long getYingXiaoCaiGouJia() {
		return this.yingXiaoCaiGouJia;
	}

	public void setYingXiaoCaiGouJia(Long yingXiaoCaiGouJia) {
		this.yingXiaoCaiGouJia = yingXiaoCaiGouJia;
	}

	public Integer getShuLiang() {
		return this.shuLiang;
	}

	public void setShuLiang(Integer shuLiang) {
		this.shuLiang = shuLiang;
	}

	public String getBaoBeiZhuangTai() {
		return this.baoBeiZhuangTai;
	}

	public void setBaoBeiZhuangTai(String baoBeiZhuangTai) {
		this.baoBeiZhuangTai = baoBeiZhuangTai;
	}

	public String getDaoRuZhuangTai() {
		return this.daoRuZhuangTai;
	}

	public void setDaoRuZhuangTai(String daoRuZhuangTai) {
		this.daoRuZhuangTai = daoRuZhuangTai;
	}

	public Timestamp getGengXinShiJian() {
		return this.gengXinShiJian;
	}

	public void setGengXinShiJian(Timestamp gengXinShiJian) {
		this.gengXinShiJian = gengXinShiJian;
	}

	public Integer getShangPinLeiBieId() {
		return this.shangPinLeiBieId;
	}

	public void setShangPinLeiBieId(Integer shangPinLeiBieId) {
		this.shangPinLeiBieId = shangPinLeiBieId;
	}

	public Integer getFenXiaoFangShiId() {
		return this.fenXiaoFangShiId;
	}

	public void setFenXiaoFangShiId(Integer fenXiaoFangShiId) {
		this.fenXiaoFangShiId = fenXiaoFangShiId;
	}

	public Integer getChanPinXianId() {
		return this.chanPinXianId;
	}

	public void setChanPinXianId(Integer chanPinXianId) {
		this.chanPinXianId = chanPinXianId;
	}

	public Integer getKuCunId() {
		return this.kuCunId;
	}

	public void setKuCunId(Integer kuCunId) {
		this.kuCunId = kuCunId;
	}

	public Boolean getPuHuoFou() {
		return this.puHuoFou;
	}

	public void setPuHuoFou(Boolean puHuoFou) {
		this.puHuoFou = puHuoFou;
	}

	public Boolean getZanTingXiaoShouFou() {
		return this.zanTingXiaoShouFou;
	}

	public void setZanTingXiaoShouFou(Boolean zanTingXiaoShouFou) {
		this.zanTingXiaoShouFou = zanTingXiaoShouFou;
	}

	public String getChanPinBiaoTi() {
		return this.chanPinBiaoTi;
	}

	public void setChanPinBiaoTi(String chanPinBiaoTi) {
		this.chanPinBiaoTi = chanPinBiaoTi;
	}

}