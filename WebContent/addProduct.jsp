<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 제품번호 물품을 카트(장바구니)에 담고 되돌아가기 
	1. 장바구니 데이터를 다룰 객체를 생성(카트생성)
		세션에 카트가 있으면 사용하고 없으면 새로 만들어 사용
	2. 장바구니에 제품 추가(전달받은 제품번호 사용)
	3. 장바구니에 담은 후 제품상세페이지로 이동
		(제품상세페이지로 이동시 제품번호 전달)
--%>
	<jsp:useBean id="cart" class="com.bc.mybatis.Cart" scope="session" />
	<jsp:useBean id="dao" class="com.bc.mybatis.ShopDAO" scope="session" />    
<%
	//전달받은 제품번호 확인
	String pNum = request.getParameter("p_num");

	//장바구니(cart)에 제품 담기
	cart.addProduct(pNum, dao);
	System.out.println(">카트 제품목록 : " + cart.getList());
	System.out.println(">카트 품목수량 : " + cart.getList().size());
	System.out.println(">카트 합계금액 : " + cart.getTotal());
	
	//제품 상세페이지로 이동(전환)
	response.sendRedirect("product_content.jsp?p_num=" + pNum);
%>
















