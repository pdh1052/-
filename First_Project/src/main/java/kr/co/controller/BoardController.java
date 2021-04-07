package kr.co.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.service.BoardService;
import kr.co.vo.BoardVO;

@Controller
@RequestMapping(value = "/board")
public class BoardController {

	@Inject
	private BoardService boardService;
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert() {
		
		return "/board/insert";
	}
	
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(BoardVO vo) {
		
		boardService.insert(vo);
		
		return "/board/read/"+vo.getBno();
	}
}
