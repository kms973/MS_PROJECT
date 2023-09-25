package edu.global.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.MsUserMapper;
import edu.global.ex.vo.MsUserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MsUserServiceImpl implements MsUserService {

    @Autowired
    private MsUserMapper msUserMapper; // Company 데이터를 처리하는 Mapper

	@Override
	public List<MsUserVO> getUsers() {
		
		return msUserMapper.getUsers();
	}
	
	@Override
	public List<MsUserVO> getUser() {
		
		return msUserMapper.getUser();
	}

	@Override
	public MsUserVO read(String username, String cname) {
		// TODO Auto-generated method stub
		return msUserMapper.read(cname);
	}
	
	@Override
	public MsUserVO read(String username) {
		// TODO Auto-generated method stub
		return msUserMapper.read(username);
	}

	@Override
	public int modify(MsUserVO msUserVO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(MsUserVO username) {
		
		log.info("delete()..");
		
		return msUserMapper.delete(username);
	}

	@Override
	public void register(MsUserVO msUserVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void registerReply(MsUserVO msUserVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getTotal() {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	@Override
	public void insert(MsUserVO msUserVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public MsUserVO getCompany(MsUserVO msUserVO) {
		// TODO Auto-generated method stub
		return msUserMapper.getUser(msUserVO.getUsername());
	}

	@Override
	public MsUserVO update(MsUserVO msUserVO) {
		// TODO Auto-generated method stub
		return null;
	}


    }