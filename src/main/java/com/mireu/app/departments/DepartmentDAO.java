package com.mireu.app.departments;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mireu.app.locations.LocationDTO;
import com.mireu.app.utils.DBConnection;

public class DepartmentDAO {

	public List<DepartmentDTO> getList() throws Exception {
		//DB에서 부서정보 조회
		System.out.println("부서리스트 조회");
		
		Connection con = DBConnection.getConnection();
		String sql = "SELECT * FROM DEPARTMENTS ORDER BY DEPARTMENT_ID DESC";
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet resultSet = st.executeQuery();
		
		List<DepartmentDTO> list = new ArrayList<DepartmentDTO>();
		
		while(resultSet.next()) {
			DepartmentDTO dto = new DepartmentDTO();
			dto.setDepartment_id(resultSet.getLong(1));
			dto.setDepartment_name(resultSet.getString(2));
			dto.setManager_id(resultSet.getLong(3));
			
			list.add(dto);
		}
		DBConnection.disConnection(con, st, resultSet);
		return list;
	}
	
	public DepartmentDTO getDetail(DepartmentDTO departmentDTO) throws Exception {
		//DB에서 하나의 부서정보를 조회
		System.out.println("하나의 정보 조회");
		
		Connection con = DBConnection.getConnection();
		String sql = "SELECT * FROM DEPARTMENTS WHERE DEPARTMENT_ID = ? ";
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setLong(1, departmentDTO.getDepartment_id());
		
		ResultSet resultSet = st.executeQuery();
		
		
		if(resultSet.next()) {
			departmentDTO.setDepartment_id(resultSet.getLong(1));
			departmentDTO.setDepartment_name(resultSet.getString(2));
			departmentDTO.setManager_id(resultSet.getLong(3));
		} else {
			departmentDTO = null;
		}
		 DBConnection.disConnection(con, st, resultSet);
		
		return departmentDTO;
	}
	
	public int add(DepartmentDTO dto) throws Exception {
		int result = 0;
		Connection connection = DBConnection.getConnection();
		String sql = "INSERT INTO DEPARTMENTS (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID) "
				+ "VALUES (DEPARTMENTS_SEQ.NEXTVAL,?,?)";
		PreparedStatement st = connection.prepareStatement(sql);
				
		st.setString(1, dto.getDepartment_name());
		st.setLong(2, dto.getManager_id());
		
		result = st.executeUpdate();
		
		DBConnection.disConnection(connection, st);
		
		return result;
	}
}
