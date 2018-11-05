package com.app.service;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.UserDao;
import com.app.pojos.User;


@Service
@Transactional
public class UserServiceImpl implements UserService 
{
	@Autowired
	private UserDao dao;

	@Override
	public User validateUser(String email, String pass) {
		return dao.validateUser(email, pass);
	}

	@Override
	public User registerUser(User user) {
		return dao.registerUser(user,user.getUserRole().getRole());
	}

	@Override
	public List<String> getRoles() {
		return dao.getRoles();
	}

	@Override
	public User findByEmail(String email) {
		return dao.findByEmail(email);
	}

	@Override
	public int generateOtp() 
	{
		Random random = new Random();
		int num = random.nextInt(99999) + 99999;
		if (num < 100000 || num > 999999) 
		{
			num = random.nextInt(99999) + 99999;
			if (num < 100000 || num > 999999)
			{
				System.out.println("Unable to generate PIN at this time..");
			}
		}
		return num;
	}
	
	@Override
	public int generateVid() 
	{
			Random random = new Random();
			int num = random.nextInt(99999) + 99999;
			if (num < 100000 || num > 999999) 
			{
				num = random.nextInt(99999) + 99999;
				if (num < 100000 || num > 999999)
				{
					System.out.println("Unable to generate VID at this time..");
				}
			}
			System.out.println("vid"+num);
			return num;
		
		}

	@Override
	public User getUserById(int id) {
		return dao.getUserById(id);
	}

	@Override
	public void updatePassword(User userPojo) {
		dao.updatePassword(userPojo);
		
	}	

	@Override
	public String deleteUser(int userid) 
	{
		User u=dao.getUserById(userid);
		return dao.deleteUser(u);
	}
}
