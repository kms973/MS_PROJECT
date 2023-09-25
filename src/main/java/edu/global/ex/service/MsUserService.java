package edu.global.ex.service;

import java.util.List;

import edu.global.ex.page.Criteria;
import edu.global.ex.vo.BoardVO;
import edu.global.ex.vo.CompanyVO;
import edu.global.ex.vo.MsUserVO;

public interface MsUserService {
	
	public List<MsUserVO> getUsers(); // 리스트메소드
	public List<MsUserVO> getUser(); // 리스트메소드
	public MsUserVO read(String username, String cname);  // 글보기메소드
	public MsUserVO read(String username);  // 유저 정보 하나 가져오기 id값을 통해
	public int modify(MsUserVO msUserVO); // 글수정
	public int delete(MsUserVO msUserVO); // 삭제
	public void register(MsUserVO msUserVO); //글쓰기
	public void registerReply(MsUserVO msUserVO); //답글달기
	
	public void insert(MsUserVO msUserVO); //회원등록
	public MsUserVO getCompany(MsUserVO msUserVO); //가져오기
	public MsUserVO update(MsUserVO msUserVO); //회원정보업데이트
	
	public int getTotal();

}