package edu.global.ex.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import edu.global.ex.mapper.ProductMapper;
import edu.global.ex.service.ProductService;
import edu.global.ex.service.ShopProductService;
import edu.global.ex.vo.ProductVO;
import edu.global.ex.vo.ShopProductVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ProductController {

	@Autowired
	private ProductMapper pmp;

	// 재고와 가격 초기값 설정
	private int stock_quantity = 0;
	private double Price = 0.0;

	@Autowired
	private ProductService productService;
	
	@Autowired
	private ShopProductService spService;

	// 상품 정보 VO 생성
	private ProductVO productvo = new ProductVO();

	@GetMapping("/admin/product_new")
	public String adminProduct() {
		log.info("adminProduct()..");
		return "/admin/product_new";
	}

	@Bean
	public CommonsMultipartResolver multipartResolver() {
	    CommonsMultipartResolver resolver = new CommonsMultipartResolver();
	    resolver.setDefaultEncoding("utf-8");
	    // 다음 라인을 통해 임시 디렉토리를 설정할 수 있습니다.
	    // resolver.setUploadTempDir(new FileSystemResource("/src/main/static/img/"));
	    return resolver;
	}

	
	//private static final String UPLOAD_DIR = "/static/img/";

	@PostMapping("/admin/product_new")
	public String PostadminProduct(@RequestParam("file") MultipartFile file, ProductVO pvo,Model model) {

	    if (!file.isEmpty()) {
	        try {
	            byte[] bytes = file.getBytes();
	            Path path = Paths.get("src/main/resources/static/img/" + file.getOriginalFilename());
	            Files.write(path, bytes);
	            // 파일 업로드 성공 처리
	            // 파일 이름을 ProductVO 객체에 설정
	            pvo.setProduct_img(file.getOriginalFilename());
	        } catch (IOException e) {
	            e.printStackTrace();
	            // 파일 업로드 실패 처리
	            // 여기서 실패 처리를 하는 것이 좋습니다.
	            // 파일 업로드 실패 시에는 pvo 객체를 DB에 저장하지 않아야 합니다.
	            return "upload_failure_view"; // 실패 시 보여줄 뷰 페이지
	        }
	    }
	    // ProductVO 객체를 DB에 저장
	    pmp.insert(pvo);
	    model.addAttribute("list", spService.getList());
	    return "/admin/product/product_list";
	}
	
	@PostMapping("/admin/product_update")
	public String PostadminProductUpdate(@RequestParam("file") MultipartFile file, ProductVO pvo,Model model) {

	    if (!file.isEmpty()) {
	        try {
	            byte[] bytes = file.getBytes();
	            Path path = Paths.get("src/main/resources/static/img/" + file.getOriginalFilename());
	            Files.write(path, bytes);
	            // 파일 업로드 성공 처리
	            // 파일 이름을 ProductVO 객체에 설정
	            pvo.setProduct_img(file.getOriginalFilename());
	        } catch (IOException e) {
	            e.printStackTrace();
	            // 파일 업로드 실패 처리
	            // 여기서 실패 처리를 하는 것이 좋습니다.
	            // 파일 업로드 실패 시에는 pvo 객체를 DB에 저장하지 않아야 합니다.
	            return "upload_failure_view"; // 실패 시 보여줄 뷰 페이지
	        }
	    }
	    // ProductVO 객체를 DB에 저장
	    pmp.update(pvo);
	    model.addAttribute("list", spService.getList());
	    return "/admin/product/product_list";
	}

	@GetMapping("/admin/product/delete/{productCategory}/{productCode}")
	public String deleteProduct(@PathVariable("productCategory") String product_category, 
            @PathVariable("productCode") int product_code,ProductVO productVO,Model model) {
		log.info("deleteProduct");
		productService.delete(product_category, product_code);
		model.addAttribute("list", spService.getList());
		return "/admin/product/product_list";
	}

	@GetMapping("/admin/product/update/{productCategory}/{productCode}")
	public String updateProduct(@PathVariable("productCategory") String product_category, 
            @PathVariable("productCode") int product_code,ShopProductVO productVO, Model model) {
		log.info("updateProduct");
		model.addAttribute("product", spService.read(product_category, product_code));
		log.info(spService.read(product_category, product_code).toString());
		return "admin/product/product_update";
	}

}
