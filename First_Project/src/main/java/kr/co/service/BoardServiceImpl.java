package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.BoardDAO;
import kr.co.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	private BoardDAO boardDAO; 
	
	@Override
	public void insert(BoardVO vo) {
		boardDAO.insert(vo);
		
	}

	@Override
	public BoardVO read(int bno) {
		
		return boardDAO.read(bno);
	}

	@Override
	public List<BoardVO> list() {
		// TODO Auto-generated method stub
		return boardDAO.list();
	}

}
