package com.yayao.interceptor;

import java.lang.reflect.Method;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.yayao.token.TokenHandler;
import com.yayao.token.TokenSession;

public class TokenHandlerInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		 
		  if (handler instanceof HandlerMethod) {
	             HandlerMethod handlerMethod = (HandlerMethod) handler;
	             Method method = handlerMethod.getMethod();
	             TokenHandler annotation = method.getAnnotation(TokenHandler. class );
	             if (annotation != null ) {
	                 boolean needSaveSession = annotation.save();
	                 if (needSaveSession) {
	                     request.getSession( false ).setAttribute( "token" , UUID.randomUUID().toString());
	                 }
	                 boolean needRemoveSession = annotation.remove();
	                 if (needRemoveSession) {
	                     if (TokenSession.isrepeattoken(request)) {
	                         return true;
	                     }else{
	                    	 return true ;
	                     }
	                 }
	             }
	         }
		  return true ;
	}
	

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}



}
