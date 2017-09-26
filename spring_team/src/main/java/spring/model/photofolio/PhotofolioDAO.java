package spring.model.photofolio;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PhotofolioDAO {	
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
		
	public void setMybatis(SqlSessionTemplate mybatis) {
		
		this.mybatis = mybatis;
	}
	
	@SuppressWarnings("rawtypes")
	public List<PhotofolioDTO> list(Map map) {
		
		return mybatis.selectList("photofolio.list", map);
	}
	
	public boolean updateFile(Map map){
		boolean flag = false;
		int cnt = mybatis.update("photofolio.updateFile", map);
		if(cnt > 0) {
			flag = true;
		}
		return flag;
	}
	
	public PhotofolioDTO read(int teamno){
		return mybatis.selectOne("photofolio.read", teamno);
		
	}
	
	public boolean create(PhotofolioDTO dto){
		boolean flag = false;
		int cnt = mybatis.insert("photofolioDTO.create", dto);
		if(cnt > 0) {
			flag = true;
		}
		return flag;
	}
	public boolean update(PhotofolioDTO dto){
		boolean flag = false;
		int cnt = mybatis.update("photofolioDTO.update",dto);
		if(cnt > 0) {
			flag = true;
		}
		return flag;
	}
	
	public boolean delete(int PhotofolioDTOno){
		boolean flag = false;
		int cnt = mybatis.delete("photofolioDTO.delete", PhotofolioDTOno);
		if(cnt > 0) {
			flag = true;
		}
		return flag;
	}

	public int total(Map<String, Object> map) {
		
		return mybatis.selectOne("photofolio.total", map);
	}
	

	
	
}