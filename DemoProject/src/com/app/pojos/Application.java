package com.app.pojos;

import java.util.Arrays;

import javax.persistence.*;

@Entity
public class Application {
	private String fatherName;
	private String motherName;
	private String address;
	private Integer uniqueId;
	private Integer App_id;
	private byte[] doc;
	private User user;
	private boolean app_status;
	private boolean vid_status;
 	
 public boolean isVid_status() {
		return vid_status;
	}
	
public void setVid_status(boolean vid_status) {
		this.vid_status = vid_status;
	}

@OneToOne
@JoinColumn
public User getUser() {
	return user;
}

public void setUser(User user) {
	this.user = user;
}

public boolean isApp_status() {
	return app_status;
}

public void setApp_status(boolean app_status) {
	this.app_status = app_status;
}

public Application() {
	super();
}

public Application(String fatherName, String motherName, String address, Integer uniqueId, User user,
		boolean app_status, boolean vid_status) {
		super();
		this.fatherName = fatherName;
		this.motherName = motherName;
		this.address = address;
		this.uniqueId = uniqueId;
		this.user = user;
		this.app_status = app_status;
		this.vid_status = vid_status;
	}

	@Column(name = "fatherName", nullable = false, length = 50)
	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	@Column(name = "motherName", nullable = false, length = 50)
	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	@Column(name = "address", nullable = false, length = 100)
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "uniqueId", nullable = false, length = 50,unique=true)
	public Integer getUniqueId() {
		return uniqueId;
	}

	public void setUniqueId(Integer uniqueId) {
		this.uniqueId = uniqueId;
	}

	@Override
	public String toString() {
		return "Application [fatherName=" + fatherName + ", motherName=" + motherName + ", address=" + address
				+ ", uniqueId=" + uniqueId + ", App_id=" + App_id + ", doc=" + Arrays.toString(doc) + ", user=" + user
				+ ", app_status=" + app_status + ", vid_status=" + vid_status + "]";
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "App_id", unique = true, nullable = false)
	public Integer getApp_id() {
		return App_id;
	}

	public void setApp_id(Integer app_id) {
		App_id = app_id;
	}

	@Column(name = "user_doc", columnDefinition = "longblob")
	public byte[] getDoc() {
		return doc;
	}

	public void setDoc(byte[] doc) {
		this.doc = doc;
	}
}
