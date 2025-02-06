package com.mireu.app.locations;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mireu.app.utils.DBConnection;

public class LocationDAO {
	public List<LocationDTO> getList() throws Exception {
		System.out.println("지역정보 리스트 조회");
		
		Connection con = DBConnection.getConnection();
		String sql = "SELECT * FROM LOCATIONS";
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet resultSet = st.executeQuery();
		
		List<LocationDTO> list = new ArrayList<LocationDTO>();
		
		while(resultSet.next()) {
			LocationDTO dto = new LocationDTO();
			dto.setLocation_id(resultSet.getInt(1));
			dto.setStreeat_address(resultSet.getString(2));
			dto.setPostal_code(resultSet.getString(3));
			
			list.add(dto);
		}
		DBConnection.disConnection(con, st, resultSet);
		return list;
	}
	
	public LocationDTO getDetail(LocationDTO locationDTO) throws Exception {
		System.out.println("한 지역정보 조회");
		
		Connection con = DBConnection.getConnection();
		String sql = "SELECT * FROM LOCATIONS WHERE LOCATION_ID = ? ";
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setInt(1, locationDTO.getLocation_id());
		
		ResultSet set = st.executeQuery();
		
		
		if(set.next()) {
			locationDTO.setLocation_id(set.getInt(1));
			locationDTO.setStreeat_address(set.getString(2));
			locationDTO.setPostal_code(set.getString(3));
		} else {
			locationDTO = null;
		}
		
		DBConnection.disConnection(con, st, set);
		return locationDTO;
	}
	
	public int add(LocationDTO locationDTO) throws Exception {
		Connection con = DBConnection.getConnection();
		String sql = "INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY)"
				+ "VALUES (LOCATIONS_SEQ.NEXTVAL,?,?,?)";
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, locationDTO.getStreeat_address());
		st.setString(2, locationDTO.getPostal_code());
		st.setString(3, locationDTO.getCity());
		
		int result = st.executeUpdate();
		
		DBConnection.disConnection(con, st);
		
		return result;
	}
	
	public int update(LocationDTO locationDTO) throws Exception {
		Connection con = DBConnection.getConnection();
		String sql = "UPDATE LOCATIONS SET STREET_ADDRESS = ?, POSTAL_CODE = ? "
				+ "WHERE LOCATION_ID = ? ";
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, locationDTO.getStreeat_address());
		st.setString(2, locationDTO.getPostal_code());
		st.setInt(3, locationDTO.getLocation_id());
		
		int result = st.executeUpdate();
		
		DBConnection.disConnection(con, st);
		
		return result;
	}
	
	public int delete(LocationDTO locationDTO) throws Exception {
		Connection con = DBConnection.getConnection();
		String sql = "DELETE LOCATIONS WHERE LOCATION_ID = ? ";
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setInt(1, locationDTO.getLocation_id());
		
		int result = st.executeUpdate();
		
		DBConnection.disConnection(con, st);
		
		return result;
	}
}
