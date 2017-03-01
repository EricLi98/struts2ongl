package com.inspur.po;

import java.util.Date;

public class User {
	private Integer id;
	private String loginname;
	private Double score;
	private Boolean gender;
	private Character cha;
	private Date birthday;

	public User() {

	}

	public User(Integer id, String loginname, Double score, Boolean gender,
			Character cha, Date birthday) {

		this.id = id;
		this.loginname = loginname;
		this.score = score;
		this.gender = gender;
		this.cha = cha;
		this.birthday = birthday;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLoginname() {
		return loginname;
	}

	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}

	public Double getScore() {
		return score;
	}

	public void setScore(Double score) {
		this.score = score;
	}

	public Boolean getGender() {
		return gender;
	}

	public void setGender(Boolean gender) {
		this.gender = gender;
	}

	public Character getCha() {
		return cha;
	}

	public void setCha(Character cha) {
		this.cha = cha;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String info() {
		return "User [birthday=" + birthday + ", cha=" + cha + ", gender="
				+ gender + ", id=" + id + ", loginname=" + loginname
				+ ", score=" + score + "]";
	}

}
