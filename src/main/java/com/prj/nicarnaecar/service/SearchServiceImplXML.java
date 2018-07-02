package com.prj.nicarnaecar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.prj.nicarnaecar.dao.SearchDAO;
import com.prj.nicarnaecar.vo.VehicleVO;

@Service
public class SearchServiceImplXML implements SearchService {

	@Autowired
	@Qualifier("searchDAOImplXML")
	SearchDAO searchdao;
	
	@Override
	public List<VehicleVO> AllVehicleList() {
		return searchdao.AllVehicleList();
	}

	@Override
	public List<VehicleVO> dateVehicleList(String bin, String bout, String eoffice) {
		return searchdao.dateVehicleList(bin, bout, eoffice);
	}

	@Override
	public List<VehicleVO> vehicleList() {
		return null;
	}

	@Override
	public VehicleVO reservationView(String vnumber) {
		return searchdao.reservationView(vnumber);
	}

	@Override
	public List<VehicleVO> deliverySearch() {
		return searchdao.deliverySearch();
	}

	@Override
	public List<VehicleVO> returnSearch() {
		return searchdao.returnSearch();
	}

}
