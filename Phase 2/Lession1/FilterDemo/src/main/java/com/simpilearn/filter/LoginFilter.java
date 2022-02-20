package com.simpilearn.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
* Servlet Filter implementation class LoginFilter
*/
@WebFilter("/LoginFilter")
public class LoginFilter implements Filter {

    /**
* Default constructor.
*/
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }
        public void destroy() {
                // TODO Auto-generated method stub
        }     
        public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {                
                
                String userId = request.getParameter("userid");

                if( userId != null){
                        chain.doFilter(request, response);
            }                             
        }
        public void init(FilterConfig fConfig) throws ServletException {
                // TODO Auto-generated method stub
        }

}
