package com.zzl.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zzl.entity.employee;

public interface employeeRepository extends JpaRepository<employee,Integer>{
		
	}
