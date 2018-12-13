package org.carpool.service;

import org.carpool.domain.AuthVO;
import org.carpool.domain.MemberVO;
import org.carpool.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {

	@Setter(onMethod_ =@Autowired)
	private MemberMapper mapper;
	
	@Setter(onMethod_ =@Autowired)
	private PasswordEncoder pwencoder;
	
	@Override
	public MemberVO read(String userid) {
		// TODO Auto-generated method stub
		log.info("read ......");
		return mapper.read(userid);
	}
	
	@Override
	public void uregister(MemberVO member) {
		// TODO Auto-generated method stub
		log.info("user register..."+member);
		member.setUserpw(pwencoder.encode(member.getUserpw()));
		mapper.userinsert(member);
	}

	@Override
	public void authregister(AuthVO auth) {
		// TODO Auto-generated method stub
		log.info("auth register..."+auth);
		
		mapper.authinsert(auth);

	}
	
	@Override
	public int usercheck(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.usercheck(member);
	}

}
