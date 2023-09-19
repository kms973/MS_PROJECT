package edu.global.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
	private ShopProductService spService;
	// 상세 페이지

	@GetMapping("/{productCategory}/{productCode}")
	public ModelAndView shop(@PathVariable String productCategory, 
	                         @PathVariable int productCode,
	                         ShopProductVO spVO, Model model) {
	    log.info("shop()..");


	    log.info(productCategory + productCode);
	    
//	    log.info(spService.read(productCategory, productCode));

	    // 모델에 데이터 추가
	    model.addAttribute("spVO", spService.read(productCategory, productCode));

	    System.out.println(spService.read(productCategory, productCode));
	    
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("/shop/ring");

	    return mv;
	}

}