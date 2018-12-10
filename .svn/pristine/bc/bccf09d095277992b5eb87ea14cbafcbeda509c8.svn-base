package com.tom.lemenintl.common.filter;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.service.AuthService;
import com.tom.lemenintl.common.utils.CommonUtils;
import com.tom.lemenintl.common.utils.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebFilter
public class TokenFilter implements Filter {

	List<String> URLWhiteList = Arrays.asList("/favicon.ico", "/W001","/P001");

	@Autowired
	ObjectMapper objectMapper;

	@Autowired
	AuthService authService;

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest httpServletRequest = (HttpServletRequest) req;
		HttpServletResponse httpServletResponse = (HttpServletResponse) res;

		// 白名单
		if (URLWhiteList.contains(httpServletRequest.getRequestURI())) {
			chain.doFilter(req, res);
			return;
		}

		try {
			// 校验token
			String token = httpServletRequest.getHeader("token");

			// 开发时
			if ("1".equals(token)) {
				chain.doFilter(req, res);
				return;
			}

			authService.validateToken(token);
		} catch (Exception e) {
			RestHttpReply reply = new RestHttpReply();
			CommonUtils.wrapException(reply, e);
			try {
				httpServletResponse.setHeader("Content-type", "text/json;charset=UTF-8");
				httpServletResponse.getWriter().println(JsonUtils.toJson(reply, objectMapper));
			} catch (Exception e1) {
				httpServletResponse.sendError(500, e1.getMessage());
			}
			return;
		}

		chain.doFilter(req, res);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

}
