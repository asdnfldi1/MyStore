package com.gd.mystore.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gd.mystore.dto.EmpMemberDto;
import com.gd.mystore.dto.OrderingListDto;
import com.gd.mystore.dto.OrderingProductDto;
import com.gd.mystore.dto.ProductDto;
import com.gd.mystore.service.OrderingService;
import com.gd.mystore.util.PagingUtil;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/ordering")
public class OrderingController {
	
	private final PagingUtil pagingUtil;
	private final OrderingService orderingService;
	
	@GetMapping("regist.or")
	public String list(Model model) {
		
		List<ProductDto> list = orderingService.selectProductList();
		
		model.addAttribute("pro",list);
		
		return "branchoffice/ordering/regist";
	}
	@PostMapping("insert.or")
	public String insertOrdering(@ModelAttribute OrderingListDto orderingListDto,HttpSession session,RedirectAttributes rdAttributes) {
	    orderingListDto.setEmpNo( String.valueOf( ((EmpMemberDto)session.getAttribute("loginUser")).getEmpNo() ) );
	    List<OrderingProductDto> productList = orderingListDto.getProductList();
	    
	    int result = orderingService.insertOrderingList(orderingListDto, productList);
	    if(productList.isEmpty() && result == 1 
				|| !productList.isEmpty() && result == productList.size()) {
			rdAttributes.addFlashAttribute("alertMsg", "게시글 등록 성공");
		}else {
			rdAttributes.addFlashAttribute("alertMsg", "게시글 등록 실패");			
		}
	    
	    return "redirect:/ordering/regist.or";
	}
	
	
}