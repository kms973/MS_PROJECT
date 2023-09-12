package edu.global.ex.service;

import java.util.List;

import edu.global.ex.page.Criteria;
import edu.global.ex.vo.BoardVO;
import edu.global.ex.vo.MsUserVO;

public interface MsUserService {
	
	public List<MsUserVO> getUsers(); // 리스트메소드
	public List<MsUserVO> getUser(); // 리스트메소드
	public MsUserVO read(String username, String cname);  // 글보기메소드
	public int modify(MsUserVO msUserVO); // 글수정
	public int delete(MsUserVO msUserVO); // 삭제
	public void register(MsUserVO msUserVO); //글쓰기
	public void registerReply(MsUserVO msUserVO); //답글달기
	
	public int getTotal();

}
