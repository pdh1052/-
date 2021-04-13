package kr.co.controller;

import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import kr.co.service.BoardService;
import kr.co.vo.BoardVO;

@Controller
@RequestMapping(value = "/board")
public class BoardController {

	@Inject
	private BoardService boardService;
	
	//게시글등록UI
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert() {
		
		return "/board/insert";
	}
	
	//게시글등록
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(BoardVO vo) {
		
		boardService.insert(vo);
		
		return "redirect:/board/read/"+vo.getBno();
	}
	
	//게시글자세히보기
	@RequestMapping(value = "/read/{bno}", method = RequestMethod.GET)
	public String read(@PathVariable("bno")int bno, Model model) {
		
		BoardVO vo = boardService.read(bno);
		
		model.addAttribute("vo", vo);
		
		return "/board/read";
	}
	
	//게시글수정UI
	@RequestMapping(value = "/update/{bno}", method = RequestMethod.GET)
	public String update(@PathVariable("bno")int bno, Model model) {
		
		BoardVO vo = boardService.updateUI(bno);
		model.addAttribute("vo", vo);
		
		return "/board/update";
	}
	
	//게시글수정
	@RequestMapping(value = "/update")
	public String update(BoardVO vo) {
		
		boardService.update(vo);
		
		return "redirect:/board/read/"+vo.getBno();
	}
	
	//게시글삭제
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(int bno) {
		
		boardService.delete(bno);
		
		return "redirect:/board/list";
	}
	
	//게시글목록
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		
		List<BoardVO> vo = boardService.list();
		model.addAttribute("vo", vo);
		
		return "/board/list";
	}
}
