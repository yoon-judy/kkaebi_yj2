package goods.yj.vo;

public class ReviewVO {

	private int seq_no; 
	private int goods_code;
	private String notice_title;
	private String notice_content;
	private int status;
	private String regist_id;
	private String regist_date;
	private String last_chg_date;
	private String expire_id;
	private String expire_date;
	private int bhit;
	private int bgroup;
	private int bstep;
	private int bindent;
	private int star_rating;
	
	// Getters and Setters

	public int getSeq_no() {
		return seq_no;
	}

	public void setSeq_no(int seq_no) {
		this.seq_no = seq_no;
	}

	public int getGoods_code() {
		return goods_code;
	}

	public void setGoods_code(int goods_code) {
		this.goods_code = goods_code;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getRegist_id() {
		return regist_id;
	}

	public void setRegist_id(String regist_id) {
		this.regist_id = regist_id;
	}

	public String getRegist_date() {
		return regist_date;
	}

	public void setRegist_date(String regist_date) {
		this.regist_date = regist_date;
	}

	public String getLast_chg_date() {
		return last_chg_date;
	}

	public void setLast_chg_date(String last_chg_date) {
		this.last_chg_date = last_chg_date;
	}

	public String getExpire_id() {
		return expire_id;
	}

	public void setExpire_id(String expire_id) {
		this.expire_id = expire_id;
	}

	public String getExpire_date() {
		return expire_date;
	}

	public void setExpire_date(String expire_date) {
		this.expire_date = expire_date;
	}

	public int getBhit() {
		return bhit;
	}

	public void setBhit(int bhit) {
		this.bhit = bhit;
	}

	public int getBgroup() {
		return bgroup;
	}

	public void setBgroup(int bgroup) {
		this.bgroup = bgroup;
	}

	public int getBstep() {
		return bstep;
	}

	public void setBstep(int bstep) {
		this.bstep = bstep;
	}

	public int getBindent() {
		return bindent;
	}

	public void setBindent(int bindent) {
		this.bindent = bindent;
	}

	public int getStar_rating() {
		return star_rating;
	}

	public void setStar_rating(int star_rating) {
		this.star_rating = star_rating;
	}

}
