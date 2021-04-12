package kr.co.controller;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
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
		
		return "/member/insertcp";
	}
	

	
}
