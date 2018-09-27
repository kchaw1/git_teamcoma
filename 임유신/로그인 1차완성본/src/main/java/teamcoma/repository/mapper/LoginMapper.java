package teamcoma.repository.mapper;

import teamcoma.repository.domain.Member;

public interface LoginMapper {
	
	Member selectMemberInfo(Member member);
	void insertMember(Member member);

}
