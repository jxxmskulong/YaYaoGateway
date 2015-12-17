package com.yayao.dao;
import java.util.List;

import com.yayao.bean.News;
/**
 * 新闻管理接口
 * @author yy
 *
 */
public interface NewsDao {
	/**
	 * 查询单个新闻内容
	 */
	public News selectNewsByID(Integer id);
	/**
	 * 根据条件查询所有新闻
	 */
	public List<News> showAllNews(String type);
	/**
	 * 增加新闻
	 */
	public void addNews(News news);
}
