package springmvc.entity;

import java.io.Serializable;

import javax.validation.constraints.Pattern;

@SuppressWarnings("serial")
public class User implements Serializable{
	
	private int uid;
	@Pattern(regexp = "^(?!\\d+$)[a-zA-Z0-9\\u4E00-\\u9FA5]\\S{1,10}$", message = "用户名不合法!请重试")
	private String uname;
	@Pattern(regexp = "^(?!\\d+$)[a-zA-Z0-9]\\S{5,12}$", message = "密码不合法!请重试")
	private String pwd;
	@Pattern(regexp = "^[\\w]+@[\\w]+.com", message = "邮箱格式错误!请重试")
	private String email;
	@Pattern(regexp = "[\\u4E00-\\u9FA5]{2,}", message = "职称名格式错误!请重试")
	private String profile;
	private String sex;
	private int flag;
	private String code;
	private String msg;
	
	public User() {}
	
	public User(String uname, String pwd, String code, String msg) {
		this.uname = uname;
		this.pwd = pwd;
		this.code = code;
		this.msg = msg;
	}

	public User(int uid, String uname, String pwd, String email, String profile, String sex, int flag, String code, String msg) {
		this.uid = uid;
		this.uname = uname;
		this.pwd = pwd;
		this.email = email;
		this.profile = profile;
		this.sex = sex;
		this.flag = flag;
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

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
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
				+ ", sex=" + sex + ", flag=" + flag + ", code=" + code + ", msg=" + msg + "]";
	}

}
