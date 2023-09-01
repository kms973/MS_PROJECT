package edu.global.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.global.ex.page.Criteria;
import edu.global.ex.page.PageVO;
import edu.global.ex.service.ShopProductService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/shop/*")
public class ShopController {

	@Autowired
	private ShopProductService shopProductService;
	
	// /shop/product/home 상품 목록 보기
	// /shop/product/ring 상품 목록 보기(반지)
	// /shop/product/earring 상품 목록 보기(귀걸이)
	// /shop/product/necklace 상품 목록 보기(목걸이)
	// /shop/product/bracelet 상품 목록 보기(팔찌)

	@GetMapping("/home")
	public String productHome(//String category,
			Model model,Criteria cri) {
		log.info("shopProductHome() ..");
		log.info("shopProductHome() 크리테리아값 확인" + cri);
//		if("".equals(category)) {
//			model.addAttribute("ShopProductList", shopProductService.getListWithPaging(cri));
//		}
		System.out.println(shopProductService.getListWithPaging(cri).size());
		
		model.addAttribute("ShopProductList", shopProductService.getListWithPaging(cri));
		
		int total = shopProductService.getTotal();
		log.info("shopProduct() 전체 갯수" + total);

		model.addAttribute("pageMaker", new PageVO(cri, total));
		
		return "/shop/home";
	}

	@GetMapping("/ring")
	public String productRing(Model model,Criteria cri) {
		log.info("shopring()..");
		log.info("shopproductRing() 크리테리아값 확인" + cri);

		System.out.println(shopProductService.getListWithPagingRing(cri).size());
		
		model.addAttribute("ShopProductList", shopProductService.getListWithPagingRing(cri));
		
		int total = shopProductService.getTotalRing();
		log.info("shopproductRing() 전체 갯수" + total);

		model.addAttribute("pageMaker", new PageVO(cri, total));
		
		return "/shop/home";
	}

	@GetMapping("/earring")
	public String productEarring(Model model,Criteria cri) {
		log.info("shopEarring()..");
		log.info("shopproductEarring() 크리테리아값 확인" + cri);

		System.out.println(shopProductService.getListWithPagingEarring(cri).size());
		
		model.addAttribute("ShopProductList", shopProductService.getListWithPagingEarring(cri));
		
		int total = shopProductService.getTotalEarring();
		log.info("shopproductEarring() 전체 갯수" + total);

		model.addAttribute("pageMaker", new PageVO(cri, total));
		
		return "/shop/home";
	}

	@GetMapping("/necklace")
	public String productNecklace(Model model,Criteria cri) {
		log.info("shopNecklace()..");
		log.info("shopproductNecklace() 크리테리아값 확인" + cri);

		System.out.println(shopProductService.getListWithPagingNecklace(cri).size());
		
		model.addAttribute("ShopProductList", shopProductService.getListWithPagingNecklace(cri));
		
		int total = shopProductService.getTotalNecklace();
		log.info("shopproductNecklace() 전체 갯수" + total);

		model.addAttribute("pageMaker", new PageVO(cri, total));
		
		return "/shop/home";
	}

	@GetMapping("/bracelet")
	public String productBracelet(Model model,Criteria cri) {
		log.info("shopBracelet()..");
		log.info("shopproductBracelet() 크리테리아값 확인" + cri);

		System.out.println(shopProductService.getListWithPagingBracelet(cri).size());
		
		model.addAttribute("ShopProductList", shopProductService.getListWithPagingBracelet(cri));
		
		int total = shopProductService.getTotalBracelet();
		log.info("shopproductBracelet() 전체 갯수" + total);

		model.addAttribute("pageMaker", new PageVO(cri, total));
		
		return "/shop/home";
	}

}
