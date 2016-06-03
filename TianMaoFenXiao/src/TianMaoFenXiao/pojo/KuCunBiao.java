package TianMaoFenXiao.pojo;

/**
 * KuCunBiao entity. @author MyEclipse Persistence Tools
 */

public class KuCunBiao implements java.io.Serializable {

	// Fields

	private Integer kuCunId;
	private Long chanPinKuCun;
	private Long jingJieKuCun;

	// Constructors

	/** default constructor */
	public KuCunBiao() {
	}

	/** full constructor */
	public KuCunBiao(Long chanPinKuCun, Long jingJieKuCun) {
		this.chanPinKuCun = chanPinKuCun;
		this.jingJieKuCun = jingJieKuCun;
	}

	// Property accessors

	public Integer getKuCunId() {
		return this.kuCunId;
	}

	public void setKuCunId(Integer kuCunId) {
		this.kuCunId = kuCunId;
	}

	public Long getChanPinKuCun() {
		return this.chanPinKuCun;
	}

	public void setChanPinKuCun(Long chanPinKuCun) {
		this.chanPinKuCun = chanPinKuCun;
	}

	public Long getJingJieKuCun() {
		return this.jingJieKuCun;
	}

	public void setJingJieKuCun(Long jingJieKuCun) {
		this.jingJieKuCun = jingJieKuCun;
	}

}