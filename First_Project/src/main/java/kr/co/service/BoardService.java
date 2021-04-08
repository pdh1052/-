package kr.co.service;

import java.util.List;

import kr.co.vo.BoardVO;

public interface BoardService {

	void insert(BoardVO vo);

	BoardVO read(int bno);

	List<BoardVO> list();

}
