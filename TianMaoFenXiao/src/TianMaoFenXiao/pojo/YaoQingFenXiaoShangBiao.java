package TianMaoFenXiao.pojo;

import java.sql.Timestamp;

/**
 * YaoQingFenXiaoShangBiao entity. @author MyEclipse Persistence Tools
 */

public class YaoQingFenXiaoShangBiao implements java.io.Serializable {

	// Fields

	private Integer yaoQingId;
	private Integer fenXiaoShangId;
	private Timestamp yaoQingShiJian;
	private Integer fenXiaoFangShiId;
	private String yaoQingZhuangTai;
	private String juJueLiYou;

	// Constructors

	/** default constructor */
	public YaoQingFenXiaoShangBiao() {
	}

	/** minimal constructor */
	public YaoQingFenXiaoShangBiao(Integer fenXiaoShangId) {
		this.fenXiaoShangId = fenXiaoShangId;
	}

	/** full constructor */
	public YaoQingFenXiaoShangBiao(Integer fenXiaoShangId,
			Timestamp yaoQingShiJian, Integer fenXiaoFangShiId,
			String yaoQingZhuangTai, String juJueLiYou) {
		this.fenXiaoShangId = fenXiaoShangId;
		this.yaoQingShiJian = yaoQingShiJian;
		this.fenXiaoFangShiId = fenXiaoFangShiId;
		this.yaoQingZhuangTai = yaoQingZhuangTai;
		this.juJueLiYou = juJueLiYou;
	}

	// Property accessors

	public Integer getYaoQingId() {
		return this.yaoQingId;
	}

	public void setYaoQingId(Integer yaoQingId) {
		this.yaoQingId = yaoQingId;
	}

	public Integer getFenXiaoShangId() {
		return this.fenXiaoShangId;
	}

	public void setFenXiaoShangId(Integer fenXiaoShangId) {
		this.fenXiaoShangId = fenXiaoShangId;
	}

	public Timestamp getYaoQingShiJian() {
		return this.yaoQingShiJian;
	}

	public void setYaoQingShiJian(Timestamp yaoQingShiJian) {
		this.yaoQingShiJian = yaoQingShiJian;
	}

	public Integer getFenXiaoFangShiId() {
		return this.fenXiaoFangShiId;
	}

	public void setFenXiaoFangShiId(Integer fenXiaoFangShiId) {
		this.fenXiaoFangShiId = fenXiaoFangShiId;
	}

	public String getYaoQingZhuangTai() {
		return this.yaoQingZhuangTai;
	}

	public void setYaoQingZhuangTai(String yaoQingZhuangTai) {
		this.yaoQingZhuangTai = yaoQingZhuangTai;
	}

	public String getJuJueLiYou() {
		return this.juJueLiYou;
	}

	public void setJuJueLiYou(String juJueLiYou) {
		this.juJueLiYou = juJueLiYou;
	}

}