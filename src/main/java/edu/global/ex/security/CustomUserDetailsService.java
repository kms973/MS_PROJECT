package edu.global.ex.security;

//
//@Slf4j
//@Service
//public class CustomUserDetailsService implements UserDetailsService {
//	
//	@Autowired
//	private UserMapper userMapper;
//	
//	@Override
//	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException{
//		
//		log.warn("Load User By UserVO number :" + username);
//		
//		UserVO user = userMapper.getUser(username);
//		
//		log.warn("queried by UserVO mapper: " + user);
//		
//		return user == null ? null : new CustomUserDetailsVO(user);
//	}
//	
//}
