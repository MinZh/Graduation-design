package TianMaoFenXiao.pojo;

/**
 * ShangPinLeiBieBiao entity. @author MyEclipse Persistence Tools
 */

public class ShangPinLeiBieBiao implements java.io.Serializable {

	// Fields

	private Integer shangPinLeiBieId;
	private String shangPinLeiBie;
	private Integer leiMuId;

	// Constructors

	/** default constructor */
	public ShangPinLeiBieBiao() {
	}

	/** full constructor */
	public ShangPinLeiBieBiao(String shangPinLeiBie, Integer leiMuId) {
		this.shangPinLeiBie = shangPinLeiBie;
		this.leiMuId = leiMuId;
	}

	// Property accessors

	public Integer getShangPinLeiBieId() {
		return this.shangPinLeiBieId;
	}

	public void setShangPinLeiBieId(Integer shangPinLeiBieId) {
		this.shangPinLeiBieId = shangPinLeiBieId;
	}

	public String getShangPinLeiBie() {
		return this.shangPinLeiBie;
	}

	public void setShangPinLeiBie(String shangPinLeiBie) {
		this.shangPinLeiBie = shangPinLeiBie;
	}

	public Integer getLeiMuId() {
		return this.leiMuId;
	}

	public void setLeiMuId(Integer leiMuId) {
		this.leiMuId = leiMuId;
	}

}