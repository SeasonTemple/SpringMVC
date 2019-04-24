package springmvc.entity;

public class BfUser {
	private String uname;
	private String pwd;
	private String code;
	private String msg;
	
	public BfUser() {}
	
	public BfUser(String uname, String pwd, String code, String msg) {
		this.uname = uname;
		this.pwd = pwd;
		this.code = code;
		this.msg = msg;
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
		return "BfUser [uname=" + uname + ", pwd=" + pwd + ", code=" + code + ", msg=" + msg + "]";
	}
	
}
