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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.global.ex.service.Cart2Service;
import edu.global.ex.service.CartService;
import edu.global.ex.service.MsUserService;
import edu.global.ex.service.PayService;
import edu.global.ex.service.ShopProductService;
import edu.global.ex.vo.Cart2VO;
import edu.global.ex.vo.CartVO;
import edu.global.ex.vo.MsUserVO;
import edu.global.ex.vo.PayVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/buypay/*")
public class Cart2Controller {
	
	@Autowired
	private ShopProductService shopProductService;
	
	@Autowired
	private Cart2Service cart2Service;
	
	@Autowired
	private MsUserService muService;
	
	
//	@GetMapping("/")
//	public String buypay(Principal principal, Model model) {
//		List<Cart2VO> listCart2 = cart2Service.listCart2(principal.getName());
//		MsUserVO user = muService.read(principal.getName());
//		 model.addAttribute("msUserVO", user);
//		log.info(listCart2.toString());
//		model.addAttribute("listCart2", listCart2);
//		
//		return "/buypay";
//	}
	//
	@PostMapping("/insertbuypay")
    public String InsertbuyPay(Principal principal,MsUserVO msuserVO, Cart2VO cart2VO, @RequestParam("options") String options, @RequestParam("selectedQuantity") int selectedQuantity) {
        cart2VO.setUsername(principal.getName());
        cart2VO.setOptions(options);
        cart2VO.setStock_quantity(selectedQuantity);
        cart2Service.insert(cart2VO);
        return "redirect:/buypay";
    }
}