package teamcoma.repository.mapper;

import java.util.List;

import teamcoma.repository.domain.Member;

public interface LoginMapper {
	
	Member selectMemberInfo(Member member);
	void insertMember(Member member);
	List<String> Idcheck();
	
}
