package com.mill.service;

import java.util.List;

import com.mill.entity.RegistrationEntity;

public interface RegistrationService {
	public void addEmployee(RegistrationEntity employee);
    public List<RegistrationEntity> getAllEmployees();
    public void deleteEmployee(Integer employeeId);
}
