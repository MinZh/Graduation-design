package TianMaoFenXiao.pojo;

/**
 * TaoBaoZhangHao entity. @author MyEclipse Persistence Tools
 */

public class TaoBaoZhangHao implements java.io.Serializable {

	// Fields

	private Integer taoBaoZhangHaoId;
	private String zhangHao;
	private String niCheng;
	private String passWord;

	// Constructors

	/** default constructor */
	public TaoBaoZhangHao() {
	}

	/** full constructor */
	public TaoBaoZhangHao(String zhangHao, String niCheng, String passWord) {
		this.zhangHao = zhangHao;
		this.niCheng = niCheng;
		this.passWord = passWord;
	}

	// Property accessors

	public Integer getTaoBaoZhangHaoId() {
		return this.taoBaoZhangHaoId;
	}

	public void setTaoBaoZhangHaoId(Integer taoBaoZhangHaoId) {
		this.taoBaoZhangHaoId = taoBaoZhangHaoId;
	}

	public String getZhangHao() {
		return this.zhangHao;
	}

	public void setZhangHao(String zhangHao) {
		this.zhangHao = zhangHao;
	}

	public String getNiCheng() {
		return this.niCheng;
	}

	public void setNiCheng(String niCheng) {
		this.niCheng = niCheng;
	}

	public String getPassWord() {
		return this.passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

}