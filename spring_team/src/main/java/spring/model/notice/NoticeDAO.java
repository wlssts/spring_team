package spring.model.notice;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAO {	
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
		
	public void setMybatis(SqlSessionTemplate mybatis) {
		
		this.mybatis = mybatis;
	}
	
	@SuppressWarnings("rawtypes")
	public List<NoticeDTO> list(Map map) {
		
		return mybatis.selectList("notice.list",map);
	}
	
	public int total(Map map){
		 
		return mybatis.selectOne("notice.total", map);
	}
	
	public NoticeDTO read(int noticeno) {
		
		return mybatis.selectOne("notice.read", noticeno);
	}
	public void upViewcnt(int noticeno) {
		
		mybatis.update("notice.upViewcnt", noticeno);
	}
	
	public boolean create(NoticeDTO dto) {
		
		return mybatis.insert("notice.create", dto)>0;
	}
	
	public boolean delete(int noticeno) {
		
		return mybatis.delete("notice.delete", noticeno)>0;
	}
	
	public boolean update(NoticeDTO dto) {
		
		return mybatis.update("notice.update", dto)>0;
	}
}