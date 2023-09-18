package edu.global.ex.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.global.ex.mapper.ProductMapper;
import edu.global.ex.service.ProductService;
import edu.global.ex.vo.ProductVO;
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

    // 상품 정보 VO 생성
    private ProductVO productvo = new ProductVO();

    @GetMapping("/admin/product_new")
    public String adminProduct() {
        log.info("adminProduct()..");
        return "/admin/product_new";
    }

    @PostMapping("/admin/product_new")
    public String PostadminProduct(ProductVO pvo) {

        // 상품 정보를 데이터베이스에 삽입
        pmp.insert(pvo);

        return "/admin/product/product_new";
    }

    @PostMapping("/product/update")
    public String updateProductInfo(@RequestParam("stock_quantity") int newQuantity,
            @RequestParam("Price") double newPrice) {
        // 재고와 가격 업데이트
        stock_quantity = newQuantity;
        Price = newPrice;

        return "redirect:admin/product";
    }

    @RequestMapping("/admin")
    public class ProductIMGUpload {

        // 이미지 업로드 디렉터리 경로 설정
        private static final String UPLOAD_DIR = "src/main/resources/static/img/";

        @PostMapping("/product_new")
        public String handleFileUpload(@RequestParam("product_img") MultipartFile file,
                RedirectAttributes redirectAttributes) {
            if (file.isEmpty()) {
                redirectAttributes.addFlashAttribute("message", "업로드할 파일을 선택해 주세요.");
                return "redirect:/admin/product/new"; // 이미지를 선택하지 않았을 때 처리할 로직
            }

            try {
                // 업로드할 디렉터리 생성 (이미 존재하는 경우 생략 가능)
                Path uploadPath = Path.of(UPLOAD_DIR);
                Files.createDirectories(uploadPath);

                // 파일명 중복 방지를 위해 현재 시간을 이용한 고유한 파일명 생성
                String uniqueFileName = System.currentTimeMillis() + "_" + file.getOriginalFilename();

                // 파일 저장
                Path filePath = uploadPath.resolve(uniqueFileName);
                Files.copy(file.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);

                // 파일 저장에 성공한 경우, 파일명을 리다이렉트로 넘겨줄 수 있음
                redirectAttributes.addFlashAttribute("message", "파일 " + uniqueFileName + " 업로드에 성공하였습니다.");

            } catch (IOException e) {
                e.printStackTrace();
                redirectAttributes.addFlashAttribute("message", "파일 업로드에 실패하였습니다.");
            }

            return "redirect:/admin/product/new";
        }
    }
}
