package com.dxc;

public class Member {
private String uname,fullname,password,email,phone,address,SecurityQuestion,openingAmount,accountType,openingDate,panCard;

public String getPanCard() {
	return panCard;
}

public void setPanCard(String panCard) {
	this.panCard = panCard;
}

public String getUname() {
	return uname;
}

public void setUname(String uname) {
	this.uname = uname;
}

public String getFullname() {
	return fullname;
}

public void setFullname(String fullname) {
	this.fullname = fullname;
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

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public String getSecurityQuestion() {
	return SecurityQuestion;
}

public void setSecurityQuestion(String securityQuestion) {
	SecurityQuestion = securityQuestion;
}

public String getOpeningAmount() {
	return openingAmount;
}

public void setOpeningAmount(String openingAmount) {
	this.openingAmount = openingAmount;
}

public String getAccountType() {
	return accountType;
}

public void setAccountType(String accountType) {
	this.accountType = accountType;
}

public String getOpeningDate() {
	return openingDate;
}

public void setOpeningDate(String openingDate) {
	this.openingDate = openingDate;
}

public Member() {
	super();
	// TODO Auto-generated constructor stub
}

public Member(String uname, String fullname, String password, String email, String phone, String address,
		String securityQuestion, String openingAmount, String accountType, String openingDate,String panCard) {
	super();
	this.uname = uname;
	this.fullname = fullname;
	this.password = password;
	this.email = email;
	this.phone = phone;
	this.address = address;
	this.SecurityQuestion = securityQuestion;
	this.openingAmount = openingAmount;
	this.accountType = accountType;
	this.openingDate = openingDate;
	this.panCard = panCard;
}

@Override
public String toString() {
	return "Member [uname=" + uname + ", fullname=" + fullname + ", password=" + password + ", email=" + email
			+ ", phone=" + phone + ", address=" + address + ", SecurityQuestion=" + SecurityQuestion
			+ ", openingAmount=" + openingAmount + ", accountType=" + accountType + ", openingDate=" + openingDate
			+ ", panCard=" + panCard + "]";
}






}
