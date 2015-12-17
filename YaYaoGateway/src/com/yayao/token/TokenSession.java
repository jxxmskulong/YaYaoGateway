package com.yayao.token;

import javax.servlet.http.HttpServletRequest;
/**
 * 初始值一样，所以false为不重复
 * 不一样时重复
 * @author yy
 *
 */
public class TokenSession{
	
	public static boolean isrepeattoken(HttpServletRequest request) {
		String serverToken = (String) request.getSession( false ).getAttribute( "token" );
		if (serverToken == null ) {
			return false ;
		}
		String clinetToken = request.getParameter( "token" );
		//String clinetToken = (String) request.getAttribute( "token" );
		if (clinetToken == null ) {
			return false ;
		}
		if (serverToken.equals(clinetToken)) {
			return false ;
		}
		return true;
	} 
	
}
