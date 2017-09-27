package spring.model.qna;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnaDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void setMybatis(SqlSessionTemplate mybatis) {
		
		this.mybatis = mybatis;
	}
	
	public List<QnaDTO> list(Map map){
		
		return mybatis.selectList("qna.list",map);
	}
	
	public int total(Map map){
		 
		return mybatis.selectOne("qna.total", map);
	}
	
	public QnaDTO read(int qnano) {
		
		return mybatis.selectOne("qna.read", qnano);
	}
	
	public boolean passwdCheck(Map map) {
		
		return (Integer)mybatis.selectOne("qna.passwdCheck", map)>0;
	}
	
	public boolean update(QnaDTO dto) {
		
		return mybatis.update("qna.update", dto)>0;
	}
	
	public boolean getIndent(int qnano) {
		
		return (Integer)mybatis.selectOne("qna.getIndent", qnano)>0;
	}
	
	public boolean create(QnaDTO dto) {
		
		return mybatis.insert("qna.create", dto)>0;
	}
	
	public boolean replyCreate(QnaDTO dto) {
		
		return mybatis.insert("qna.replyCreate", dto)>0;
	}
	
	public boolean delete(int qnano) {
		
		return mybatis.delete("qna.delete", qnano)>0;
	}
}
