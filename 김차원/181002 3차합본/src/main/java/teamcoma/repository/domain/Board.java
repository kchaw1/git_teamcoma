package teamcoma.repository.domain;

import java.util.Date;

public class Board {
	private int no;
	private int bNo;
	private String bWriter;
	private String bContent;
	private String bTitle;
	private Date bRegDate;
	private int bCategory;
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getbNo() {
		return bNo;
	}
	public void setbNo(int bNo) {
		this.bNo = bNo;
	}
	public String getbWriter() {
		return bWriter;
	}
	public void setbWriter(String bWriter) {
		this.bWriter = bWriter;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public Date getbRegDate() {
		return bRegDate;
	}
	public void setbRegDate(Date bRegDate) {
		this.bRegDate = bRegDate;
	}
	public int getbCategory() {
		return bCategory;
	}
	public void setbCategory(int bCategory) {
		this.bCategory = bCategory;
	}
	
	
}