package TianMaoFenXiao.pojo;

/**
 * GongYingShangBiao entity. @author MyEclipse Persistence Tools
 */

public class GongYingShangBiao implements java.io.Serializable {

	// Fields

	private Integer gongYingShangId;
	private String gongYingShang;
	private Integer taoBaoZhangHaoId;
	private String gongSi;
	private String lianXiRen;
	private String guDingDianHua;
	private String shouJiHaoMa;
	private String email;
	private String aliWangWang;
	private String wangZhan;
	private String zhuYingLeiMu;
	private String yingXiaoPinPai;
	private String pinPaiLeiXing;
	private String gongSiJieShao;
	private Boolean shenHeFou;

	// Constructors

	/** default constructor */
	public GongYingShangBiao() {
	}

	/** full constructor */
	public GongYingShangBiao(String gongYingShang, Integer taoBaoZhangHaoId,
			String gongSi, String lianXiRen, String guDingDianHua,
			String shouJiHaoMa, String email, String aliWangWang,
			String wangZhan, String zhuYingLeiMu, String yingXiaoPinPai,
			String pinPaiLeiXing, String gongSiJieShao, Boolean shenHeFou) {
		this.gongYingShang = gongYingShang;
		this.taoBaoZhangHaoId = taoBaoZhangHaoId;
		this.gongSi = gongSi;
		this.lianXiRen = lianXiRen;
		this.guDingDianHua = guDingDianHua;
		this.shouJiHaoMa = shouJiHaoMa;
		this.email = email;
		this.aliWangWang = aliWangWang;
		this.wangZhan = wangZhan;
		this.zhuYingLeiMu = zhuYingLeiMu;
		this.yingXiaoPinPai = yingXiaoPinPai;
		this.pinPaiLeiXing = pinPaiLeiXing;
		this.gongSiJieShao = gongSiJieShao;
		this.shenHeFou = shenHeFou;
	}

	// Property accessors

	public Integer getGongYingShangId() {
		return this.gongYingShangId;
	}

	public void setGongYingShangId(Integer gongYingShangId) {
		this.gongYingShangId = gongYingShangId;
	}

	public String getGongYingShang() {
		return this.gongYingShang;
	}

	public void setGongYingShang(String gongYingShang) {
		this.gongYingShang = gongYingShang;
	}

	public Integer getTaoBaoZhangHaoId() {
		return this.taoBaoZhangHaoId;
	}

	public void setTaoBaoZhangHaoId(Integer taoBaoZhangHaoId) {
		this.taoBaoZhangHaoId = taoBaoZhangHaoId;
	}

	public String getGongSi() {
		return this.gongSi;
	}

	public void setGongSi(String gongSi) {
		this.gongSi = gongSi;
	}

	public String getLianXiRen() {
		return this.lianXiRen;
	}

	public void setLianXiRen(String lianXiRen) {
		this.lianXiRen = lianXiRen;
	}

	public String getGuDingDianHua() {
		return this.guDingDianHua;
	}

	public void setGuDingDianHua(String guDingDianHua) {
		this.guDingDianHua = guDingDianHua;
	}

	public String getShouJiHaoMa() {
		return this.shouJiHaoMa;
	}

	public void setShouJiHaoMa(String shouJiHaoMa) {
		this.shouJiHaoMa = shouJiHaoMa;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAliWangWang() {
		return this.aliWangWang;
	}

	public void setAliWangWang(String aliWangWang) {
		this.aliWangWang = aliWangWang;
	}

	public String getWangZhan() {
		return this.wangZhan;
	}

	public void setWangZhan(String wangZhan) {
		this.wangZhan = wangZhan;
	}

	public String getZhuYingLeiMu() {
		return this.zhuYingLeiMu;
	}

	public void setZhuYingLeiMu(String zhuYingLeiMu) {
		this.zhuYingLeiMu = zhuYingLeiMu;
	}

	public String getYingXiaoPinPai() {
		return this.yingXiaoPinPai;
	}

	public void setYingXiaoPinPai(String yingXiaoPinPai) {
		this.yingXiaoPinPai = yingXiaoPinPai;
	}

	public String getPinPaiLeiXing() {
		return this.pinPaiLeiXing;
	}

	public void setPinPaiLeiXing(String pinPaiLeiXing) {
		this.pinPaiLeiXing = pinPaiLeiXing;
	}

	public String getGongSiJieShao() {
		return this.gongSiJieShao;
	}

	public void setGongSiJieShao(String gongSiJieShao) {
		this.gongSiJieShao = gongSiJieShao;
	}

	public Boolean getShenHeFou() {
		return this.shenHeFou;
	}

	public void setShenHeFou(Boolean shenHeFou) {
		this.shenHeFou = shenHeFou;
	}

}