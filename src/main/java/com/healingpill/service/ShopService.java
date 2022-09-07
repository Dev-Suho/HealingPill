package com.healingpill.service;

import com.healingpill.dto.CartListVO;
import com.healingpill.dto.CartVO;
import com.healingpill.dto.ProductViewVO;

import java.util.List;

public interface ShopService {

    // 상품 리스트
    public List<ProductViewVO> list(int ctg_code) throws Exception;

    // 장바구니 담기
    public int addCart(CartVO cartVO) throws Exception;
    
    // 장바구니 삭제
    public void deleteCart(CartVO cartVO) throws Exception;
    
    // 카트 수량 수정
    public int modifyCount(CartVO cartVO) throws Exception;
    
    // 카트 목록
    public List<CartListVO> getCartList(String mem_id) throws Exception;
    
    // 카트 확인
    public CartVO checkCart(CartVO cartVO) throws Exception;
}
