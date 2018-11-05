package com.app.pojos;

import java.util.Arrays;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="T_USER")
public class User 
{
	private Integer userId;
	private String fname;
	private String lname;
	private String email;
	private String state;
	private String city;
	private String gender;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date dob;
	private String password;
	private String mobile;
	private UserRole userRole;
	private byte[] userImage;
	private Application appl;
		
	@OneToOne(mappedBy="user",cascade=CascadeType.ALL)
	@JoinColumn
	public Application getAppl() {
		return appl;
	}

	public void setAppl(Application appl) {
		this.appl = appl;
	}

	public User()
	{
		this.userRole = new UserRole();
	}

	public User(String fname, String lname, String email, String state, String city, String gender, Date dob,
		String mobile, UserRole userRole) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.state = state;
		this.city = city;
		this.gender = gender;
		this.dob = dob;
		this.mobile = mobile;
		this.userRole = userRole;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="user_id", nullable = false, unique = true)
	public Integer getUserId() {
		return userId;
	}
	
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
    
	@Column(name="userImage", columnDefinition="longblob")
	public byte[] getUserImage() {
		return userImage;
	}

	public void setUserImage(byte[] userImage) {
		this.userImage = userImage;
	}
	
	@Column(name="fname",nullable=false,length=50)
	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	@Column(name="lname",nullable=false,length=50)
	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}
	
	@Column(name="email",nullable=false,length=50,unique=true)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name="state",nullable=false,length=50)
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	@Column(name="city",nullable=false,length=50)
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name="gender",nullable=false,length=50)
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Temporal(TemporalType.DATE)
	@Column(name="dob",nullable=false,length=50)
	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}
     
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name="mobile",nullable=false,length=50,unique=true)
	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="role_id")
	public UserRole getUserRole() 
	{
		return userRole;
	}

	public void setUserRole(UserRole userRole) {
		this.userRole = userRole;
	}


	@Override
	public String toString() {
		return "User [fname=" + fname + ", lname=" + lname + ", email=" + email + ", state=" + state + ", city=" + city
				+ ", gender=" + gender + ", dob=" + dob + ", mobile=" + mobile + ", userRole=" + userRole + "]";
	}	
	
}
