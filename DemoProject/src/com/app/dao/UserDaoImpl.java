package com.app.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojos.User;
import com.app.pojos.UserRole;

@Repository
public class UserDaoImpl implements UserDao {
	@Autowired
	private SessionFactory sf;

	@Override
	public User validateUser(String email, String pass) {
		String str = "select u from User u where u.email=:em and u.password=:pass";
		return sf.getCurrentSession().createQuery(str, User.class).setParameter("em", email).setParameter("pass", pass)
				.getSingleResult();

	}

	@Override
	public User registerUser(User user, String roleName) {
		String hql = "select r from UserRole r where r.role=:rm";
		UserRole role = (UserRole) sf.getCurrentSession().createQuery(hql).setParameter("rm", roleName).getSingleResult();
		role.addUser(user);
		return user;
	}

	@Override
	public List<String> getRoles() {
		String str = "select distinct u.role from UserRole u";
		return sf.getCurrentSession().createQuery(str, String.class).getResultList();
	}

	@Override
	public User findByEmail(String email) {
		String str = "select u from User u where u.email=:em";
		return sf.getCurrentSession().createQuery(str, User.class).setParameter("em", email).getSingleResult();
	}

	@Override
	public User getUserById(int id) {
		return sf.getCurrentSession().get(User.class, id);
	}

	@Override
	public void updatePassword(User userPojo) {
		sf.getCurrentSession().update(userPojo);

	}

	@Override
	public String updateUser(User user)
	{
	    sf.getCurrentSession().update(user);
		return "User's detail updated Successfully";
	}

	@Override
	public String deleteUser(User user)
	{
		sf.getCurrentSession().delete(user);
		return "user Deleted Successfully";
	}
}
