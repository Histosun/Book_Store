package com.zhaoyang.bookstore.utils;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class WebUtils {
	private static ApplicationContext ioc=new ClassPathXmlApplicationContext("applicationContext.xml");
	public static <T> T getBean(Class<T> clazz) {
		return ioc.getBean(clazz);
	}
	
	public static<T> T paramToBean(HttpServletRequest request, T t) {
		try {
			Map map= request.getParameterMap();
			BeanUtils.populate(t, map);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return t;
	}
}
