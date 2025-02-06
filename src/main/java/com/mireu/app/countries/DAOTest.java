package com.mireu.app.countries;

public class DAOTest {

	public static void main(String[] args){
		
		CountryDTO countryDTO = new CountryDTO();
		countryDTO.setCountry_id("AN");
		CountryDAO countryDAO = new CountryDAO();
		try {
			countryDTO = countryDAO.getDetail(countryDTO);
			
			System.out.println(countryDTO.getCountry_id());
			System.out.println(countryDTO.getCountry_name());
			System.out.println(countryDTO.getRegion_id());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

}
