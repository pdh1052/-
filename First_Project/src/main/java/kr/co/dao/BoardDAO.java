package kr.co.dao;

import java.util.List;

import kr.co.vo.BoardVO;

public interface BoardDAO {

	void insert(BoardVO vo);

	BoardVO read(int bno);

	List<BoardVO> list();

}
