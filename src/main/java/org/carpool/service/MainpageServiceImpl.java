package org.carpool.service;

import java.util.List;

import org.carpool.domain.MainpageVO;
import org.carpool.mapper.MainpageMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MainpageServiceImpl implements MainpageService {

	@Setter(onMethod_ = @Autowired)
	private MainpageMapper mapper;
	
	@Override
	public void register(MainpageVO board) {
		// TODO Auto-generated method stub
		log.info("register...."+board);
		
		mapper.insertSelectKey(board);
		
	}

	@Override
	public MainpageVO get(Long pnum) {
		// TODO Auto-generated method stub
		log.info("get...."+pnum);
				
		return mapper.read(pnum);
	}

	@Override
	public boolean modify(MainpageVO board) {
		// TODO Auto-generated method stub
		log.info("modify...."+board);
		
		return mapper.update(board)==1;
	}

	@Override
	public boolean remove(Long pnum) {
		// TODO Auto-generated method stub
		log.info("remove...."+pnum);
		
		return mapper.delete(pnum)==1;
	}

	@Override
	public List<MainpageVO> getList() {
		// TODO Auto-generated method stub
		log.info("getList....");
				
		return mapper.getList();
	}

}
