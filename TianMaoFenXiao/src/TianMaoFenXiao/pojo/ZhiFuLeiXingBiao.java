package TianMaoFenXiao.pojo;

/**
 * ZhiFuLeiXingBiao entity. @author MyEclipse Persistence Tools
 */

public class ZhiFuLeiXingBiao implements java.io.Serializable {

	// Fields

	private Integer zhiFuLeiXingId;
	private String zhiFuLeiXing;

	// Constructors

	/** default constructor */
	public ZhiFuLeiXingBiao() {
	}

	/** full constructor */
	public ZhiFuLeiXingBiao(String zhiFuLeiXing) {
		this.zhiFuLeiXing = zhiFuLeiXing;
	}

	// Property accessors

	public Integer getZhiFuLeiXingId() {
		return this.zhiFuLeiXingId;
	}

	public void setZhiFuLeiXingId(Integer zhiFuLeiXingId) {
		this.zhiFuLeiXingId = zhiFuLeiXingId;
	}

	public String getZhiFuLeiXing() {
		return this.zhiFuLeiXing;
	}

	public void setZhiFuLeiXing(String zhiFuLeiXing) {
		this.zhiFuLeiXing = zhiFuLeiXing;
	}

}