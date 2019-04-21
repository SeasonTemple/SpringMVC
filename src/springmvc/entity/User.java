package springmvc.entity;

public class User {

	private int uid;
	private String uname;
	private String pwd;
	private String email;
	private String profile;
	private String sex;
	
	public User() {}

	public User(int uid, String uname, String pwd, String email, String profile, String sex) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.pwd = pwd;
		this.email = email;
		this.profile = profile;
		this.sex = sex;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", pwd=" + pwd + ", email=" + email + ", profile=" + profile
				+ ", sex=" + sex + "]";
	}
	
}
