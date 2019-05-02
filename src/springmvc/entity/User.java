package springmvc.entity;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class User {
	
	private int uid;
	
	@Size(min = 4, max = 20, message = "用户名不在4-20字符之内!")
	@NotBlank(message = "用户名不能为空!")
	private String uname;
	
	@Size(min = 4, max = 20, message = "密码应在4-20字符之内!")
	@NotBlank(message = "密码不能为空!")
	private String pwd;
	
	@NotBlank(message = "邮箱地址不能为空!")
	private String email;
	
	@Min(value = 2 , message = "职称名应不小于2个字符!")
	@NotBlank(message = "职称名不能为空!")
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
