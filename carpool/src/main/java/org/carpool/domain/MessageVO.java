package org.carpool.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MessageVO {
	private int message_id;
	private String message_sender;
	private String message_content;
	private Date message_sendTime;
	private String chatroom_chatroom_id;
	private String user_name;
	private String reciver_user_name;
	private String class_name;
	private int class_od;
	private String tutor_tutor_id;
	private String tutor_name;
	private String tuti_id;
	private int unReadCount;
}
