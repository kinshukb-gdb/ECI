package com.app.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.pojos.Application;
import com.app.pojos.User;
import com.app.service.ApplicationService;
import com.app.service.UserService;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;

@Controller
public class AdminController
{   
	@Autowired
	private ApplicationService service;
	
	@Autowired
	private UserService userservice;
	
	@GetMapping("/showList")
	public String showList(Model map, Application app) 
	{
		List<String> url = new ArrayList<String>();
		List<Application> applist = service.appList();
		for (Application application : applist) 
		{
			byte[]imgContent =  application.getUser().getUserImage();
			String url2="data:image/jpeg;base64,"+Base64.encode(imgContent);
			url.add(url2);
		}
		map.addAttribute("urllist", url);
	    map.addAttribute("user_list",service.appList());
		
	    return "admin/showList";
		
	}
	
	@GetMapping("/delete")
	public String deleteUser(@RequestParam int id)
	{
		userservice.deleteUser(id);
		return "redirect:admin/showList";
	}
	
	@GetMapping("/vid")
	public String generateVid(@RequestParam int id)
	{
		System.out.println("id  :" +id );
		Application app=service.getApplication(id);
		app.setVid_status(true);
		return "redirect:showList";
	}	
}
