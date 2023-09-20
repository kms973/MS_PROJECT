package edu.global.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import edu.global.ex.vo.CompanyVO;
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
   
   @Insert("INSERT INTO ms_users(username,password,enabled,cname,caddress1,caddress2,caddress3,caddress4,caddress5,cgrade,phone1,phone2) values(#{username},#{password},1,#{cname},#{caddress1},#{caddress2},#{caddress3},#{caddress4},#{caddress5}, 2,#{phone1},#{phone2})")
	public void insert(MsUserVO MsuserVO);
	
	@Select("select * from ms_users")
	public MsUserVO getMsUser(MsUserVO MsuserVO); //가져오기

	@Update("update ms_users set cname= #{cname}, caddress1 = #{caddress1}, caddress2 = #{caddress2}, caddress3 = #{caddress3}, caddress4 = #{caddress4}, caddress5 = #{caddress5}, phone1 = #{phone1}, phone2 = #{phone2} where username = #{username}")
	public int update(MsUserVO MsuserVO);
   

   public List<MsUserVO> getUser();

   public MsUserVO read(String cname);

   public int delete(MsUserVO username);
}