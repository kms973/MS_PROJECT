package edu.global.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.BoardMapper;
import edu.global.ex.page.Criteria;
import edu.global.ex.vo.BoardVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper boardMapper;

	@Override
	public List<BoardVO> getNotice() {

		log.info("getNotice()..");

		return boardMapper.getNotice();

	};
	
	@Override
	public List<BoardVO> getQna() {

		log.info("getQna()..");

		return boardMapper.getQna();

	};
	
	@Override
	public List<BoardVO> getReview() {

		log.info("getReview()..");

		return boardMapper.getReview();

	};
	
	@Override
	public List<BoardVO> getList() {

		log.info("getList()..");

		return boardMapper.getList();

	};
	
	@Override
	public List<BoardVO> getListWithPaging(Criteria cri) {
		
		return boardMapper.getListWithPaging(cri);
	}

	@Override
	public BoardVO read(int bid) {

		log.info("read()..");

		return boardMapper.read(bid);
	}

	@Override
	public int modify(BoardVO board) {

		log.info("modify()..");

		return boardMapper.update(board);
	}

	@Override
	public int delete(BoardVO bid) {

		log.info("delete()..");

		return boardMapper.delete(bid);
	}

	@Override
	public void register(BoardVO board) {

		log.info("register()..");

		boardMapper.insert(board);
	}

	@Override
	public void registerReply(BoardVO board) {

		log.info("registerReply()..");

		boardMapper.updateShape(board);// 답글의 세로 위치를 먼저 잡아준 후
		boardMapper.insertReply(board);// 답글을 등록한다.
	}

	@Override
	public int getTotal() {
		
		return boardMapper.getTotalCount();
	}
	
	@Override
	public int getTotalNotice() {
		
		return boardMapper.getTotalNoticeCount();
	}
	
	@Override
	public int getTotalReview() {
		
		return boardMapper.getTotalReviewCount();
	}

	@Override
	public List<BoardVO> getQnaWithPaging(Criteria cri) {
		
		return boardMapper.getQnaWithPaging(cri);
	}
	
	@Override
	public List<BoardVO> getReviewWithPaging(Criteria cri) {
		
		return boardMapper.getReviewWithPaging(cri);
	}
	
	@Override
	public List<BoardVO> getNoticeWithPaging(Criteria cri) {
		
		return boardMapper.getNoticeWithPaging(cri);
	}


}
