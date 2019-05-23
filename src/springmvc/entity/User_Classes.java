package springmvc.entity;

public class User_Classes {
	private int id;
	private User u;
	private Classes clas;
	
	public User_Classes() {}

	public User_Classes(int id, User u, Classes clas) {
		this.id = id;
		this.u = u;
		this.clas = clas;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public User getU() {
		return u;
	}

	public void setU(User u) {
		this.u = u;
	}

	public Classes getClas() {
		return clas;
	}

	public void setClas(Classes clas) {
		this.clas = clas;
	}

	@Override
	public String toString() {
		return "User_Classes [id=" + id + ", u=" + u + ", clas=" + clas + "]";
	}
}
