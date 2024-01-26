package com.sbcrud.servicei;

import com.sbcrud.model.Student;

public interface ServiceI {

	public void saveStudent(Student s);
	
	public Iterable<Student> displayAll();
	
	public Student editStu(int sid);
	
	public void deleteStu(Student s);
	
	public Student loginCheck(String un, String ps);

	public Iterable<Student> displayByUname(String un);




	
}
