package edu.global.ex.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.global.ex.service.CartService;
import edu.global.ex.service.PayService;
import edu.global.ex.vo.CartVO;
import edu.global.ex.vo.PayVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/pay/*")
public class PayController {
	
	@Autowired
	private PayService payService;
	
	@GetMapping("/")
    public String listPay(Model model) {
		List<PayVO> listPay = payService.listPay();
        model.addAttribute("listPay", listPay);
        log.info("listPay on!");
        return "pay";
    }
	
	@PostMapping("/add")
    public String addToPay(PayVO payVO) {
        payService.insert(payVO);
        return "redirect:/pay";
    }
}
