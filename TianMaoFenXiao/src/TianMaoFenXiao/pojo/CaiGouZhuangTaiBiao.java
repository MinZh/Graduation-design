package TianMaoFenXiao.pojo;

/**
 * CaiGouZhuangTaiBiao entity. @author MyEclipse Persistence Tools
 */

public class CaiGouZhuangTaiBiao implements java.io.Serializable {

	// Fields

	private Integer caiGouZhuangTaiId;
	private String caiGouZhuangTai;

	// Constructors

	/** default constructor */
	public CaiGouZhuangTaiBiao() {
	}

	/** full constructor */
	public CaiGouZhuangTaiBiao(String caiGouZhuangTai) {
		this.caiGouZhuangTai = caiGouZhuangTai;
	}

	// Property accessors

	public Integer getCaiGouZhuangTaiId() {
		return this.caiGouZhuangTaiId;
	}

	public void setCaiGouZhuangTaiId(Integer caiGouZhuangTaiId) {
		this.caiGouZhuangTaiId = caiGouZhuangTaiId;
	}

	public String getCaiGouZhuangTai() {
		return this.caiGouZhuangTai;
	}

	public void setCaiGouZhuangTai(String caiGouZhuangTai) {
		this.caiGouZhuangTai = caiGouZhuangTai;
	}

}