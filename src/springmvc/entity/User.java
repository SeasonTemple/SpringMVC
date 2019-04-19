package springmvc.entity;

public class User {

	private int uid;
	private String username;
	private String password;
	private String email;
	private String profile;
	private String sex;
	
	public User() {}

	public User(int id, String username, String password, String email, String profile, String sex) {
		super();
		this.uid = id;
		this.username = username;
		this.password = password;
		this.email = email;
		this.profile = profile;
		this.sex = sex;
	}

	public int getId() {
		return uid;
	}

	public void setId(int id) {
		this.uid = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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
		return "User [id=" + uid + ", username=" + username + ", password=" + password + ", email=" + email
				+ ", profile=" + profile + ", sex=" + sex + "]";
	}
	
}
