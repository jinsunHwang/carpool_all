package org.carpool.mapper;

import org.carpool.domain.AuthVO;
import org.carpool.domain.MemberVO;

public interface MemberMapper {
	
	public MemberVO read(String userid);
	
	public void userinsert(MemberVO memberVO);
	
	public void authinsert(AuthVO authVO);
	
	public int usercheck(MemberVO memberVO);

}
