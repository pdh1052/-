package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.MemberDAO;
import kr.co.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Inject
	private MemberDAO memberDao;

	@Override
	public void insert(MemberVO vo) {
		memberDao.insert(vo);
		
	}

	@Override
	public MemberVO updateUI(int id) {
		// TODO Auto-generated method stub
		return memberDao.updateUI(id);
	}

	@Override
	public void update(MemberVO vo) {
		memberDao.update(vo);
		
	}



}
