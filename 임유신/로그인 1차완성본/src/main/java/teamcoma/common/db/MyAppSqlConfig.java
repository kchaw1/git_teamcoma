package teamcoma.common.db;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyAppSqlConfig {
	private static final SqlSession sqlMapper;
	static {
		try {
			String resource = "config/mybatis/sqlMapConfig.xml";     //환경변수가 있는 xml 경로
			Reader reader = Resources.getResourceAsReader(resource);
			SqlSessionFactory sqlFactory = new SqlSessionFactoryBuilder().build(reader);
//			sqlMapper = sqlFactory.openSession();    //오픈할 때 매개변수를 줄수있다,  false 주면사 용자가 직접 커밋해야함
			sqlMapper = sqlFactory.openSession(true);    //true 를 주면 자동 커밋 
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(
					"Error initializing MyAppSqlConfig class. Cause: " + e);
		}
	}

	
	
	//SqlSession session =  MyAppSqlConfig.getSqlSessionInstance();
	public static SqlSession getSqlSessionInstance() {
		return sqlMapper;
	}
}