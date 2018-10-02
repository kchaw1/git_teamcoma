package teamcoma.repository.mapper;

import java.util.List;

import teamcoma.repository.domain.Board;
import teamcoma.repository.domain.ClassStudent;
import teamcoma.repository.domain.Comment;
import teamcoma.repository.domain.Member;

public interface StudentMapper {
	
	void insertClassStudent(ClassStudent classStudent);
	Member selectMember(int no);
	void UpdateMember(Member member);
	List<Board> selectBoard(String nickName); 
	List<Comment> selectComment(String nickName); 
	List<ClassStudent> selectClass(int no);
	
	
}
