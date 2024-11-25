package com.gd.mystore.service;

import java.util.List;

import com.gd.mystore.dto.DispatchDto;
import com.gd.mystore.dto.OrderingListDto;
import com.gd.mystore.dto.OrderingProductDto;
import com.gd.mystore.dto.PageInfoDto;
import com.gd.mystore.dto.ProductDto;

public interface OrderingService {
	
	// 상품 리스트
	List<ProductDto> selectProductList();
	
	// 발주 카운트
	int selectOrderListCount();
	
	// 발주 리스트
	List<OrderingListDto> selectOrderList(PageInfoDto pi);
	
	// 발주 상품 리스트
	List<OrderingProductDto> selectOrderProductList(int orderingNo);
	
	// 승인 배차 
	DispatchDto selectRandomDispatch(int orderingNo);
	
	// 발주 등록 
	int insertOrderingList(OrderingListDto orderingDto,List<OrderingProductDto> orderingProList );
	
	// 발주 반려 
	int updateCompanion(OrderingListDto olDto);
	
	// 발주 승인
	int updateApproval(OrderingListDto olDto);
	
	// 배차 리스트 
	List<DispatchDto> selectDispatchList();
	
	// 상품 검색 카운트
	int selectCount(String search);
	
	// 상품 검색 
	List<OrderingListDto> selectSearchList(PageInfoDto pi,String search);
}
