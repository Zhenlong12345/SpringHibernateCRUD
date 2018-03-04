package com.zzl.serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;


import com.zzl.entity.employee;
import com.zzl.repository.employeeRepository;
import com.zzl.service.EmployeeService;

@Service
@Transactional
public class EmployeServiceImpl implements EmployeeService{
	
	@Resource
	private employeeRepository employeeRepository;

	@Override
	public List<employee> all() {
		return employeeRepository.findAll();
	}

	@Override
	public employee getById(int id) {
		return employeeRepository.findOne(id);
	}

	@Override
	public void saveEmployee(employee e) {
		employeeRepository.save(e);
		
	}

	@Override
	public void deleteEmployee(employee e) {
		employeeRepository.delete(e);
		
	}

}
