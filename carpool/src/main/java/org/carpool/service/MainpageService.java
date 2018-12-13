package org.carpool.service;

import java.util.List;

import org.carpool.domain.MainpageVO;

public interface MainpageService {

	public void register(MainpageVO board);
	
	public MainpageVO get(Long pnum);
	
	public boolean modify(MainpageVO board);
	
	public boolean remove(Long pnum);
	
	public List<MainpageVO> getList();
		
}
