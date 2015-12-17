package com.yayao.controller;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yayao.bean.Customer;
import com.yayao.service.CustomerService;

/**
 * 过滤请求，实现rest风格
 * @author yy
 *
 */
@Scope("prototype")
@Controller("JSP")
public class JSPController {
	@Resource(name="customerService")
	private CustomerService customerService;
	
	/*@RequestMapping(value="/{url}" )
	public String init(@PathVariable("url")String url,HttpServletRequest request){
		 String strBackUrl=request.getRealPath("/");
		 String path=request.getServletPath();
		 if(path.equals("/")){return "index";}
		 if(new File(strBackUrl+url+".jsp").exists()){
				return url;
			}else if(new File(strBackUrl+"/WEB-INF/foreground"+path+".jsp").exists()){
				return "foreground/"+url;
			}else{
				return "forward:/"+url;
				return "foreground/404";
			}
	}
	@RequestMapping(value="/Admin/{url}" )
	public String init2(@PathVariable("url")String url,HttpServletRequest request){
		 String strBackUrl=request.getRealPath("/");
		 String path=request.getServletPath();
		 String realPath=path.substring(6);
		 if(new File(strBackUrl+"/WEB-INF/backstage"+realPath+".jsp").exists()){
				return "backstage/"+url;
			}else{
				return "backstage/404";
			}
	}*/
}
