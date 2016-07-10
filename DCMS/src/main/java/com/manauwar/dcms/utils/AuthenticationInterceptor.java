/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.manauwar.dcms.utils;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import java.util.Map;

/**
 *
 * @author wml4
 */
public class AuthenticationInterceptor implements Interceptor {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String intercept(ActionInvocation invocation) throws Exception {


//        String userId = getSession().getAttribute("username").toString();
//        String className = invocation.getAction().getClass().getName();
//
//       
//        if (userId != null) {
//            return invocation.invoke();
//
//        }
//        else if (!("LoginAction".equals(className))) {
//            return invocation.invoke();
//        }
        
        Map session = invocation.getInvocationContext().getSession();

		if (session.get("username") == null)
		{
			return "loginRedirect";
		}
		else
		{
			return invocation.invoke();
		}
        
//        return "loginRedirect";
    }

    public void destroy() {

    }

    public void init() {

    }
}