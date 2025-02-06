package com.mireu.app.countries;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.mireu.app.utils.DBConnection;

public class CountryDAO {
	
	public List<CountryDTO> getList(CountryDTO countryDTO) throws Exception {
		List<CountryDTO> ar = new ArrayList<>();
		Connection connection = DBConnection.getConnection();
		String sql = "SELECT * FROM COUNTRIES";
		PreparedStatement st = connection.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
			countryDTO = new CountryDTO();
			countryDTO.setCountry_id(rs.getString("COUNTRY_ID"));
			countryDTO.setCountry_name(rs.getString("COUNTRY_NAME"));
			countryDTO.setRegion_id(rs.getInt("REGION_ID"));
			ar.add(countryDTO);
		}
		
		DBConnection.disConnection(connection, st, rs);
		
		return ar;
	}
	
	
	public CountryDTO getDetail(CountryDTO countryDTO) throws Exception {
		Connection connection = DBConnection.getConnection();
		String sql = "SELECT * FROM COUNTRIES WHERE COUNTRY_ID = ?";
		PreparedStatement st = connection.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		
		if(rs.next()) {
			countryDTO.setCountry_id(rs.getString("COUNTRY_ID"));
			countryDTO.setCountry_name(rs.getString("COUNTRY_NAME"));
			countryDTO.setRegion_id(Integer.parseInt(rs.getString("REGION_ID")));
		}
		
		DBConnection.disConnection(connection, st, rs);
		
		return countryDTO;
	}

}
