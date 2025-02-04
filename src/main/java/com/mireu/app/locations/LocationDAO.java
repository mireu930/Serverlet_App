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
	
	public List<LocationDTO> getDetail(LocationDTO locationDTO) throws Exception {
		System.out.println("한 지역정보 조회");
		
		Connection con = DBConnection.getConnection();
		String sql = "SELECT * FROM LOCATIONS WHERE LOCATION_ID = ? ";
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setInt(1, locationDTO.getLocation_id());
		
		ResultSet set = st.executeQuery();
		
		List<LocationDTO> list = new ArrayList<LocationDTO>();
		
		if
		(set.next()) {
			LocationDTO dto = new LocationDTO();
			dto.setLocation_id(set.getInt(1));
			dto.setStreeat_address(set.getString(2));
			dto.setPostal_code(set.getString(3));
			
			list.add(dto);
		}
		
		DBConnection.disConnection(con, st, set);
		return list;
	}
}
