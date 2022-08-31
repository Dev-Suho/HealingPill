package com.healingpill.dao;

import com.healingpill.dto.CartVO;
import com.healingpill.dto.ProductViewVO;

import java.util.List;

public interface ShopDAO {

    String NAMESPACE = "shop.";

    // 상품 리스트
    public List<ProductViewVO> list(int ctg_code) throws Exception;

    // 장바구니 담기
    public int addCart(CartVO cartVO) throws Exception;

    // 장바구니 삭제
    public int deleteCart(int cartId) throws Exception;

    // 장바구니 수정
    public int modifyCount(CartVO cartVO) throws Exception;

    // 장바구니 목록
    public List<CartVO> getCart(String mem_id) throws Exception;

    // 장바구니 확인
    public CartVO checkCart(CartVO cartVO) throws Exception;
}
