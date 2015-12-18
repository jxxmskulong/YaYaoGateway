package com.yayao.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.yayao.bean.Customer;
import com.yayao.bean.News;
import com.yayao.dao.CustomerDao;
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
	public List<News> showAllNews(String type) {
		List<News> list = sqlSession.selectList("com.yayao.dao.NewsDao.showAllNews", type);
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
