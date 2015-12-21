package com.yayao.test;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;

import com.yayao.bean.News;
import com.yayao.service.NewsService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:WebRoot/WEB-INF/config/spring-mybatis.xml"})
@TransactionConfiguration(transactionManager="transactionManager",defaultRollback = false)//true:始终回滚 false:数据提交
public class NewsServiceImplTest extends AbstractTransactionalJUnit4SpringContextTests {
	@Resource(name="newsService")
	NewsService newsService;
	@Before
	public void setUp() throws Exception {
		//FileSystemXmlApplicationContext context = new FileSystemXmlApplicationContext("WebRoot/WEB-INF/config/spring-mybatis.xml");
		//System.out.println(context);
		System.out.println("sdf");
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testSelectNewsByID() {
	}

	@SuppressWarnings("deprecation")
	@Test
	public void testShowAllNews() {
		Map<String, Object> map=new HashMap<String, Object>();
		List<News> list = newsService.showAllNews(map);
		for (News news : list) {
			System.out.println(news.getId()+" "+news.getType()+" "+news.getViews()+" "+news.getAuthor()+" "+news.getCreateDate().toLocaleString()+" "+news.getContent()+"");
		}
	}

	@Test
	public void testAddNews() {
		News news=new News();
		news.setType("优质服务");
		news.setTitle("你的幼稚是优质");
		news.setViews(23);
		news.setCreateDate(new Date());
		news.setAuthor("傻傻");
		news.setContent("作为2015年的年终总结，我们怎么能不对广告行业的几大精彩代言广告进行一次点评呢？下面就是2015年广告代言TOP 10，ARE YOU READY？"+"1、最敬业的代言"+"范冰冰代言联想"
	+"如果要盘点今年娱乐圈的重磅事件，范爷宣布恋情一定能闯进前三。在微博发布后，一众品牌都号称反应迅速抓住热点，于是就出现了一群"+"无关联"+"品牌做了一堆"+"没卵用"+"social的尴尬局面。"+"要论演技吧，女皇大人倒也没什么值得夸的地方，但要论职业精神，那的确是杠杠的。"
	+"5月28日，联想宣布范冰冰出任联想全线产品代言人，同时宣布motomaker登录中国。第二天（29日），范爷就在微博对外宣布了和大黑牛的恋情，之后发布的每条微博都带着newmotox的小尾巴，最近变成了联想智能手机客户端，而且就是12月2日的微博还是联想小尾巴哦。");
		newsService.addNews(news);
	}

}
