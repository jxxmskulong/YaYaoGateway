package com.yayao.dao.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.yayao.bean.News;
import com.yayao.dao.NewsDao;
/**
 * 客户管理接口实现
 * @author yy
 *
 */
@Repository("newsDao")
public class NewsDaoImpl implements NewsDao{
	
	 @Resource(name="sqlSession")
	 private SqlSession sqlSession;
	/**
	 * 查询单个客户
	 */
	public News selectNewsByID(Integer id) {
		//CustomerDao customerDao = getSession().getMapper(CustomerDao.class);
		News news = sqlSession.selectOne("com.yayao.dao.NewsDao.selectNewsByID", id);
		return news;
		
	}
	
	/**
	 * 根据条件查询所有新闻
	 */
	public List<News> showAllNews(Map<String, Object> map) {
		//List<News> list = sqlSession.selectList("com.yayao.dao.NewsDao.showAllNews", map);
		NewsDao newsDao = sqlSession.getMapper(NewsDao.class);
		List<News> list = newsDao.showAllNews(map);
		return list;
	}

	/**
	 * 增加新闻
	 */
	public void addNews(News news) {
		 sqlSession.selectList("com.yayao.dao.NewsDao.addNews", news);
	}

	/**
	 * 更新新闻
	 */
	public void updateNews(News news) {
		sqlSession.update("com.yayao.dao.NewsDao.updateNews", news);
		
	}

}
