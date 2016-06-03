package TianMaoFenXiao.pojo;

/**
 * LeiMuBiao entity. @author MyEclipse Persistence Tools
 */

public class LeiMuBiao implements java.io.Serializable {

	// Fields

	private Integer leiMuId;
	private String leiMuMingCheng;

	// Constructors

	/** default constructor */
	public LeiMuBiao() {
	}

	/** full constructor */
	public LeiMuBiao(String leiMuMingCheng) {
		this.leiMuMingCheng = leiMuMingCheng;
	}

	// Property accessors

	public Integer getLeiMuId() {
		return this.leiMuId;
	}

	public void setLeiMuId(Integer leiMuId) {
		this.leiMuId = leiMuId;
	}

	public String getLeiMuMingCheng() {
		return this.leiMuMingCheng;
	}

	public void setLeiMuMingCheng(String leiMuMingCheng) {
		this.leiMuMingCheng = leiMuMingCheng;
	}

}