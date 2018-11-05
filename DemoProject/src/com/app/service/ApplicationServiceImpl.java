package com.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.ApplicationDao;
import com.app.dao.UserDao;
import com.app.pojos.Application;

@Service
@Transactional
public class ApplicationServiceImpl implements ApplicationService {

	@Autowired
	ApplicationDao dao;

	@Override
	public String sendApp(Application app)
	{		
		return dao.sendApp(app);
	}

	@Override
	public List<Application> appList() 
	{   
		
		return dao.appList();
	}
	
	@Override
	public Application validApp(int uniqueId) {
		// TODO Auto-generated method stub
		return dao.validApp(uniqueId);
	}
	
	@Override
	public Application getApplication(int id) 
	{
		Application app=dao.getApplication(id);
		return app;
	}
	
}
