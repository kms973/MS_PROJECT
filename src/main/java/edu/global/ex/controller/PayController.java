package edu.global.ex.controller;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.global.ex.service.CartService;
import edu.global.ex.service.MsUserService;
import edu.global.ex.service.PayService;
import edu.global.ex.vo.CartVO;
import edu.global.ex.vo.MsUserVO;
import edu.global.ex.vo.PayVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/pay/*")
public class PayController {
	
	@Autowired
	private PayService payService;
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private MsUserService msService;
	
	
	// 결제 페이지
	@GetMapping("/")
	public String pay(Principal principal, Model model) {
//		log.info("pay()..");
//		List<PayVO> listPay = payService.listPay(principal.getName());
//		log.info(listPay.toString());
//		model.addAttribute("listPay", listPay);
		List<CartVO> listCart = cartService.listCart(principal.getName());
		MsUserVO user = msService.read(principal.getName());
		 model.addAttribute("msUserVO", user);
		log.info(listCart.toString());
		model.addAttribute("listPay", listCart);
		
		
		
		return "/pay";
	}
	//
	@PostMapping("/insertpay")
    public String InsertPay(Principal principal,@ModelAttribute List<CartVO> listCart, PayVO payVO, Model model) {
        payVO.setUsername(principal.getName());
        log.info(payVO.toString());      
        log.info(listCart.toString());  
        model.addAttribute("listCart", listCart);
        return "redirect:/pay";
    }
}