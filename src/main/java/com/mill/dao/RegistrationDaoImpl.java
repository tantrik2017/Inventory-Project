package com.mill.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mill.entity.RegistrationEntity;

@Repository
public class RegistrationDaoImpl implements RegistrationDAO  {

	@Autowired
    private SessionFactory sessionFactory;
	
	
	@Override

	public void addEmployee(RegistrationEntity employee) {
		this.sessionFactory.getCurrentSession().save(employee);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<RegistrationEntity> getAllEmployees() {
	
		return this.sessionFactory.getCurrentSession().createQuery("from RegistrationEntity").list();
	}

  public static void main(String[] args) {
	  System.out.println(org.hibernate.Version.getVersionString());
	  
}
	@Override
	public void deleteEmployee(Integer id) {
		Serializable ser_id=new Integer(id);
	/*	Session session=sessionFactory.getCurrentSession();
		Object enity= session.load(
				RegistrationEntity.class, ser_id);*/
		RegistrationEntity employee=new RegistrationEntity();
		employee.setId(id);
		sessionFactory.getCurrentSession().delete(employee);
       /*if (enity!=null) {
        	session.delete(enity);
        }*/
	}
	
	
	

}
