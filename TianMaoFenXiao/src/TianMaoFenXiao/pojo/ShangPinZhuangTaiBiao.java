package TianMaoFenXiao.pojo;

/**
 * ShangPinZhuangTaiBiao entity. @author MyEclipse Persistence Tools
 */

public class ShangPinZhuangTaiBiao implements java.io.Serializable {

	// Fields

	private Integer shangPinZhuangTaiId;
	private String shangPinZhuangTai;

	// Constructors

	/** default constructor */
	public ShangPinZhuangTaiBiao() {
	}

	/** full constructor */
	public ShangPinZhuangTaiBiao(String shangPinZhuangTai) {
		this.shangPinZhuangTai = shangPinZhuangTai;
	}

	// Property accessors

	public Integer getShangPinZhuangTaiId() {
		return this.shangPinZhuangTaiId;
	}

	public void setShangPinZhuangTaiId(Integer shangPinZhuangTaiId) {
		this.shangPinZhuangTaiId = shangPinZhuangTaiId;
	}

	public String getShangPinZhuangTai() {
		return this.shangPinZhuangTai;
	}

	public void setShangPinZhuangTai(String shangPinZhuangTai) {
		this.shangPinZhuangTai = shangPinZhuangTai;
	}

}