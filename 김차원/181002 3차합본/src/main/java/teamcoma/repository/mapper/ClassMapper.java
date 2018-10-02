package teamcoma.repository.mapper;

import java.util.List;

import teamcoma.repository.domain.ChefFile;
import teamcoma.repository.domain.ClassInfo;
import teamcoma.repository.domain.ClassStudent;
import teamcoma.repository.domain.Member;

public interface ClassMapper {

	void insertClassInfo(ClassInfo classInfo);
	
	ClassInfo selectClassInfo(int classNo);
	
//	List<ClassInfo> selectClassInfo2(int classNo);
	
	void insertChefFile(ChefFile chefFile);
	
	void updateClassInfo(ClassInfo classInfo);
	
	void updateChefFile(ChefFile chefFile);
	
	List<ChefFile> classPictureSelect(int no);
	
	List<ClassInfo> selectMyList(int no);
	
	Member selectMemberInfoByNo(int no);
	
	List<ClassStudent> selectClassStudent(int classNo);
	
	ClassStudent selectDetailStudent(int mNo);
	
	void chefInfoUpdate(Member member);
	
	Member chefInfoSelect(int no);
	
	void assesmentUpdate(ClassStudent classStudent); // 평가 입력
}
