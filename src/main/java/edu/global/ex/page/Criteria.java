package edu.global.ex.page;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter

public class Criteria {

	// 페이징 처리 = 페이지 번호 + 한페이지당 몇개의 데이터를 보여줄 것인지
	private int pageNum; // 페이지번호
	private int amount; // 한페이지당 몇개의 데이터를 보여줄것인가
	
	private String type; // 타입
	private String keyword; // 키워드

	public Criteria() {
		this(1, 12); //기본값 (n,m) n페이지에 m개

	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public String[] getTypeArr() {
		return type == null? new String [] {}: type.split("");
	}
	
}
