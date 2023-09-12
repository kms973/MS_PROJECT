package edu.global.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import edu.global.ex.service.ShopProductService;
import edu.global.ex.vo.ShopProductVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/shop/*")
public class RestShopController {

	@Autowired
	private ShopProductService shopProductService;
	
	// /shop/product/home 상품 목록 보기
	// /shop/product/ring 상품 목록 보기(반지)
	// /shop/product/earring 상품 목록 보기(귀걸이)
	// /shop/product/necklace 상품 목록 보기(목걸이)
	// /shop/product/bracelet 상품 목록 보기(팔찌)

	// 링 상점 페이지
			@GetMapping("/ring/{productCategory}/{productCode}")
			public ModelAndView shopRing(ShopProductVO spVO, Model model) {
				log.info("shopRing()..");
				
				model.addAttribute("spVO",spVO);
				
				ModelAndView mv = new ModelAndView();
				mv.setViewName("/shop/ring");
				
				return mv;
			}

}