package com.yayao.controller;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

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
