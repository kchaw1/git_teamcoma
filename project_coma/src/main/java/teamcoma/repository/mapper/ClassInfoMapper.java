package teamcoma.repository.mapper;

import java.util.List;

import teamcoma.repository.domain.ClassInfo;
import teamcoma.repository.domain.Member;

public interface ClassInfoMapper {
	List<ClassInfo> selectName();
	
	Member selectMemberByNo(int no);
}
