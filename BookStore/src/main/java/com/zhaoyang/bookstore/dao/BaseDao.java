package com.zhaoyang.bookstore.dao;

import java.lang.reflect.ParameterizedType;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.zhaoyang.bookstore.utils.JDBCUtils;

public abstract class BaseDao<T> {
	private QueryRunner queryRunner=new QueryRunner();
	private Class<T> clazz;
	
	public BaseDao() {
		ParameterizedType type=(ParameterizedType)this.getClass().getGenericSuperclass();
		
		clazz=(Class<T>) type.getActualTypeArguments()[0];
	}
	
	public T getBean(String sql,Object... params) {
		T bean=null;
		try(Connection connection=JDBCUtils.getConnection()){
			bean = queryRunner.query(connection, sql, new BeanHandler<T>(clazz), params);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bean;
	}
	
	public List<T> getBeanList(String sql,Object... params){
		List<T> beanList=null;
		try(Connection connection=JDBCUtils.getConnection()){
			beanList = queryRunner.query(connection, sql, new BeanListHandler<T>(clazz), params);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return beanList;
		
	}
	
	public int update(String sql,Object... params) {
		try(Connection connection=JDBCUtils.getConnection()){
			return queryRunner.update(null, sql, params);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
}
