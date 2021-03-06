package teamcoma.repository.mapper;

import java.util.List;

import teamcoma.repository.domain.Attach;
import teamcoma.repository.domain.Board;
import teamcoma.repository.domain.Comment;

public interface BoardMapper {
	List<Board> selectBoard(int bCategory);
	Board selectBoardByNo(int no);
	void insertBoard(Board board);
	void deleteBoard(int no);
	void updateBoard(Board board);
	//첨부파일
	void insertAttach(Attach attach);
	
	//댓글
	void insertComment(Comment comment);
	List<Comment> selectCommentByNo(int findNo);
	void updateComment(Comment comment);
	void deleteComment(int cNo);
}
