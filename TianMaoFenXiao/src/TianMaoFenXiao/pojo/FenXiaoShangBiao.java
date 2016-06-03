package TianMaoFenXiao.pojo;

import java.sql.Timestamp;

/**
 * FenXiaoShangBiao entity. @author MyEclipse Persistence Tools
 */

public class FenXiaoShangBiao implements java.io.Serializable {

	// Fields

	private Integer fenXiaoShangId;
	private String fenXiaoShang;
	private String xinYongDengJi;
	private String haoPinLv;
	private Timestamp kaiDianShiJian;
	private Integer leiMuId;

	// Constructors

	/** default constructor */
	public FenXiaoShangBiao() {
	}

	/** full constructor */
	public FenXiaoShangBiao(String fenXiaoShang, String xinYongDengJi,
			String haoPinLv, Timestamp kaiDianShiJian, Integer leiMuId) {
		this.fenXiaoShang = fenXiaoShang;
		this.xinYongDengJi = xinYongDengJi;
		this.haoPinLv = haoPinLv;
		this.kaiDianShiJian = kaiDianShiJian;
		this.leiMuId = leiMuId;
	}

	// Property accessors

	public Integer getFenXiaoShangId() {
		return this.fenXiaoShangId;
	}

	public void setFenXiaoShangId(Integer fenXiaoShangId) {
		this.fenXiaoShangId = fenXiaoShangId;
	}

	public String getFenXiaoShang() {
		return this.fenXiaoShang;
	}

	public void setFenXiaoShang(String fenXiaoShang) {
		this.fenXiaoShang = fenXiaoShang;
	}

	public String getXinYongDengJi() {
		return this.xinYongDengJi;
	}

	public void setXinYongDengJi(String xinYongDengJi) {
		this.xinYongDengJi = xinYongDengJi;
	}

	public String getHaoPinLv() {
		return this.haoPinLv;
	}

	public void setHaoPinLv(String haoPinLv) {
		this.haoPinLv = haoPinLv;
	}

	public Timestamp getKaiDianShiJian() {
		return this.kaiDianShiJian;
	}

	public void setKaiDianShiJian(Timestamp kaiDianShiJian) {
		this.kaiDianShiJian = kaiDianShiJian;
	}

	public Integer getLeiMuId() {
		return this.leiMuId;
	}

	public void setLeiMuId(Integer leiMuId) {
		this.leiMuId = leiMuId;
	}

}