package com.qst.pojo;


public class Paid {
private Integer id;
private String itemId;
private String itemName;
private Double price;
private String paydate;
private String userName;
private Integer userId;
private String status;
private Integer masterId;
private String itemNumber;

public Double getPrice() {
	return price;
}
public void setPrice(Double price) {
	this.price = price;
}
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}

public String getPaydate() {
	return paydate;
}
public void setPaydate(String paydate) {
	this.paydate = paydate;
}

public Integer getUserId() {
	return userId;
}
public void setUserId(Integer userId) {
	this.userId = userId;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getItemId() {
	return itemId;
}
public void setItemId(String itemId) {
	this.itemId = itemId;
}
public String getItemName() {
	return itemName;
}
public void setItemName(String itemName) {
	this.itemName = itemName;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public Integer getMasterId() {
	return masterId;
}
public void setMasterId(Integer masterId) {
	this.masterId = masterId;
}
public String getItemNumber() {
	return itemNumber;
}
public void setItemNumber(String itemNumber) {
	this.itemNumber = itemNumber;
}


}
