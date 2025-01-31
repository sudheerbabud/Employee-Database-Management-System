package com.pack1.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.pack1.model.Employee;

public class EmployeeDAO {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int insertEmployee(Employee emp) {
		String sql = "INSERT INTO employee(eid, fname, lname, email, phone, age, gender, sal, role, experience) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		return template.update(sql, emp.getEid(), emp.getFname(), emp.getLname(), emp.getEmail(), emp.getPhone(),
				emp.getAge(), emp.getGender(), emp.getSal(), emp.getRole(), emp.getExperience());
	}

	public List<Employee> selectEmployees() {
		String sql = "select * from employee";
		return template.query(sql, new RowMapper<Employee>() {
			public Employee mapRow(ResultSet rs, int row) throws SQLException {
				Employee e = new Employee();
				e.setEid(rs.getInt(1));
				e.setFname(rs.getString(2));
				e.setLname(rs.getString(3));
				e.setEmail(rs.getString(4));
				e.setPhone(rs.getLong(5));
				e.setAge(rs.getInt(6));
				e.setGender(rs.getString(7));
				e.setSal(rs.getDouble(8));
				e.setRole(rs.getString(9));
				e.setExperience(rs.getInt(10));
				return e;
			}
		});
	}
	
	public Employee getEmpById(int id) {
		String sql = "select * from employee where eid = ?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Employee>(Employee.class));
	}
	
	public int updateEmployee(Employee emp) {
	    String sql = "UPDATE employee SET fname = ?, lname = ?, email = ?, phone = ?, age = ?, gender = ?, sal = ?, role = ?, experience = ? "
	               + "WHERE eid = ?";
	    return template.update(sql, emp.getFname(), emp.getLname(), emp.getEmail(), emp.getPhone(),
	                           emp.getAge(), emp.getGender(), emp.getSal(), emp.getRole(), emp.getExperience(),
	                           emp.getEid());
	}
	
	public int deleteEmployee(int eid) {
		String sql = "delete from employee where eid=" + eid + "";
		return template.update(sql);
	}

}
