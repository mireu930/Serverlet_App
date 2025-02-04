package com.mireu.app.ztest.locations;

import java.util.List;

import com.mireu.app.locations.LocationDAO;
import com.mireu.app.locations.LocationDTO;

public class LocationDAOTest {
	public static void main(String[] args){
		LocationDAO dao = new LocationDAO();
		LocationDTO dto = new LocationDTO();
//		try {
//			List<LocationDTO> list = dao.getList();
//			System.out.println(list.size());
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		dto.setLocation_id(1000);
		
		try {
			List<LocationDTO> list = dao.getDetail(dto);
			
			if(list.size()>0) {
				System.out.println(list.get(0).getLocation_id());
				System.out.println(list.get(0).getStreeat_address());
				System.out.println(list.get(0).getPostal_code());
			} else {
				System.out.println("존재안함");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
