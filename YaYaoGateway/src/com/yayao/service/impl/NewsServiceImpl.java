package com.yayao.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yayao.bean.News;
import com.yayao.dao.NewsDao;
import com.yayao.service.NewsService;
/**
 * 新闻管理接口实现
 * @author yy
 *
 */
@Service("newsService")
public class NewsServiceImpl implements NewsService {
	@Resource(name="newsDao")
	private NewsDao newsDao;
	/**
	 * 查询单个新闻
	 */
	@Override
	public News selectNewsByID(Integer id) {
		News news = newsDao.selectNewsByID(id);
		return news;
	}
	/**
	 * 显示所有新闻
	 */
	@Override
	public List<News> showAllNews(Map<String, Object> map) {
		List<News> list = newsDao.showAllNews(map);
		return list;
	}
	@Override
	public void addNews(News news) {
		newsDao.addNews(news);
	}
	@Override
	public void updateNews(News news) {
		newsDao.updateNews(news);
	}
	
	
	
}
