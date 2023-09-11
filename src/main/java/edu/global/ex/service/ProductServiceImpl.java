package edu.global.ex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.ProductMapper;
import edu.global.ex.vo.ProductVO;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper productMapper; //

	
	@Override
	public void insert(ProductVO productVO) {

	}

}
