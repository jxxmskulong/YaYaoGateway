package com.yayao.bean;

import java.io.Serializable;
import java.util.Date;
/**
 * 新闻实体类
 * @author yy
 *
 */
public class News implements Serializable {
	
	private static final long serialVersionUID = 6581266187052425687L;
	private Integer id;
	private String type;
	private String title;
	private Date createDate;
	private String author;
	private Integer views;
	private String content;
	public News() {
		super();
	}

	@SuppressWarnings("deprecation")
	@Override
	public String toString() {
		return "News [id=" + id + ", type=" + type + ", title=" + title
				+ ", createDate=" + createDate.toLocaleString() + ", author=" + author
				+ ", views=" + views + ", content=" + content + "]";
	}

	public News(Integer id,String type, String title, Date createDate, String author,
			Integer views, String content) {
		super();
		this.id = id;
		this.type=type;
		this.title = title;
		this.createDate = createDate;
		this.author = author;
		this.views = views;
		this.content = content;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Integer getViews() {
		return views;
	}

	public void setViews(Integer views) {
		this.views = views;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	
}