<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 제품번호에 해당하는 품목을
	장바구니(cart)에서 삭제처리후 장바구니보기 페이지 이동--%>

	<jsp:useBean id="cart" class="com.bc.mybatis.Cart" scope="session" />	
<%
	//1. 전달받은 제품번호 확인
	String pNum = request.getParameter("p_num");

	//2. 카트(cart)에서 제품 삭제 처리
	cart.delProduct(pNum);
	
	//3. 화면전환(cartList.jsp)
	response.sendRedirect("cartList.jsp");
%>	






