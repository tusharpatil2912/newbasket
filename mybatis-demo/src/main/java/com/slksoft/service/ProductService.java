package com.slksoft.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.slksoft.dao.ProductsDao;
import com.slksoft.entity.Product;

public class ProductService {

	private ProductsDao dao;

	public ProductService() throws IOException {
		String resource = "mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession sqlSession = sqlSessionFactory.openSession();
		dao = sqlSession.getMapper(ProductsDao.class);
	}

	public List<Product> getAllProducts() {
		return dao.getAllProducts();
	}

	public List<Product> getProductsByCategory(String category) {
		return dao.getProductsByCategory(category);
	}

	public List<Product> getProductsByBrand(String brand) {
		return dao.getProductsByBrand(brand);
	}
	
	public List<String> getAllBrands()
	{
		return dao.getAllBrands();
	}
	
	public List<String> getAllCategories()
	{
		return dao.getAllCategories();
	}
	public Product getProductById(Integer id)
	{
		return dao.getProductById(id);
	}
	
	public void addNewProduct(Product product)
	{
		Product p1=new Product();
		product=p1;
	}
	

}
