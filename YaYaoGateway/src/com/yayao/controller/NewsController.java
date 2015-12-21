package com.yayao.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yayao.bean.News;
import com.yayao.pagination.Pagination;
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
	/**
	 * 实现单个新闻的浏览
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping({"/newsDynamic/{selectNewsByID}"})
	public String selectNewsByID(@PathVariable("selectNewsByID")Integer id,Model model){
		News news = newsService.selectNewsByID(id);
		news.setViews(news.getViews()+1);//增加浏览次数
		newsService.updateNews(news);
		model.addAttribute("news", news);
		return "foreground/newsDynamic";
		
	}
	/**
	 * 实现新闻分类跳转
	 * 初始化分页
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping({"/newsDynamic","/industryInformation","/companyNews","/qualityServices"})
	public String showAllNews(HttpServletRequest request,Model model,HttpSession session){
		String param=request.getServletPath();
		List<News> list=null;
		Map<String,Object> map=new HashMap<String,Object>();
		if(param.equals("/newsDynamic")){
		/* list = newsService.showAllNews("行业资讯");
		 list .addAll( newsService.showAllNews("公司新闻"));
		 list .addAll(newsService.showAllNews("优质服务"));*/
		}else if(param.equals("/industryInformation")){
			map.put("type","行业资讯");
			/*list = newsService.showAllNews("行业资讯");*/
		}else if(param.equals("/companyNews")){
			map.put("type","公司新闻");
			/*list = newsService.showAllNews("公司新闻");*/
		}else if(param.equals("/qualityServices")){
			map.put("type","优质服务");
			/*list = newsService.showAllNews("优质服务");*/
		}
		List<News> countList = newsService.showAllNews(map);
		map.put("pageNo",Pagination.countCurrentPage(1));
		map.put("pageSize",3);
		map.put("allRow",countList.size());
		map.put("pageFirst", Pagination.countOffset(Integer.valueOf(map.get("pageSize").toString()), Pagination.countCurrentPage(1)));
		Pagination.countOffset(Integer.valueOf(map.get("pageSize").toString()), Pagination.countCurrentPage(1));
		map.put("totalPage", Pagination.countTotalPage(Integer.valueOf(map.get("pageSize").toString()),countList.size()));
		list = newsService.showAllNews(map);
		model.addAttribute("newsList", list);
		session.setAttribute("pageMap", map);
		return "foreground/newsDynamic";
	}
	/**
	 * 分页浏览
	 */
	@RequestMapping("{newsDynamic}/pagination/{showPanigation}")
	public String showPanigation(@PathVariable("newsDynamic")String param,@PathVariable("showPanigation")String id,Model model,HttpSession session){
		List<News> list=null;
		Map<String,Object> map=new HashMap<String,Object>();
		if(param.equals("newsDynamic")){
		}else if(param.equals("industryInformation")){
			map.put("type","行业资讯");
		}else if(param.equals("companyNews")){
			map.put("type","公司新闻");
		}else if(param.equals("qualityServices")){
			map.put("type","优质服务");
		}
		List<News> countList = newsService.showAllNews(map);
		map.put("pageSize",3);
		if(id.equals("prevPage")){
			map.put("pageNo", Integer.valueOf(((Map)session.getAttribute("pageMap")).get("pageNo").toString())-1);
			map.put("pageFirst", Pagination.countOffset(Integer.valueOf(map.get("pageSize").toString()), Integer.valueOf(((Map)session.getAttribute("pageMap")).get("pageNo").toString())-1));
		}else if(id.equals("nextPage")){
			map.put("pageNo", Integer.valueOf(((Map)session.getAttribute("pageMap")).get("pageNo").toString())+1);
			map.put("pageFirst", Pagination.countOffset(Integer.valueOf(map.get("pageSize").toString()), Integer.valueOf(((Map)session.getAttribute("pageMap")).get("pageNo").toString())+1));
		}else {
		map.put("pageNo", Integer.valueOf(id));
		map.put("pageFirst", Pagination.countOffset(Integer.valueOf(map.get("pageSize").toString()),Integer.valueOf(id)));
		}
		map.put("allRow",countList.size());
		map.put("totalPage", Pagination.countTotalPage(Integer.valueOf(map.get("pageSize").toString()),countList.size()));
		list = newsService.showAllNews(map);
		model.addAttribute("newsList", list);
		session.setAttribute("pageMap", map);
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
