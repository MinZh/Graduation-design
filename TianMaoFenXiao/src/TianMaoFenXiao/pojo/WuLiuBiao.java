package TianMaoFenXiao.pojo;

/**
 * WuLiuBiao entity. @author MyEclipse Persistence Tools
 */

public class WuLiuBiao implements java.io.Serializable {

	// Fields

	private Integer wuLiuId;
	private String wuLiuGongSi;

	// Constructors

	/** default constructor */
	public WuLiuBiao() {
	}

	/** full constructor */
	public WuLiuBiao(String wuLiuGongSi) {
		this.wuLiuGongSi = wuLiuGongSi;
	}

	// Property accessors

	public Integer getWuLiuId() {
		return this.wuLiuId;
	}

	public void setWuLiuId(Integer wuLiuId) {
		this.wuLiuId = wuLiuId;
	}

	public String getWuLiuGongSi() {
		return this.wuLiuGongSi;
	}

	public void setWuLiuGongSi(String wuLiuGongSi) {
		this.wuLiuGongSi = wuLiuGongSi;
	}

}