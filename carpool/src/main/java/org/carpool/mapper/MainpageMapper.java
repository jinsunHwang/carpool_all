package org.carpool.mapper;

import java.util.List;

import org.carpool.domain.MainpageVO;

public interface MainpageMapper {

	public List<MainpageVO> getList();
	
	public void insert(MainpageVO board);
	
	public void insertSelectKey(MainpageVO board);
	
	public MainpageVO read(Long pnum);
	
	public int delete(Long pnum);
	
	public int update(MainpageVO board);
	
	
}
