package net.user.db;

import java.sql.Date;

public class UserDTO {
	private int user_no;
	private String user_id;
	private String user_password;
	private String user_name;
	private String user_email;
	private String user_birth;
	private String user_phone_number;
	private int postcode;
	private String road_name_addr;
	private String a_lot_number_addr;
	private String detail_addr;
	private String etc_addr;
	private Date join_date;
	
	//setter & getter
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public String getUser_phone_number() {
		return user_phone_number;
	}
	public void setUser_phone_number(String user_phone_number) {
		this.user_phone_number = user_phone_number;
	}
	public int getPostcode() {
		return postcode;
	}
	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}
	public String getRoad_name_addr() {
		return road_name_addr;
	}
	public void setRoad_name_addr(String road_name_addr) {
		this.road_name_addr = road_name_addr;
	}
	public String getA_lot_number_addr() {
		return a_lot_number_addr;
	}
	public void setA_lot_number_addr(String a_lot_number_addr) {
		this.a_lot_number_addr = a_lot_number_addr;
	}
	public String getDetail_addr() {
		return detail_addr;
	}
	public void setDetail_addr(String detail_addr) {
		this.detail_addr = detail_addr;
	}
	public String getEtc_addr() {
		return etc_addr;
	}
	public void setEtc_addr(String etc_addr) {
		this.etc_addr = etc_addr;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	
	//toString
	@Override
	public String toString() {
		return "UserDTO [user_no=" + user_no + ", user_id=" + user_id + ", user_password=" + user_password
				+ ", user_name=" + user_name + ", user_email=" + user_email + ", user_birth=" + user_birth
				+ ", user_phone_number=" + user_phone_number + ", postcode=" + postcode + ", road_name_addr="
				+ road_name_addr + ", a_lot_number_addr=" + a_lot_number_addr + ", detail_addr=" + detail_addr
				+ ", etc_addr=" + etc_addr + ", join_date=" + join_date + "]";
	}
}
