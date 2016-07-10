package com.manauwar.dcms.utils;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import com.opensymphony.xwork2.ActionSupport;

public class DevelopmentSupport extends ActionSupport implements ServletRequestAware, ServletResponseAware {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//    private static final long serialVersionUID = 3515078654701117288L;
    private HttpServletRequest request;
    private HttpServletResponse response;

    public void setServletRequest(HttpServletRequest request) {
        this.request = request;
    }

    public void setServletResponse(HttpServletResponse response) {
        this.response = response;
    }

    public HttpServletRequest getRequest() {
        if (request == null) {
            request = ServletActionContext.getRequest();
        }
        return request;
    }

    public HttpServletResponse getResponse() {
        if (response == null) {
            response = ServletActionContext.getResponse();
        }
        return response;
    }

    public HttpSession getSession() {
        return getRequest().getSession();
    }
}