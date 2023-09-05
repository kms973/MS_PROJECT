package edu.global.ex.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import edu.global.ex.vo.MsUserVO;

@Mapper
public interface MsUserMapper {

   public MsUserVO getUser(String username);   
   
   @Insert("insert into ms_users(username,password,enabled,cname,caddress1,caddress2,caddress3,caddress4,caddress5) values(#{username},#{password},1,#{cname},#{caddress1},#{caddress2},#{caddress3},#{caddress4},#{caddress5})")
   public int insertUser(MsUserVO MsuserVO);

   @Insert("insert into ms_AUTHORITIES (username,AUTHORITY) values(#{username},'ROLE_USER')")
   public void insertAuthorities(MsUserVO MsUserVO);

   
}