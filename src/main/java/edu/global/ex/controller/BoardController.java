package edu.global.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import edu.global.ex.page.Criteria;
import edu.global.ex.page.PageVO;
import edu.global.ex.service.BoardService;
import edu.global.ex.vo.BoardVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@GetMapping("/notice")
	public String notice(Criteria cri, Model model) {
		log.info("notice()..");
		log.info("notice() 크리테리아값 확인" + cri);

		model.addAttribute("boardList", boardService.getNoticeWithPaging(cri));

		 int total = boardService.getTotal(); log.info("list() 게시판 전체 갯수" + total);
		 
		 model.addAttribute("pageMaker", new PageVO(cri, total));
		
		return "/board/notice";
	}

	@GetMapping("/review")
	public String review(Criteria cri, Model model) {
		log.info("review()..");
		log.info("review() 크리테리아값 확인" + cri);

		model.addAttribute("boardList", boardService.getNotice());
		model.addAttribute("boardList_Review", boardService.getReviewWithPaging(cri));

		 int total = boardService.getTotal(); log.info("list() 게시판 전체 갯수" + total);
		 
		 model.addAttribute("pageMaker", new PageVO(cri, total));
		
		return "/board/review";
	}
	
	@GetMapping("/qna")
	public String qna(Criteria cri, Model model) {
		log.info("qna()..");
		log.info("qna() 크리테리아값 확인" + cri);

		model.addAttribute("boardList", boardService.getNotice());
		model.addAttribute("boardList_Qna", boardService.getQnaWithPaging(cri));

		 int total = boardService.getTotal(); log.info("list() 게시판 전체 갯수" + total);
		 
		 model.addAttribute("pageMaker", new PageVO(cri, total));
		
		return "/board/qna";
	}

	@GetMapping("/list")
	public String list2(Criteria cri, Model model) {
		log.info("list()..");
		log.info("list() 크리테리아값 확인" + cri);

		model.addAttribute("boardList", boardService.getNotice());
		model.addAttribute("boardList_Qna", boardService.getQna());
		model.addAttribute("boardList_Review", boardService.getReview());

		return "/board/list";
	}
	
	@GetMapping("/content_view_notice")
	public String content_view_notice(BoardVO boardVO, Model model) {
		log.info("content_view_notice()..");

		int bid = boardVO.getBid();

		model.addAttribute("content_view", boardService.read(bid));

		return "/board/content_view_notice";
	}
	
	@GetMapping("/content_view_review")
	public String content_view_review(BoardVO boardVO, Model model) {
		log.info("content_view_review()..");

		int bid = boardVO.getBid();

		model.addAttribute("content_view", boardService.read(bid));

		return "/board/content_view_review";
	}
	
	
	@GetMapping("/content_view_qna")
	public String content_view_qna(BoardVO boardVO, Model model) {
		log.info("content_view_qna()..");

		int bid = boardVO.getBid();

		model.addAttribute("content_view", boardService.read(bid));

		return "/board/content_view_qna";
	}

	@GetMapping("/content_view")
	public String content_view(BoardVO boardVO, Model model) {
		log.info("content_view()..");

		int bid = boardVO.getBid();

		model.addAttribute("content_view", boardService.read(bid));

		return "/board/content_view";
	}

	@PostMapping("/modify")
	public String modify(BoardVO boardVO) {
		log.info("modify()..");

		int rn = boardService.modify(boardVO);

		log.info("modify().. result number :: " + rn);

		return "redirect:list";
	}
	
	@GetMapping("/delete_notice")
	public String delete_notice(BoardVO bid, Model model) {

		log.info("delete_notice()..");

		model.addAttribute("delete", boardService.delete(bid));

		return "redirect:notice";
	}
	
	
	@GetMapping("/delete_review")
	public String delete_review(BoardVO bid, Model model) {

		log.info("delete_review()..");

		model.addAttribute("delete", boardService.delete(bid));

		return "redirect:review";
	}

	@GetMapping("/delete_qna")
	public String delete_qna(BoardVO bid, Model model) {

		log.info("delete_qna()..");

		model.addAttribute("delete", boardService.delete(bid));

		return "redirect:qna";
	}
	
	
	@GetMapping("/delete")
	public String delete(BoardVO bid, Model model) {

		log.info("delete()..");

		model.addAttribute("delete", boardService.delete(bid));

		return "redirect:list";
	}

	@GetMapping("/write_view_notice")
	public String write_view_notice() {

		log.info("write_view_notice()..");

		return "board/write_view_notice";
	}
	
	@GetMapping("/write_view_qna")
	public String write_view_qna() {

		log.info("write_view_qna()..");

		return "board/write_view_qna";
	}
	
	@GetMapping("/write_view_review")
	public String write_view_review() {

		log.info("write_view_review()..");

		return "board/write_view_review";
	}
	
	@GetMapping("/write_view")
	public String write_view() {

		log.info("write_view()..");

		return "board/write_view";
	}

	@PostMapping("/write_notice")
	public String write_notice(BoardVO boardVO) {

		log.info("write_notice()..");

		boardService.register(boardVO);

		return "redirect:notice";
	}
	
	@PostMapping("/write_qna")
	public String write_qna(BoardVO boardVO) {

		log.info("write_qna()..");

		boardService.register(boardVO);

		return "redirect:qna";
	}
	
	@PostMapping("/write_review")
	public String write_review(BoardVO boardVO) {

		log.info("write_review()..");

		boardService.register(boardVO);

		return "redirect:review";
	}
	
	@PostMapping("/write")
	public String write(BoardVO boardVO) {

		log.info("write()..");

		boardService.register(boardVO);

		return "redirect:list";
	}
	
	@GetMapping("/reply_view_notice")
	public String reply_view_notice(BoardVO boardVO, Model model) {

		log.info("reply_view_notice()..");

		model.addAttribute("reply_view_notice", boardService.read(boardVO.getBid()));

		return "board/reply_view_notice";
	}

	@GetMapping("/reply_view_review")
	public String reply_view_review(BoardVO boardVO, Model model) {

		log.info("reply_view_review()..");

		model.addAttribute("reply_view_review", boardService.read(boardVO.getBid()));

		return "board/reply_view_review";
	}
	
	@GetMapping("/reply_view_qna")
	public String reply_view_qna(BoardVO boardVO, Model model) {

		log.info("reply_view_qna()..");

		model.addAttribute("reply_view_qna", boardService.read(boardVO.getBid()));

		return "board/reply_view_qna";
	}
	
	@GetMapping("/reply_view")
	public String reply_view(BoardVO boardVO, Model model) {

		log.info("reply_view()..");

		model.addAttribute("reply_view", boardService.read(boardVO.getBid()));

		return "board/reply_view";
	}
	
	@PostMapping("/reply_notice")
	public String reply_notice(BoardVO boardVO) {

		log.info("reply_notice()..");

		boardService.registerReply(boardVO);

		return "redirect:notice";
	}

	@PostMapping("/reply_review")
	public String reply_review(BoardVO boardVO) {

		log.info("reply_review()..");

		boardService.registerReply(boardVO);

		return "redirect:review";
	}
	
	@PostMapping("/reply_qna")
	public String reply_qna(BoardVO boardVO) {

		log.info("reply_qna()..");

		boardService.registerReply(boardVO);

		return "redirect:qna";
	}
	
	@PostMapping("/reply")
	public String reply(BoardVO boardVO) {

		log.info("reply()..");

		boardService.registerReply(boardVO);

		return "redirect:list";
	}

}
