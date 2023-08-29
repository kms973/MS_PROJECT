package edu.global.ex.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import edu.global.ex.vo.CompanyVO;
import edu.global.ex.vo.UserVO;

@Mapper
public interface CompanyMapper {

//   public CompanyVO getCompany(String username);   
   
   @Insert("INSERT INTO ms_company (companyName, companyNum, ceoName, comTel, comAddress, comCS) VALUES (#{companyName},#{companyNum} , #{ceoName},#{comTel},#{comAddress},#{comCS})")
   public void insert(CompanyVO CompanyVO);

   
}

