package spring.model.member;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public void setMybatis(SqlSessionTemplate mybatis) {
		this.mybatis = mybatis;
	}
	
	public boolean create(MemberVO vo) {
		return mybatis.insert("member.create", vo)>0;
	}

	public Object duplicateId(String id) {
		return (Integer)mybatis.selectOne("member.duplicateId", id)>0;
	}
	
	public Object duplicateEmail(String email) {
		return (Integer)mybatis.selectOne("member.duplicateEmail", email)>0;
	}
	
	@SuppressWarnings("rawtypes")
	public boolean loginCheck(Map map){
		return (Integer)mybatis.selectOne("member.loginCheck", map)>0;
	}
	
	public String getGrade(String id){
		return mybatis.selectOne("member.getGrade", id);
	}
}



