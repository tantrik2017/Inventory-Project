package com.mill.dao;

import java.util.List;

import com.mill.entity.RegistrationEntity;

public interface RegistrationDAO 
{
    public void addEmployee(RegistrationEntity employee);
    public List<RegistrationEntity> getAllEmployees();
    public void deleteEmployee(Integer employeeId);
}