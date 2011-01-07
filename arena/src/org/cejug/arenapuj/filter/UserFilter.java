package org.cejug.arenapuj.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.cejug.arenapuj.to.UserTO;

/**
 * Servlet Filter implementation class UserFilter
 */
public class UserFilter implements Filter {

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest) request;
		// HttpServletResponse res = (HttpServletResponse) response;
		UserTO user = (UserTO) req.getSession().getAttribute("user");

		if (user == null) {
			if (req.getRequestURI().indexOf("/soneca.jsp") > -1 ||
					req.getRequestURI().indexOf("/puj.jsp") > -1 ) {
				request.getRequestDispatcher("/login.jsp")//
						.forward(request, response);
			}
			// else if (!"GET".equals(req.getMethod())) {
			// if(req.getRequestURI().indexOf("resource/user") == -1)
			// res.sendError(403);
			// }
		} else {
			if (req.getRequestURI().indexOf("/soneca.jsp") > -1) {
				if (!"soneca".equals(user.getNome()))
					request.getRequestDispatcher("/login.jsp")//
							.forward(request, response);
			}
		}

		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {

	}

}
