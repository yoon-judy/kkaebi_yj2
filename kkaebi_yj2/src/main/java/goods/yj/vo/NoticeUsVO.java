package goods.yj.vo;

public class NoticeUsVO {

	private String expire_date;

	private int seq_no;
	private String notice_title;
	private String notice_content;
	private String notice_target;

	private String notice_st_date;
	private String notice_end_date;

	private int status;
	private String regist_id;
	private String regist_date;
	private String last_chg_id;
	private String last_chg_date;
	private String expire_id;

	// Getters and Setters

	public int getSeq_no() {
		return seq_no;
	}

	public void setSeq_no(int seq_no) {
		this.seq_no = seq_no;
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

	public String getNotice_target() {
		return notice_target;
	}

	public void setNotice_target(String notice_target) {
		this.notice_target = notice_target;
	}

	public String getNotice_st_date() {
		return notice_st_date;
	}

	public void setNotice_st_date(String notice_st_date) {
		this.notice_st_date = notice_st_date;
	}

	public String getNotice_end_date() {
		return notice_end_date;
	}

	public void setNotice_end_date(String notice_end_date) {
		this.notice_end_date = notice_end_date;
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

	public String getLast_chg_id() {
		return last_chg_id;
	}

	public void setLast_chg_id(String last_chg_id) {
		this.last_chg_id = last_chg_id;
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
}
