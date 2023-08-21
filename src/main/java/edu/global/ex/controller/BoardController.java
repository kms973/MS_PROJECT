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

	@GetMapping("/list")
	public String list(Model model) {
		log.info("list()..");

		model.addAttribute("boardList", boardService.getList());

		return "/board/list";
	}

	@GetMapping("/list2")
	public String list2(Criteria cri, Model model) {
		log.info("list2() ..");
		log.info("list2() 크리테리아값 확인" + cri);

		System.out.println(boardService.getListWithPaging(cri).size());
		
		model.addAttribute("boardList", boardService.getListWithPaging(cri));

		int total = boardService.getTotal();
		log.info("list2() 게시판 전체 갯수" + total);

		model.addAttribute("pageMaker", new PageVO(cri, total));

		return "/board/list2";
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

	@GetMapping("/delete")
	public String delete(BoardVO bid, Model model) {

		log.info("delete()..");

		model.addAttribute("delete", boardService.delete(bid));

		return "redirect:list";
	}

	@GetMapping("/write_view")
	public String write_view() {

		log.info("write_view()..");

		return "board/write_view";
	}

	@PostMapping("/write")
	public String write(BoardVO boardVO) {

		log.info("write()..");

		boardService.register(boardVO);

		return "redirect:list";
	}

	@GetMapping("/reply_view")
	public String reply_view(BoardVO boardVO, Model model) {

		log.info("reply_view()..");

		model.addAttribute("reply_view", boardService.read(boardVO.getBid()));

		return "board/reply_view";
	}

	@PostMapping("/reply")
	public String reply(BoardVO boardVO) {

		log.info("reply()..");

		boardService.registerReply(boardVO);

		return "redirect:list";
	}
}
