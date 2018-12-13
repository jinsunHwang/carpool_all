package org.carpool.websocket;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.carpool.domain.MemberVO;
import org.carpool.security.CustomUserDetailsService;
import org.carpool.security.domain.CustomUser;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class ChatWebSocketHandler extends TextWebSocketHandler {
	
	List<WebSocketSession> sessions = new ArrayList<>();
	Map<String, WebSocketSession> userSessions = new HashMap<>();
	MemberVO mem= new MemberVO();
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("afterConnectionEstablished:" +session);
		sessions.add(session);
		String senderId = getId(session);
		userSessions.put(senderId, session);
	}
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		// TODO Auto-generated method stub
		
		String senderId = getId(session);
		for(WebSocketSession sess: sessions) {
			sess.sendMessage(new TextMessage(senderId+ ":" + message.getPayload()));
		}
		System.out.println("handleTextMessage:"+session+" : "+ message + "id :"+mem.getUserid());
	}	
			
	private String getId(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		MemberVO loginUser=(MemberVO) httpSession.get("loginUser");
		if(null == loginUser)
			return session.getId();
		else
			return loginUser.getUserid();
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("afterConnectionClosed:"+session+" : " + status);
	
	}

}
