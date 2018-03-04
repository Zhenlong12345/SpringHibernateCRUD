package com.zzl.service;

import java.util.List;

import com.zzl.entity.employee;

public interface EmployeeService {
	public List<employee> all();
	public employee getById(int id);
	public void saveEmployee(employee e);
	public void deleteEmployee(employee e);
}
