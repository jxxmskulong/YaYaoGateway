package com.yayao.service;

import java.util.List;
import java.util.Map;

import com.yayao.bean.News;

/**
 *新闻管理接口
 * @author yy
 *
 */
public interface NewsService {
	/**
	 * 查询单个新闻
	 */
	public News selectNewsByID(Integer id);
	/**
	 * 根据条件查询所有新闻
	 */
	public List<News> showAllNews(Map<String, Object> map);
	/**
	 * 增加新闻
	 */
	public void addNews(News news);
	/**
	 *更新新闻
	 */
	public void updateNews(News news);
}
