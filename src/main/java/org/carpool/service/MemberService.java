package org.carpool.service;

import org.carpool.domain.AuthVO;
import org.carpool.domain.MemberVO;

public interface MemberService {
	
	public MemberVO read(String userid);

	public void uregister(MemberVO member);
	
	public void authregister(AuthVO auth);
	
	public int usercheck(MemberVO member);
	
}
