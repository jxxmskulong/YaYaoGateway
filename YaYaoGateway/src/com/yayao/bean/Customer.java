package com.yayao.bean;

import java.io.Serializable;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * 用户实体类
 * @author yy
 *
 */
public class Customer implements Serializable {
	
	private static final long serialVersionUID = 8198930199550185349L;
	private Integer id;
	@NotEmpty
	@Length(min=2,max=16)
	private String userName;
	@NotEmpty
	@Length(min=7,max=11)
	private String cellPhone;
	@NotEmpty
	@Email
	private String email;
	@NotEmpty
	@Length(min=2)
	private String content;
	
	public Customer() {
		super();
	}

	public Customer(Integer id, String userName, String cellPhone,
			String email, String content) {
		super();
		this.id = id;
		this.userName = userName;
		this.cellPhone = cellPhone;
		this.email = email;
		this.content = content;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCellPhone() {
		return cellPhone;
	}

	public void setCellPhone(String cellPhone) {
		this.cellPhone = cellPhone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}
