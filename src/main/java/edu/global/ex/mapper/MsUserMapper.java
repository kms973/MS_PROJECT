package edu.global.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import edu.global.ex.vo.MsUserVO;

@Mapper
public interface MsUserMapper {

	public List<MsUserVO> getUsers();
	
	public MsUserVO getUsers(String username);   
	public MsUserVO getUser(String username);   
   
   @Insert("insert into ms_users(username,password,enabled,cname,caddress1,caddress2,caddress3,caddress4,caddress5,cgrade,phone1,phone2) values(#{username},#{password},1,#{cname},#{caddress1},#{caddress2},#{caddress3},#{caddress4},#{caddress5}, 2,#{phone1},#{phone2})")
   public int insertUser(MsUserVO MsuserVO);

   @Insert("insert into ms_AUTHORITIES (username,AUTHORITY) values(#{username},'ROLE_USER')")
   public void insertAuthorities(MsUserVO MsUserVO);


   public List<MsUserVO> getUser();

   public MsUserVO read(String cname);

   public int delete(MsUserVO username);
}