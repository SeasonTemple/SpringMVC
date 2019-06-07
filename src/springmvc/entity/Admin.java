package springmvc.entity;

public class Admin {

	private int aid;
	private String account;
	private String password;
	private int flag;
	
	public Admin() {}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", account=" + account + ", password=" + password + ", flag=" + flag + "]";
	}
	
}
