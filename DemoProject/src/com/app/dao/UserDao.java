package com.app.dao;

import java.util.List;

import com.app.pojos.User;


public interface UserDao 
{
	public User validateUser(String email,String pass);
	public User registerUser(User user,String roleName);
	public List<String> getRoles();
	public User findByEmail(String email);
	public User getUserById(int id);
	public void updatePassword(User userPojo);
	public String updateUser(User user);
	public String deleteUser(User user);
}
