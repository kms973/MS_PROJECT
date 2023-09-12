package edu.global.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.global.ex.service.CartService;
import edu.global.ex.vo.CartVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/cart")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@GetMapping("/list")
    public String listCart(Model model) {
        model.addAttribute("listCart", cartService.listCart());
        return "cart/list";
    }

    @PostMapping("/add")
    public String addToCart(CartVO cartVO) {
        cartService.insert(cartVO);
        return "redirect:/cart/list";
    }

    @PostMapping("/delete")
    public String removeFromCart(@RequestParam("product_name") String productName) {
        CartVO cartVO = new CartVO();
        cartVO.setProduct_name(productName);
        cartService.delete(cartVO);
        return "redirect:/cart/list";
    }
}
