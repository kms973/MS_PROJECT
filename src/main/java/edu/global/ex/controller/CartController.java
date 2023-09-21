package edu.global.ex.controller;

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

import edu.global.ex.service.CartService;
import edu.global.ex.service.ShopProductService;
import edu.global.ex.vo.CartVO;
import edu.global.ex.vo.ShopProductVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/cart/*")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private ShopProductService shopProductService;
	
	@GetMapping("/")
    public String listCart(Model model) {
		List<CartVO> listCart = cartService.listCart();
        model.addAttribute("listCart", listCart);
        log.info("list on!");
        return "cart";
    }

    @PostMapping("/delete")
    public ResponseEntity<String> removeFromCart(@RequestParam("product_code") int product_code,@RequestParam("options") String options) {
        try {
            // 데이터베이스에서 해당 상품을 삭제합니다.
            int deletedRows = cartService.delete(product_code, options);

            if (deletedRows > 0) {
                return new ResponseEntity<>("상품 삭제 성공", HttpStatus.OK);
            } else {
                return new ResponseEntity<>("상품 삭제 실패", HttpStatus.NOT_FOUND);
            }
        } catch (Exception e) {
            return new ResponseEntity<>("상품 삭제 실패: " + e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    
    @PostMapping("/updateStockQuantity")
    public ResponseEntity<String> updateStockQuantity(
        @RequestParam("product_name") String product_name,
        @RequestParam("stock_quantity") int stock_quantity,
        @RequestParam("options") String options
        ) {
        try {
            // 해당 상품의 재고 수량을 업데이트
            cartService.updateStockQuantity(product_name, stock_quantity, options);
            return new ResponseEntity<>("수량 업데이트 성공", HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>("수량 업데이트 실패: " + e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    
    @PostMapping("/insertcart")
	public String insertCart(CartVO cartVO, @RequestParam("options") String options, @RequestParam("selectedQuantity") int selectedQuantity) {
    	cartVO.setOptions(options);
    	cartVO.setStock_quantity(selectedQuantity);
		cartService.insert(cartVO);
		
		return "redirect:/cart/";
	}
}
