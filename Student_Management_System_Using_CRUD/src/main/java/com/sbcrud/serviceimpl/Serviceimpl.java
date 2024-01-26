package com.sbcrud.serviceimpl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbcrud.model.Student;
import com.sbcrud.repository.HomeRepository;
import com.sbcrud.servicei.ServiceI;

@Service
public class Serviceimpl implements ServiceI{

	@Autowired
	HomeRepository hr;
	
	@Override
	public void saveStudent(Student s)
	{
		hr.save(s);
	}
	
	@Override
	public Iterable<Student> displayAll()
	{
		return hr.findAll();
	}
	@Override
	public Student editStu(int sid)
	{
		return hr.findBySid(sid);
	}
	
	@Override
	public void deleteStu(Student s)
	{
		hr.delete(s);
		
	}
	@Override
	public Student loginCheck(String un, String ps)
	{
		return hr.findByUnameAndPassword(un, ps);
	}

	@Override
	public Iterable<Student> displayByUname(String un) {
		// TODO Auto-generated method stub
		return hr.findByUname(un);
	}
	
	
}