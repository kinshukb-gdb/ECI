package com.app.service;

import java.util.List;

import com.app.pojos.User;


public interface UserService 
{
	public User validateUser(String email,String pass);
	public User registerUser(User user);
	public List<String> getRoles();
	public User findByEmail(String email);
	public int generateOtp();
	public User getUserById(int id);
	public void updatePassword(User userPojo);
	public String deleteUser(int userid);
	public int generateVid();
}
