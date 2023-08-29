package edu.global.ex.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class CompanyVO {

	private String companyName; //회사명
	private String companyNum; //사업자번호 11자리
	private String ceoName; //대표자
	private String comTel; //전화번호 11자리
	private String comAddress1; //주소
	private String comAddress2; //주소
	private String comAddress3; //주소
	private String comAddress4; //주소
	private String comAddress5; //주소
	private String comCS; //고객센터

}
