package springmvc.entity;

public class Student {
	private int sid;
	private String sname;
	private int snum;
	private String subject;
	private Classes clas;
	private User u;
	
	public Student() {}

	public Student(int sid, String sname, int snum, String subject, Classes clas, User u) {
		this.sid = sid;
		this.sname = sname;
		this.snum = snum;
		this.subject = subject;
		this.clas = clas;
		this.u = u;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public int getSnum() {
		return snum;
	}

	public void setSnum(int snum) {
		this.snum = snum;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public Classes getClas() {
		return clas;
	}

	public void setClas(Classes clas) {
		this.clas = clas;
	}

	public User getU() {
		return u;
	}

	public void setU(User u) {
		this.u = u;
	}

	@Override
	public String toString() {
		return "Student [sid=" + sid + ", sname=" + sname + ", snum=" + snum + ", subject=" + subject + ", clas=" + clas
				+ ", u=" + u + "]";
	}
	
}
