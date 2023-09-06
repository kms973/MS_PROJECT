package edu.global.ex.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import edu.global.ex.vo.CompanyVO;

@Mapper
public interface CompanyMapper {

//   public CompanyVO getCompany(String username);   

	@Insert("INSERT INTO ms_company (companyName, companyNum, ceoName, comTel, comAddress1, comAddress2, comAddress3, comAddress4, comAddress5, comCS) VALUES (#{companyName},#{companyNum} , #{ceoName},#{comTel},#{comAddress1}, #{comAddress2}, #{comAddress3}, #{comAddress4}, #{comAddress5},#{comCS})")
	public void insert(CompanyVO CompanyVO);
	
	@Select("select * from ms_company")
	public CompanyVO getCompany(CompanyVO companyVO); //가져오기

	@Update("update ms_company set companyName = #{companyName}, companyNum = #{companyNum}, ceoName = #{ceoName}, comTel = #{comTel}, comAddress1 = #{comAddress1},comAddress2 = #{comAddress2},comAddress3 = #{comAddress3},comAddress4 = #{comAddress4},comAddress5 = #{comAddress5},comCS = #{comCS}")
	public int update(CompanyVO companyVO);
}
