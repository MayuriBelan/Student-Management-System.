package com.sbcrud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sbcrud.model.Student;
import com.sbcrud.servicei.ServiceI;

@Controller
public class HomeController {
	
	@Autowired
	ServiceI si;
	
	
	@RequestMapping("/")
	public String PreLogin()
	{
		return "Home";
	}
	@RequestMapping("/Home")
	public String openHome()
	{
		return "Home";
	}
	@RequestMapping("/login")
	public String openlogin()
	{
		return "login";
	}
	
	@RequestMapping("/loginsuccess")
	public String opensource(@RequestParam("uname") String un, @RequestParam("password") String ps, Model m) 
	{
	Student s2=si.loginCheck(un, ps);
	
	if(s2!=null)
	{
		if(un.equals("root"))
		{
			Iterable<Student> listStudents= si.displayAll();
			m.addAttribute("data", listStudents);
			return "success";
		}
		else
		{
			Iterable<Student> li= si.displayByUname(un);
			m.addAttribute("stud", li);
			//Student s3= (Student) si.displayAll();
			//m.addAttribute("data", s3);
			return "studentdetails";	
		}
	}
	else
	{
		return "login";
	}
}
	@RequestMapping("/register")
	
		public String openReg()
		{
			return "register";
		}
		
	@RequestMapping("/save")
	public String saveStu(@ModelAttribute Student s)
	{
		si.saveStudent(s);
		return "login";
	}
	
	@RequestMapping("/edit")
	public String editPage(@RequestParam("sid")int sid, Model m)
	{
		if(sid==1)
		{
			Student s1=si.editStu(sid);
			m.addAttribute("data",s1);
			return "edit";
		}
		else
		{
			Student s1=si.editStu(sid);
			m.addAttribute("stud",s1);
			return "editstudents";
		}
	}
	
	@RequestMapping("/update")
	public String updateData(@ModelAttribute Student s, Model m)
	{
		si.saveStudent(s);
		Iterable<Student> stList= si.displayAll();
		m.addAttribute("data", stList);
		return "success";
	}
	@RequestMapping("/updatestudents")
	public String updatestudents(@ModelAttribute Student s, @RequestParam("uname") String un,Model m)
	{
		si.saveStudent(s);
		Iterable<Student> li1= si.displayByUname(un);
		m.addAttribute("stud", li1);
		return "studentdetails";
	}
	@RequestMapping("/delete")
	public String deleteData(@ModelAttribute Student s, Model m)
	{
		si.deleteStu(s);
		Iterable<Student> sList= si.displayAll();		
		m.addAttribute("data", sList);
		return "success";
	}
	@RequestMapping("/deletestudents")
		public String deletestudents(@ModelAttribute Student s)
		{
			si.deleteStu(s);
			return "Home";
	}
	
	
	
}