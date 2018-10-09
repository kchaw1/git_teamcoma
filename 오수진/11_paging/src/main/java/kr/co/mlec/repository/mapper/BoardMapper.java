package kr.co.mlec.repository.mapper;

import java.util.List;

import kr.co.mlec.repository.domain.Board;
import kr.co.mlec.repository.domain.Page;

public interface BoardMapper {
	List<Board> selectBoard(Page page);
	int selectBoardCount();
}
