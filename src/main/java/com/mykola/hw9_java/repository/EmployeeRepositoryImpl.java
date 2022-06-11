package com.mykola.hw9_java.repository;

import com.mykola.hw9_java.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.List;

@Repository
public class EmployeeRepositoryImpl implements EmployeeRepository {

    @Autowired
    private EntityManager entityManager;

    @Override
    public List<Employee> getAllEmployees() {
        return entityManager.createQuery("FROM Employee").getResultList();
    }

    @Override
    public void saveOrUpdateEmployee(Employee employee) {
        entityManager.merge(employee);
    }

    @Override
    public Employee getEmployeeById(int id) {
        return entityManager.find(Employee.class, id);
    }

    @Override
    public void deleteEmployeeById(int id) {
        entityManager.createQuery("DELETE FROM Address WHERE employee.id = " + id).executeUpdate();
        entityManager.createQuery("DELETE FROM Employee WHERE id = " + id).executeUpdate();
    }
}
