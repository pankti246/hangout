package controller;

public class likeeventbean {
	private String email;
	private String hangout_id;
	public String gethangout_id() {
		return hangout_id;
	}

	public void sethangout_id(String hangout_id) {
		this.hangout_id = hangout_id;
	}
	public String getemail() {
		return email;
	}

	public void setemail(String email) {
		this.email = email;
	}
}
