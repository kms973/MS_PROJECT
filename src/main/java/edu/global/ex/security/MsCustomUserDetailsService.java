package edu.global.ex.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.MsUserMapper;
import edu.global.ex.vo.MsCustomUserDetailsVO;
import edu.global.ex.vo.MsUserVO;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Service
public class MsCustomUserDetailsService implements UserDetailsService {
	
	@Autowired
	private MsUserMapper userMapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException{
		
		log.warn("Load User By UserVO number :" + username);
		
		MsUserVO user = userMapper.getUser(username);
		
		log.warn("queried by UserVO mapper: " + user);
		
		return user == null ? null : new MsCustomUserDetailsVO(user);
	}
	
}
