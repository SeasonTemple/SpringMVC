package springmvc.entity;

public class Student {
	private int sid;
	private String sname;
	private int grade;
	private int snum;
	private String subject;
	private Classes clas;
	private User u;
	private int cid;
	private int uid;
	
	public Student() {}

	public Student(int sid, String sname, int grade, int snum, String subject, Classes clas, User u, int cid, int uid) {
		this.sid = sid;
		this.sname = sname;
		this.grade = grade;
		this.snum = snum;
		this.subject = subject;
		this.clas = clas;
		this.u = u;
		this.cid = cid;
		this.uid = uid;
	}

	public Student(int sid, String sname, int grade, int snum, String subject, Classes clas, User u) {
		this.sid = sid;
		this.sname = sname;
		this.grade = grade;
		this.snum = snum;
		this.subject = subject;
		this.clas = clas;
		this.u = u;
	}
	
	public Student(int sid, String sname, int grade, int snum, String subject, int cid, int uid) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.grade = grade;
		this.snum = snum;
		this.subject = subject;
		this.cid = cid;
		this.uid = uid;
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

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
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

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	@Override
	public String toString() {
		return "Student [sid=" + sid + ", sname=" + sname + ", grade=" + grade + ", snum=" + snum + ", subject="
				+ subject + ", clas=" + clas + ", u=" + u + ", cid=" + cid + ", uid=" + uid + "]";
	}

}
