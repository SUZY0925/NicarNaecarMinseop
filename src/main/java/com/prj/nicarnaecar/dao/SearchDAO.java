package com.prj.nicarnaecar.dao;

import java.util.List;

import com.prj.nicarnaecar.vo.VehicleVO;

public interface SearchDAO {
	
	// 차량 전체 목록
		public List<VehicleVO> AllVehicleList();
		
	// 날짜로 검색한 목록
		public List<VehicleVO> dateVehicleList(String bin, String bout, String eoffice);
		
	// 차량으로 검색한 목록
		public List<VehicleVO> vehicleList();
		
	// 예약 보기 (전)
		VehicleVO reservationView(String vnumber);
		
	// 인도 할 차량 보기
		public List<VehicleVO> deliverySearch();
				
	// 반납 할 차량 보기
		public List<VehicleVO> returnSearch();
}
