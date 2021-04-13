package kr.co.dao;

import kr.co.vo.MemberVO;

public interface MemberDAO {

	void insert(MemberVO vo);

	MemberVO updateUI(int id);

	void update(MemberVO vo);

	

}
