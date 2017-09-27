package spring.model.qna;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;


public class QnaDAOTest {
	private static BeanFactory beans;
	private static QnaDAO dao;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		Resource resource = new ClassPathResource("META-INF/blog.xml");
		beans = new XmlBeanFactory(resource);
	}
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		dao = (QnaDAO)beans.getBean("qadao");
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
		System.out.println("total=========="+total);
		assertEquals(total, 11);
	}

	@Test @Ignore
	public void testGetIndent() {
		assertTrue(dao.getIndent(13));
	}

	@Test @Ignore
	public void testList() {
		Map map = new HashMap();
		map.put("col", "");
		map.put("word", "");
		map.put("sno", 1);
		map.put("eno", 5);
		
		List<QnaDTO> list = dao.list(map);
		
		assertEquals(list.size(), 5);
	}

	@Test @Ignore
	public void testRead() {
		QnaDTO dto = dao.read(1);
		assertNotNull(dto);
	}

	@Test @Ignore
	public void testCreate() {
		QnaDTO dto = new QnaDTO();
		dto.setName("new1");
		dto.setPasswd("1234");
		dto.setTitle("newTitle");
		dto.setContent("newContent");
		dto.setFnamemain("new.jpg");
		assertTrue(dao.create(dto));
	}

	@Test @Ignore
	public void testDelete() {
		assertTrue(dao.delete(10));
	}

	@Test @Ignore
	public void testUpdate() {
		QnaDTO dto = new QnaDTO();
		dto.setQnano(4);
		dto.setTitle("newTitle4");
		dto.setContent("newContent4");
		dto.setFnamemain("new4.jpg");
		assertTrue(dao.update(dto));
	}

	@Test @Ignore
	public void testPasswdCheck() {
		Map map = new HashMap();
		map.put("qnano", 1);
		map.put("passwd", "1234");
		assertTrue(dao.passwdCheck(map));
	}



	@Test @Ignore
	public void testReplyCreate() {
		QnaDTO dto = new QnaDTO();
		dto.setName("운영자");
		dto.setTitle("답글");
		dto.setPasswd("1234");
		dto.setContent("내용");
		dto.setFnamemain("admin.jpg");
		assertTrue(dao.replyCreate(dto));
	}

}
