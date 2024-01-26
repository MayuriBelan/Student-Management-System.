package com.sbcrud.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sbcrud.model.Student;

@Repository
public interface HomeRepository extends CrudRepository<Student, Integer>{

	public Student findBySid(int sid);

	public Student findByUnameAndPassword(String un, String ps);

	public Iterable<Student> findByUname(String uname);	


}
