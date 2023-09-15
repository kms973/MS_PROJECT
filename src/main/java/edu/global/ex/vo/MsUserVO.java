package edu.global.ex.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//ms_users
//username varchar2(50) not null primary key,
//password varchar2(100) not null,
//enabled char(1) DEFAULT '1',
//cname VARCHAR2(50) NOT NULL,        -- 회원 이름
//cbirthdate DATE,           -- 회원 생년월일
//caddress1 VARCHAR2(100),             -- 회원 주소
//caddress2 VARCHAR2(100),
//caddress3 VARCHAR2(100),
//caddress4 VARCHAR2(100),
//caddress5 VARCHAR2(100),
//cgrade NUMBER(1)                   -- 회원 등급

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class MsUserVO {

	private String username;
	private String password;
	private int enabled;
	private String cname;
	private String cbirthdate;
	private String caddress1;
	private String caddress2;
	private String caddress3;
	private String caddress4;
	private String caddress5;
	private int cgrade;
	private int phone1;
	private int phone2;
	
	private List<MsAuthVO> authList;
	
}
