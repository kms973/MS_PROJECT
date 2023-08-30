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
		// TODO Auto-generated method stub
		log.info("getList()..");

		return shopProductMapper.getList();
	}

	@Override
	public List<ShopProductVO> getRingList() {
		// TODO Auto-generated method stub
		return shopProductMapper.getRingList();
	}

	@Override
	public List<ShopProductVO> getEarringList() {
		// TODO Auto-generated method stub
		return shopProductMapper.getEarringList();
	}

	@Override
	public List<ShopProductVO> getNecklaceList() {
		// TODO Auto-generated method stub
		return shopProductMapper.getNecklaceList();
	}

	@Override
	public List<ShopProductVO> getBraceletList() {
		// TODO Auto-generated method stub
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
		// TODO Auto-generated method stub
		return shopProductMapper.getTotalRing();
	}

	@Override
	public List<ShopProductVO> getListWithPagingRing(Criteria cri) {
		// TODO Auto-generated method stub
		return shopProductMapper.getListWithPagingRing(cri);
	}

	@Override
	public int getTotalEarring() {
		// TODO Auto-generated method stub
		return shopProductMapper.getTotalEarring();
	}

	@Override
	public List<ShopProductVO> getListWithPagingEarring(Criteria cri) {
		// TODO Auto-generated method stub
		return shopProductMapper.getListWithPagingEarring(cri);
	}

	@Override
	public int getTotalNecklace() {
		// TODO Auto-generated method stub
		return shopProductMapper.getTotalNecklace();
	}

	@Override
	public List<ShopProductVO> getListWithPagingNecklace(Criteria cri) {
		// TODO Auto-generated method stub
		return shopProductMapper.getListWithPagingNecklace(cri);
	}

	@Override
	public int getTotalBracelet() {
		// TODO Auto-generated method stub
		return shopProductMapper.getTotalBracelet();
	}

	@Override
	public List<ShopProductVO> getListWithPagingBracelet(Criteria cri) {
		// TODO Auto-generated method stub
		return shopProductMapper.getListWithPagingBracelet(cri);
	}

}
