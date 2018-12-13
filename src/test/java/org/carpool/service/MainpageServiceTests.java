package org.carpool.service;

import org.carpool.domain.MainpageVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MainpageServiceTests {

	@Setter(onMethod_ = {@Autowired})
	private MainpageService service;
	
	
	
	@Test
	public void testRegister() {
		MainpageVO board = new MainpageVO();
		board.setTitle("테스트 글3");
		board.setDestination("연세대");
		board.setContent("테스트 내용");
		board.setMeet("12:00");
		board.setWriter("테스트유저");
		
		service.register(board);
		log.info("생성된 게시물 번호: " + board.getPnum());
		
	}
	
	@Test
	public void testGetList() {
		service.getList().forEach(board->log.info(board));
	}
	
	
}
