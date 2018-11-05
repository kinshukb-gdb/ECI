package com.app.dao;

import java.util.List;

import com.app.pojos.Application;

public interface ApplicationDao
{
	public String sendApp(Application app);
	public List<Application> appList();
	public Application validApp(int uniqueId);
	public Application getApplication(int id); 
}
