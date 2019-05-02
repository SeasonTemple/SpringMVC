package springmvc.entity;

import javax.validation.constraints.Pattern;

public class User {
	
	private int uid;
	@Pattern(regexp = "^(?![a-zA-Z]+$)(?!\\d+$)\\S{4,20}", message = "用户名格式错误！应由英文字母开头,字母+数字组成，且应在4-20个字符之内")
	private String uname;
	@Pattern(regexp = "^(?![a-zA-Z]+$)(?!\\d+$)\\S{6,20}$", message = "密码格式错误！应由英文字母开头,字母+数字组成，且应在6-20个字符之内")
	private String pwd;
	@Pattern(regexp = "^[\\w]+@[\\w]+.com", message = "邮箱格式错误!")
	private String email;
	@Pattern(regexp = "[\\u4E00-\\u9FA5]{2,}", message = "职称名格式错误!必须为不小于两个的中文字符!")
	private String profile;
	private String sex;
	private String code;
	private String msg;
	
	public User() {}
	
	public User(String uname, String pwd, String code, String msg) {
		this.uname = uname;
		this.pwd = pwd;
		this.code = code;
		this.msg = msg;
	}

	public User(int uid, String uname, String pwd, String email, String profile, String sex, String code,
			String msg) {
		this.uid = uid;
		this.uname = uname;
		this.pwd = pwd;
		this.email = email;
		this.profile = profile;
		this.sex = sex;
		this.code = code;
		this.msg = msg;
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

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", pwd=" + pwd + ", email=" + email + ", profile=" + profile
				+ ", sex=" + sex + ", code=" + code + ", msg=" + msg + "]";
	}
}
