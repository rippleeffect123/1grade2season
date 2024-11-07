package kr.ac.kopo.HWLiquor.model;

public class Member {
	private String id;
	private String passwd;
	private String name;
	private String phone;
	private String mail;
	private String address;
	private Integer year;
	private Integer month;
	private Integer day;
	private Integer role;
	private Integer points;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public Integer getYear() {
		return year;
	}
	public void setYear(Integer year) {
		this.year = year;
	}
	public Integer getMonth() {
		return month;
	}
	public void setMonth(Integer month) {
		this.month = month;
	}
	public Integer getDay() {
		return day;
	}
	public void setDay(Integer day) {
		this.day = day;
	}
	public Integer getRole() {
		return role;
	}
	public void setRole(Integer role) {
		this.role = role;
	}
	public Integer getPoints() {
		return points;
	}
	public void setPoints(Integer points) {
		this.points = points;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", passwd=" + passwd + ", name=" + name + ", phone=" + phone + ", mail=" + mail
				+ ", address=" + address + ", year=" + year + ", month=" + month + ", day=" + day + ", role=" + role
				+ ", points=" + points + "]";
	}

	

}
