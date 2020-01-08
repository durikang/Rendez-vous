package com.kh.rendez.support.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/* Interceptor 개요
 * 
 * - 정확하게 얘기하면 HandlerInterceptor이다. (HandlerInterceptorAdater를 상속해서 구현)
 * - 아래 세가지 메소드를 오버라이딩 해여 사용한다.
 * 
 * 1. preHandle (전처리) : DispatcherServlet이 컨트롤러를 호출하기 전
 * 2. postHandle (후처리) : 컨트롤러에서 DispatcherServlet으로 리턴 되는 순간
 * 3. afterCompletion (뷰 단 처리 후) : 모든 뷰에서 최종 결과를 생성하는 일을 포함한 모든 작업이 완료 된 후 
 * 								==> 요청 처리 중에 사용한 리소스를 반환하는 용도로 적당
 * 
 * */
public class LoggerInterceptor extends HandlerInterceptorAdapter {
	protected Logger logger = LoggerFactory.getLogger(LoggerInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		if(logger.isErrorEnabled()) {
			logger.debug("========== START ==========");
			logger.debug(request.getRequestURI());
		}
		return super.preHandle(request, response, handler);
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView mv) {
		if(logger.isDebugEnabled()) {
			logger.debug("========== VIEW ==========");
		}
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception e) throws Exception {
		if(logger.isDebugEnabled()) {
			logger.debug("========== END ==========");
		}
		
		super.afterCompletion(request, response, handler, e);
	}
	// 작성 완료 후 log4j.xml로 가서 logger 등록하기
	
}
