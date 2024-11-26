package com.gd.mystore.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gd.mystore.dto.BoardDto;
import com.gd.mystore.dto.BoardFileDto;
import com.gd.mystore.dto.DepTransferDto;
import com.gd.mystore.dto.EmpMemberDto;
import com.gd.mystore.dto.PageInfoDto;
import com.gd.mystore.service.BoardService;
import com.gd.mystore.util.FileUtil;
import com.gd.mystore.util.PagingUtil;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/board")
@RequiredArgsConstructor
@Controller
public class BoardController {

	private final BoardService boardService;
	private final PagingUtil pagingUtil;
	private final FileUtil fileUtil;
	
	// 메뉴바에 있는 메뉴 클릭시 /board/list.do   => 1번페이지 요청
	// 페이징바에 있는 페이지 클릭시 /board/list.do?page=xx
	
	@GetMapping("/list.do")
	public String list(@RequestParam(value="page", defaultValue="1") int currentPage
	                   , Model model) {
	    
	    int listCount = boardService.selectBoardListCount();
	    
	    PageInfoDto pi = pagingUtil.getPageInfoDto(listCount, currentPage, 5, 10);
	    List<BoardDto> list = boardService.selectBoardList(pi);
	    
	    model.addAttribute("pi", pi);
	    model.addAttribute("list", list);
	    
	    return "board/boardList"; 
	}

	
	@GetMapping("/search.do")
	public String search(@RequestParam(value="page", defaultValue="1") int currentPage
					,    @RequestParam Map<String, String> search // RequestParam을 쓰면 알아서 map객체에 키 밸류값을 담아줌
					,	 Model model) {
		
		// Map<String, String> search ==> {condition = user_id | board_title | board_content, keyword=란}
		
		int listCount = boardService.selectSearchListCount(search);
		PageInfoDto pi = pagingUtil.getPageInfoDto(listCount, currentPage, 5, 10);
		List<BoardDto> list = boardService.selectSearchList(search, pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		model.addAttribute("search", search);
		
		return "board/boardList";
		
		
		
	}
	
	
	@GetMapping("/boardRegist.do")
	public String registPage(Model model) {
		// 부서명 리스트와 게시판 유형 리스트를 가져온다
	    List<BoardDto> deptList = boardService.selectDeptList();
	    List<BoardDto> boardTypeList = boardService.selectBoardNameList();

	    // 모델에 데이터 추가
	    model.addAttribute("deptList", deptList);
	    model.addAttribute("boardTypeList", boardTypeList);

	    return "board/boardRegist"; // JSP 페이지 이름
	}


	@PostMapping("/insert.do")
	public String regist(BoardDto board
			, List<MultipartFile> uploadFiles
			, HttpSession session
			, RedirectAttributes rdAttributes){
		
		// board테이블에 insert할 데이터 
		board.setEmpNo(String.valueOf( ((EmpMemberDto)session.getAttribute("loginUser")).getEmpNo() ));
		
		// 첨부파일 업로드 후에
		// attachment테이블에 insert할 데이터
		List<BoardFileDto> attachList = new ArrayList<>();
		for( MultipartFile file : uploadFiles) {
			if(file != null && !file.isEmpty()) {
				Map<String, String>map = fileUtil.fileupload(file, "board");
				attachList.add(BoardFileDto.builder()
						.filePath(map.get("filePath"))
						.fileSystemName(map.get("filesystemName"))
						.originalName(map.get("originalName"))
						.refType("A")
						.creater(map.get("empName"))
						.useYN("Y")
						.build());
			}
		}
		
		board.setBoardList(attachList); // 제목,내용,작성자회원번호,첨부파일들정보
		
		int result = boardService.insertBoard(board);
		
		if(attachList.isEmpty() && result == 1 
				|| !attachList.isEmpty() && result == attachList.size()) {
			rdAttributes.addFlashAttribute("alertMsg", "게시글 등록 성공");
			
		}else {
			rdAttributes.addFlashAttribute("alertMsg", "게시글 등록 실패");
			
			
			
		}
		
		return "redirect:/board/boardRegist.do";
	}
	
	
	
	
	
	
	
	@GetMapping("/boardDetail.do")
	public void boardDetail() {}
	
	
	
	
	
	
}
