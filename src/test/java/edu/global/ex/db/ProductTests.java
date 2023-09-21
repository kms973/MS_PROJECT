package edu.global.ex.db;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import edu.global.ex.service.ShopProductService;
import edu.global.ex.vo.ShopProductVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
class ProductTests {

	@Autowired
	ShopProductService shopProductService;
	
	@Transactional
	@Test
	public void test() {
		List<ShopProductVO> shopProductList = new ArrayList<ShopProductVO>();
		
		shopProductList = shopProductService.getList();
		log.info("상품 목록 리스트 가져오기 ---" + shopProductList);
		
	}
	
	@Test
	public void contextLoads() {
		assertNotNull(shopProductService);
		log.info("Product admin ProductList test");
	}
}
