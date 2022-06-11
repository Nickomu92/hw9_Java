package com.mykola.hw9_java.repository;

import com.mykola.hw9_java.entity.Employee;

import java.util.List;

public interface EmployeeRepository {

    List<Employee> getAllEmployees();

    void saveOrUpdateEmployee(Employee employee);

    Employee getEmployeeById(int id);

    void deleteEmployeeById(int id);
}
