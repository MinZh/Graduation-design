package TianMaoFenXiao.pojo;

/**
 * DiZhiXinXiBiao entity. @author MyEclipse Persistence Tools
 */

public class DiZhiXinXiBiao implements java.io.Serializable {

	// Fields

	private Integer diZhiXinXiId;
	private String faOrTui;
	private String diZhi;
	private String youBian;
	private String lianXiRen;
	private String shouJiHaoMa;
	private Integer gongYingShangId;

	// Constructors

	/** default constructor */
	public DiZhiXinXiBiao() {
	}

	/** full constructor */
	public DiZhiXinXiBiao(String faOrTui, String diZhi, String youBian,
			String lianXiRen, String shouJiHaoMa, Integer gongYingShangId) {
		this.faOrTui = faOrTui;
		this.diZhi = diZhi;
		this.youBian = youBian;
		this.lianXiRen = lianXiRen;
		this.shouJiHaoMa = shouJiHaoMa;
		this.gongYingShangId = gongYingShangId;
	}

	// Property accessors

	public Integer getDiZhiXinXiId() {
		return this.diZhiXinXiId;
	}

	public void setDiZhiXinXiId(Integer diZhiXinXiId) {
		this.diZhiXinXiId = diZhiXinXiId;
	}

	public String getFaOrTui() {
		return this.faOrTui;
	}

	public void setFaOrTui(String faOrTui) {
		this.faOrTui = faOrTui;
	}

	public String getDiZhi() {
		return this.diZhi;
	}

	public void setDiZhi(String diZhi) {
		this.diZhi = diZhi;
	}

	public String getYouBian() {
		return this.youBian;
	}

	public void setYouBian(String youBian) {
		this.youBian = youBian;
	}

	public String getLianXiRen() {
		return this.lianXiRen;
	}

	public void setLianXiRen(String lianXiRen) {
		this.lianXiRen = lianXiRen;
	}

	public String getShouJiHaoMa() {
		return this.shouJiHaoMa;
	}

	public void setShouJiHaoMa(String shouJiHaoMa) {
		this.shouJiHaoMa = shouJiHaoMa;
	}

	public Integer getGongYingShangId() {
		return this.gongYingShangId;
	}

	public void setGongYingShangId(Integer gongYingShangId) {
		this.gongYingShangId = gongYingShangId;
	}

}