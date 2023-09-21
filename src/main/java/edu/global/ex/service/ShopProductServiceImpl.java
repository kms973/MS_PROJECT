package edu.global.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.ShopProductMapper;
import edu.global.ex.page.Criteria;
import edu.global.ex.vo.ShopProductVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ShopProductServiceImpl implements ShopProductService {

	@Autowired
	private ShopProductMapper shopProductMapper;

	@Override
	public List<ShopProductVO> getList() {

		log.info("getList()..");

		return shopProductMapper.getList();
	}

	@Override
	public List<ShopProductVO> getRingList() {

		return shopProductMapper.getRingList();
	}

	@Override
	public List<ShopProductVO> getEarringList() {

		return shopProductMapper.getEarringList();
	}

	@Override
	public List<ShopProductVO> getNecklaceList() {

		return shopProductMapper.getNecklaceList();
	}

	@Override
	public List<ShopProductVO> getBraceletList() {

		return shopProductMapper.getBraceletList();
	}

	@Override
	public int getTotal() {

		return shopProductMapper.getTotalCount();
	}

	@Override
	public List<ShopProductVO> getListWithPaging(Criteria cri) {

		return shopProductMapper.getListWithPaging(cri);
	}

	@Override
	public int getTotalRing() {

		return shopProductMapper.getTotalRing();
	}

	@Override
	public List<ShopProductVO> getListWithPagingRing(Criteria cri) {

		return shopProductMapper.getListWithPagingRing(cri);
	}

	@Override
	public int getTotalEarring() {

		return shopProductMapper.getTotalEarring();
	}

	@Override
	public List<ShopProductVO> getListWithPagingEarring(Criteria cri) {

		return shopProductMapper.getListWithPagingEarring(cri);
	}

	@Override
	public int getTotalNecklace() {

		return shopProductMapper.getTotalNecklace();
	}

	@Override
	public List<ShopProductVO> getListWithPagingNecklace(Criteria cri) {

		return shopProductMapper.getListWithPagingNecklace(cri);
	}

	@Override
	public int getTotalBracelet() {

		return shopProductMapper.getTotalBracelet();
	}

	@Override
	public List<ShopProductVO> getListWithPagingBracelet(Criteria cri) {

		return shopProductMapper.getListWithPagingBracelet(cri);
	}

	@Override
	public ShopProductVO read(String productCategory, int productCode) {

		return shopProductMapper.read(productCategory, productCode);
	}
}
