package spring.model.notice;


import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.*;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;


public class NoticeDAOTest {
	
	private static BeanFactory beans;
	private static NoticeDAO dao;
	
	@BeforeClass
	public static void setUpbeforClass() throws Exception{
		Resource resource = new ClassPathResource("META-INF/blog.xml");
		beans = new XmlBeanFactory(resource);
	}
	
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		dao = (NoticeDAO)beans.getBean("nodao");
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test @Ignore
	public void testSetMybatis() {
		//fail("Not yet implemented"); // TODO
	}

	@Test @Ignore
	public void testTotal() {
		Map map = new HashMap();
		map.put("col", "");
		map.put("word", "");
		
		int total = dao.total(map);
		assertEquals(total, 8); //col과 word로 검색한 갯수
	}


	@Test @Ignore
	public void testList() {
		Map map = new HashMap();
		map.put("col", "");
		map.put("word", "");
		map.put("sno", 1);
		map.put("eno", 10);
		
		List<NoticeDTO> list = dao.list(map);
		assertEquals(list.size(), 7); //list.size확인
									  //sno와 eno가 5라면 값은 최대5개.
	}

	@Test @Ignore
	public void testRead() {
		NoticeDTO dto = dao.read(1);
		assertNotNull(dto);
	}

	@Test @Ignore
	public void testCreate() {
		NoticeDTO dto = new NoticeDTO();
		dto.setTitle("제목이");
		dto.setContent("내용이");
		dto.setGrade("A");
		assertTrue(dao.create(dto));
	}

	@Test @Ignore
	public void testDelete() {
		assertTrue(dao.delete(2));
	}

	@Test @Ignore
	public void testUpdate() {
		NoticeDTO dto = new NoticeDTO();
		dto.setNoticeno(1);
		dto.setContent("업데이트");
		dto.setTitle("업데제목");
		dto.setGrade("B");
		assertTrue(dao.update(dto));
	}

}
