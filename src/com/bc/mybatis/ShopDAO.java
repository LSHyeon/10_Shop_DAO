package com.bc.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class ShopDAO {
	
	public ShopDAO() {
		System.out.println(">> ShopDAO 객체 생성");
	}
	
	//품목코드를 사용해서 제품 조회하고 List로 받기
	public List<ShopVO> list(String category) {
		SqlSession ss = DBService.getFactory().openSession();
		List<ShopVO> list = ss.selectList("shop.list", category);
		ss.close();
		
		return list;
	}
	
	//제품번호를 사용해서 제품정보 조회 후 VO 리턴
	public ShopVO selectOne(String p_num) {
		SqlSession ss = DBService.getFactory().openSession();
		ShopVO vo = ss.selectOne("shop.one", p_num);
		ss.close();
		
		return vo;
	}
	
	

}









