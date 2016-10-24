package com.mill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mill.dao.RegistrationDAO;
import com.mill.entity.RegistrationEntity;

@Service
public class RegistrationServiceImpl implements RegistrationService {
	
	@Autowired
    private RegistrationDAO registerDAO;

	@Override
	@Transactional
	public void addEmployee(RegistrationEntity employee) {
		registerDAO.addEmployee(employee);
	}

	@Override
	@Transactional
	public List<RegistrationEntity> getAllEmployees() {
		return registerDAO.getAllEmployees();
	}

	@Override
	@Transactional
	public void deleteEmployee(Integer employeeId) {
		registerDAO.deleteEmployee(employeeId);
	}

}
