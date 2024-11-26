package com.gd.mystore.service;

import java.util.List;

import com.gd.mystore.dto.BoardTypeDto;
import com.gd.mystore.dto.EmpMemberDto;
import com.gd.mystore.dto.LogDto;
import com.gd.mystore.dto.PageInfoDto;
import com.gd.mystore.dto.WorkDto;

public interface WorkService {
	//스케줄러 실행
	void insertEmpWork();
	
	//출퇴근 확인
	List<WorkDto> selectWorkCheck();
}