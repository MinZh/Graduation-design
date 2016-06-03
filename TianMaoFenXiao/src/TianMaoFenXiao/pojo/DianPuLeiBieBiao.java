package TianMaoFenXiao.pojo;

/**
 * DianPuLeiBieBiao entity. @author MyEclipse Persistence Tools
 */

public class DianPuLeiBieBiao implements java.io.Serializable {

	// Fields

	private Integer dianPuLeiBieId;
	private String dianPuLeiBie;

	// Constructors

	/** default constructor */
	public DianPuLeiBieBiao() {
	}

	/** full constructor */
	public DianPuLeiBieBiao(String dianPuLeiBie) {
		this.dianPuLeiBie = dianPuLeiBie;
	}

	// Property accessors

	public Integer getDianPuLeiBieId() {
		return this.dianPuLeiBieId;
	}

	public void setDianPuLeiBieId(Integer dianPuLeiBieId) {
		this.dianPuLeiBieId = dianPuLeiBieId;
	}

	public String getDianPuLeiBie() {
		return this.dianPuLeiBie;
	}

	public void setDianPuLeiBie(String dianPuLeiBie) {
		this.dianPuLeiBie = dianPuLeiBie;
	}

}