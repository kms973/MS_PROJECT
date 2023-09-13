package edu.global.ex.service;

import java.util.List;

import edu.global.ex.page.Criteria;
import edu.global.ex.vo.ShopProductVO;

public interface ShopProductService {

	
	public List<ShopProductVO> getList(); //상품보기
	public List<ShopProductVO> getRingList(); //반지만보기
	public List<ShopProductVO> getEarringList(); //귀걸이만보기
	public List<ShopProductVO> getNecklaceList(); //목걸이만보기
	public List<ShopProductVO> getBraceletList(); //팔찌만보기
	
		
	//페이징
	public int getTotal();
	public List<ShopProductVO> getListWithPaging(Criteria cri);
	
	public int getTotalRing();
	public List<ShopProductVO> getListWithPagingRing(Criteria cri);
	
	public int getTotalEarring();
	public List<ShopProductVO> getListWithPagingEarring(Criteria cri);
	
	public int getTotalNecklace();
	public List<ShopProductVO> getListWithPagingNecklace(Criteria cri);
	
	public int getTotalBracelet();
	public List<ShopProductVO> getListWithPagingBracelet(Criteria cri);
	
	
	
	//restcontroller용
	public ShopProductVO read(String productCategory, int productCode);
	
	
	
}
