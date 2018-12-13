package org.carpool.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MainpageVO {

	private Long pnum;
	private String title;
	private String destination;
	private String content;
	private String writer;
	private String meet;
	private Date regdate;
	private Date updateDate;
	
}
