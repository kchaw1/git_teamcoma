package teamcoma.repository.domain;

import java.util.Date;

public class Comment {
	
	int cNo;
	int no;
	String cWriter;
	String cContent;
	Date cRegDate;
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getcWriter() {
		return cWriter;
	}
	public void setcWriter(String cWriter) {
		this.cWriter = cWriter;
	}
	public String getcContent() {
		return cContent;
	}
	public void setcContent(String cContent) {
		this.cContent = cContent;
	}
	public Date getcRegDate() {
		return cRegDate;
	}
	public void setcRegDate(Date cRegDate) {
		this.cRegDate = cRegDate;
	}
	
	

}
