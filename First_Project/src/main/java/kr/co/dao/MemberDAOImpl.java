package kr.co.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Inject
	private SqlSession sqlSession;
	
	private final String NS = "kr.co.member";

	@Override
	public void insert(MemberVO vo) {
		sqlSession.insert(NS+".insert", vo);
		
	}

	@Override
	public MemberVO updateUI(int id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NS+".updateUI", id);
	}

	@Override
	public void update(MemberVO vo) {
		sqlSession.update(NS+".update", vo);
		
	}
	
	
	

}
