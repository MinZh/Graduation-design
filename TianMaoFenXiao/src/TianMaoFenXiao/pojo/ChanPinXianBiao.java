package TianMaoFenXiao.pojo;

/**
 * ChanPinXianBiao entity. @author MyEclipse Persistence Tools
 */

public class ChanPinXianBiao implements java.io.Serializable {

	// Fields

	private Integer chanPinXianId;
	private String chanPinXian;

	// Constructors

	/** default constructor */
	public ChanPinXianBiao() {
	}

	/** full constructor */
	public ChanPinXianBiao(String chanPinXian) {
		this.chanPinXian = chanPinXian;
	}

	// Property accessors

	public Integer getChanPinXianId() {
		return this.chanPinXianId;
	}

	public void setChanPinXianId(Integer chanPinXianId) {
		this.chanPinXianId = chanPinXianId;
	}

	public String getChanPinXian() {
		return this.chanPinXian;
	}

	public void setChanPinXian(String chanPinXian) {
		this.chanPinXian = chanPinXian;
	}

}