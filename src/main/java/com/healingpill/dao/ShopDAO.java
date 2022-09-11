package com.healingpill.dao;

import com.healingpill.dto.*;

import java.util.List;

public interface ShopDAO {

    String NAMESPACE = "shop.";

    // 상품 리스트
    public List<ProductViewVO> list(int ctg_code) throws Exception;

    // 장바구니 담기
    public int addCart(CartVO cartVO) throws Exception;

    // 장바구니 삭제
    public void deleteCart(CartVO cartVO) throws Exception;

    // 장바구니 수정
    public int modifyCount(CartVO cartVO) throws Exception;

    // 장바구니 목록
    public List<CartListVO> getCartList(String mem_id) throws Exception;

    // 장바구니 확인
    public CartVO checkCart(CartVO cartVO) throws Exception;

    // 주문 정보
    public void orderInfo(OrderVO orderVO) throws Exception;

    // 주문 상세 정보
    public void orderInfo_Details(OrderDetailVO orderDetailVO) throws Exception;
}
