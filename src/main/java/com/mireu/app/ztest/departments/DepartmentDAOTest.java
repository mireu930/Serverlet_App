package com.mireu.app.ztest.departments;

import java.util.List;

import com.mireu.app.departments.DepartmentDAO;
import com.mireu.app.departments.DepartmentDTO;

public class DepartmentDAOTest {

	public static void main(String[] args) {
		DepartmentDAO dao = new DepartmentDAO();
		
		try {
			List<DepartmentDTO> list = dao.getList();
			System.out.println(list.size());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
 
}
