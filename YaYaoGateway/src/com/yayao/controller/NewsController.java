package com.yayao.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yayao.bean.News;
import com.yayao.service.NewsService;

/**
 * 用户控制类
 * @author yy
 *
 */
@Scope("prototype")
@Controller("news")
public class NewsController {
	@Resource(name="newsService")
	private NewsService newsService;
	
	@RequestMapping({"/newsDynamic/{selectNewsByID}"})
	public String selectNewsByID(@PathVariable("selectNewsByID")Integer id,Model model){
		News news = newsService.selectNewsByID(id);
		news.setViews(news.getViews()+1);//增加浏览次数
		newsService.updateNews(news);
		model.addAttribute("news", news);
		return "foreground/newsDynamic";
		
	}
	@RequestMapping({"/newsDynamic","/industryInformation","/companyNews","/qualityServices"})
	public String showAllNews(HttpServletRequest request,Model model){
		String param=request.getServletPath();
		List<News> list=null;
		if(param.equals("/newsDynamic")){
		 list = newsService.showAllNews("行业资讯");
		 list .addAll( newsService.showAllNews("公司新闻"));
		 list .addAll(newsService.showAllNews("优质服务"));
		}else if(param.equals("/industryInformation")){
			list = newsService.showAllNews("行业资讯");
		}else if(param.equals("/companyNews")){
			list = newsService.showAllNews("公司新闻");
		}else if(param.equals("/qualityServices")){
			list = newsService.showAllNews("优质服务");
		}
		model.addAttribute("newsList", list);
		return "foreground/newsDynamic";
	}
	/*@RequestMapping(value="/industryInformation" )
	public String showAllNewsI(Model model){
		List<News> list = newsService.showAllNews("行业资讯");
		
		model.addAttribute("newsList", list);
		return "foreground/newsDynamic";
	}
	@RequestMapping(value="/companyNews" )
	public String showAllNewsC(Model model){
		List<News> list = newsService.showAllNews("公司新闻");
		model.addAttribute("newsList", list);
		return "foreground/newsDynamic";
	}
	@RequestMapping(value="/qualityServices" )
	public String showAllNewsQ(Model model){
		List<News> list = newsService.showAllNews("优质服务");
		model.addAttribute("newsList", list);
		return "foreground/newsDynamic";
	}*/
	/*同步提交
	 * @RequestMapping(value="/addCustomerContent",method=RequestMethod.POST )
	//@TokenHandler(remove=true)
	public String addCustomerContent(@ModelAttribute Customer customer,@RequestParam("token") String token,ModelMap model,HttpServletRequest request){
		if(TokenSession.isrepeattoken(request)){
			return "foreground/contactUS";
		}
		customerService.addCustomerContent(customer);
		System.out.println(customer.getContent());
		model.addAttribute("customer", customer);
		request.getSession().setAttribute("customer", customer);
		 request.getSession( false ).setAttribute( "token" ,UUID.randomUUID().toString()); 
		return "foreground/contactUS";
		
	}*/
	/**
	 * 异步提交
	 */
	/*@RequestMapping(value="/addCustomerContent",method=RequestMethod.POST)
	public ResponseEntity<Customer> addCustomerContent(@ModelAttribute Customer customer){
			customerService.addCustomerContent(customer);
			return new ResponseEntity<Customer>(customer, HttpStatus.OK);
		}*/
	/*@RequestMapping(value="/addCustomerContent",method=RequestMethod.POST)
	public @ResponseBody Customer addCustomerContent(@ModelAttribute Customer customer){
		customerService.addCustomerContent(customer);
		return  customer;
	}*/
}
