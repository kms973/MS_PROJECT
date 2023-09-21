package edu.global.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.global.ex.page.Criteria;
import edu.global.ex.vo.ShopProductVO;

@Mapper
public interface ShopProductMapper {

	public List<ShopProductVO> getList(); // 상품보기

	public List<ShopProductVO> getRingList(); // 반지만보기

	public List<ShopProductVO> getEarringList(); // 귀걸이만보기

	public List<ShopProductVO> getNecklaceList(); // 목걸이만보기

	public List<ShopProductVO> getBraceletList(); // 팔찌만보기

	// paging관련
	int getTotalCount();

	public List<ShopProductVO> getListWithPaging(Criteria cri);

	int getTotalRing();

	public List<ShopProductVO> getListWithPagingRing(Criteria cri);

	int getTotalEarring();

	public List<ShopProductVO> getListWithPagingEarring(Criteria cri);

	int getTotalNecklace();

	public List<ShopProductVO> getListWithPagingNecklace(Criteria cri);

	int getTotalBracelet();

	public List<ShopProductVO> getListWithPagingBracelet(Criteria cri);
	
	//restcontroller용
	public ShopProductVO read(String productCategory, int productCode);
	
}