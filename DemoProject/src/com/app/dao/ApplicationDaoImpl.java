package com.app.dao;

import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojos.Application;

@Repository
public class ApplicationDaoImpl implements ApplicationDao {

	@Autowired
	SessionFactory sf;
	
	@Override
	public String sendApp(Application app)
	{
		sf.getCurrentSession().save(app);
		return "from application dao.....";
	}

	@Override
	public List<Application> appList()
	{
		String jpql="select a from Application a join fetch a.user";
		List<Application> ll= sf.getCurrentSession().createQuery(jpql,Application.class).getResultList();
		return ll;
	}

	@Override
	public Application validApp(int uniqueId) 
	{
		return sf.getCurrentSession().createQuery("select a from Application a where a.uniqueId=:id", Application.class).setParameter("id", uniqueId).getSingleResult();
	}

	@Override
	public Application getApplication(int id)
	{
		Application app= sf.getCurrentSession().get(Application.class,id);
		app.setVid_status(true);
		sf.getCurrentSession().update(app);
		return app;
	}
}
