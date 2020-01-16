package com.naver;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
//@WebListener
public class MyServletContextListenerImpl implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		System.out.println("sc 종료");
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("sc 생성");
		
	}

}
