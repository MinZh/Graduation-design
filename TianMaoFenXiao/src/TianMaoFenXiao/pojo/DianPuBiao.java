package TianMaoFenXiao.pojo;

/**
 * DianPuBiao entity. @author MyEclipse Persistence Tools
 */

public class DianPuBiao implements java.io.Serializable {

	// Fields

	private Integer dianPuId;
	private String dianPuMingCheng;
	private String dianZhuNiCheng;
	private Integer dianPuLeiBieId;

	// Constructors

	/** default constructor */
	public DianPuBiao() {
	}

	/** full constructor */
	public DianPuBiao(String dianPuMingCheng, String dianZhuNiCheng,
			Integer dianPuLeiBieId) {
		this.dianPuMingCheng = dianPuMingCheng;
		this.dianZhuNiCheng = dianZhuNiCheng;
		this.dianPuLeiBieId = dianPuLeiBieId;
	}

	// Property accessors

	public Integer getDianPuId() {
		return this.dianPuId;
	}

	public void setDianPuId(Integer dianPuId) {
		this.dianPuId = dianPuId;
	}

	public String getDianPuMingCheng() {
		return this.dianPuMingCheng;
	}

	public void setDianPuMingCheng(String dianPuMingCheng) {
		this.dianPuMingCheng = dianPuMingCheng;
	}

	public String getDianZhuNiCheng() {
		return this.dianZhuNiCheng;
	}

	public void setDianZhuNiCheng(String dianZhuNiCheng) {
		this.dianZhuNiCheng = dianZhuNiCheng;
	}

	public Integer getDianPuLeiBieId() {
		return this.dianPuLeiBieId;
	}

	public void setDianPuLeiBieId(Integer dianPuLeiBieId) {
		this.dianPuLeiBieId = dianPuLeiBieId;
	}

}