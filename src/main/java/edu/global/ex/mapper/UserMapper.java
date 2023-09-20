package edu.global.ex.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import edu.global.ex.vo.MsUserVO;
import edu.global.ex.vo.UserVO;

@Mapper
public interface UserMapper {

   public UserVO getUser(String username);   
   
   @Insert("insert into users(username,password,enabled) values(#{username},#{password},#{enabled})")
   public int insertUser(UserVO userVO);

   @Insert("insert into AUTHORITIES (username,AUTHORITY) values(#{username},'ROLE_USER')")
   public void insertAuthorities(UserVO UserVO);
   
   
   @Insert("INSERT INTO ms_users (username, password, cname, caddress1, caddress2, caddress3, caddress4, caddress5, phone1, phone2)"
   		+ "VALUES (#{username}, #{password}, #{cname}, #{caddress1}, #{caddress2}, #{caddress3}, #{caddress4}, #{caddress5}, #{phone1}, #{phone2})")
	public void insert(MsUserVO msUserVO);
	
	@Select("select * from ms_users")
	public MsUserVO getMsUser(MsUserVO msUserVO); //가져오기

	@Update("update ms_users set username = #{username}, password = #{password}, cname = #{cname}, phone1 = #{phone1}, phone2 = #{phone2}, caddress1 = #{caddress1},caddress2 = #{caddress2},caddress3 = #{caddress3},caddress4 = #{caddress4},caddress5 = #{caddress5}")
	public int update(MsUserVO msUserVO);

   
}