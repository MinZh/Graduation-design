package TianMaoFenXiao.pojo;

/**
 * CaiGouDanMingXiBiao entity. @author MyEclipse Persistence Tools
 */

public class CaiGouDanMingXiBiao implements java.io.Serializable {

	// Fields

	private Integer caiGouMingXiId;
	private Integer caiGouDanId;
	private Integer shangPinId;
	private Integer caiGouJia;
	private Integer shuLiang;

	// Constructors

	/** default constructor */
	public CaiGouDanMingXiBiao() {
	}

	/** full constructor */
	public CaiGouDanMingXiBiao(Integer caiGouDanId, Integer shangPinId,
			Integer caiGouJia, Integer shuLiang) {
		this.caiGouDanId = caiGouDanId;
		this.shangPinId = shangPinId;
		this.caiGouJia = caiGouJia;
		this.shuLiang = shuLiang;
	}

	// Property accessors

	public Integer getCaiGouMingXiId() {
		return this.caiGouMingXiId;
	}

	public void setCaiGouMingXiId(Integer caiGouMingXiId) {
		this.caiGouMingXiId = caiGouMingXiId;
	}

	public Integer getCaiGouDanId() {
		return this.caiGouDanId;
	}

	public void setCaiGouDanId(Integer caiGouDanId) {
		this.caiGouDanId = caiGouDanId;
	}

	public Integer getShangPinId() {
		return this.shangPinId;
	}

	public void setShangPinId(Integer shangPinId) {
		this.shangPinId = shangPinId;
	}

	public Integer getCaiGouJia() {
		return this.caiGouJia;
	}

	public void setCaiGouJia(Integer caiGouJia) {
		this.caiGouJia = caiGouJia;
	}

	public Integer getShuLiang() {
		return this.shuLiang;
	}

	public void setShuLiang(Integer shuLiang) {
		this.shuLiang = shuLiang;
	}

}