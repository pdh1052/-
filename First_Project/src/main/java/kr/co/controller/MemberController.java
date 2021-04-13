package kr.co.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.service.MemberService;
import kr.co.vo.MemberVO;

@Controller
@RequestMapping(value = "/member")
public class MemberController {

	@Inject
	private MemberService memberService;
	
	//회원가입UI
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert() {
		
		return "/member/insert";
	}
	
	//회원가입
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(MemberVO vo) {
		
		memberService.insert(vo);
		
		return "/member/read/"+vo.getId();
	}
	
	//회원정보수정UI
	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String update(@PathVariable("id")int id, Model model) {
		MemberVO vo = memberService.updateUI(id);
		model.addAttribute("vo", vo);
		return "/member/update";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(MemberVO vo) {
		 memberService.update(vo);
		 return "/member/read/"+vo.getId();
	}
	
}
