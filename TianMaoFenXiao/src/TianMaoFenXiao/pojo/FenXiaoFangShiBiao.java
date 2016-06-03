package TianMaoFenXiao.pojo;

/**
 * FenXiaoFangShiBiao entity. @author MyEclipse Persistence Tools
 */

public class FenXiaoFangShiBiao implements java.io.Serializable {

	// Fields

	private Integer fenXiaoFangShiId;
	private String fenXiaoFangShi;

	// Constructors

	/** default constructor */
	public FenXiaoFangShiBiao() {
	}

	/** full constructor */
	public FenXiaoFangShiBiao(String fenXiaoFangShi) {
		this.fenXiaoFangShi = fenXiaoFangShi;
	}

	// Property accessors

	public Integer getFenXiaoFangShiId() {
		return this.fenXiaoFangShiId;
	}

	public void setFenXiaoFangShiId(Integer fenXiaoFangShiId) {
		this.fenXiaoFangShiId = fenXiaoFangShiId;
	}

	public String getFenXiaoFangShi() {
		return this.fenXiaoFangShi;
	}

	public void setFenXiaoFangShi(String fenXiaoFangShi) {
		this.fenXiaoFangShi = fenXiaoFangShi;
	}

}