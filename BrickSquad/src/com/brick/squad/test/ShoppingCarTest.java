package com.brick.squad.test;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.pojo.ShoppingCar;
import com.brick.squad.service.ShoppingCarService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class ShoppingCarTest {
	@Autowired
	@Qualifier("shoppingCarService")
	private ShoppingCarService shoppingCarService;

	@Test
	public void findShoppingCarById() throws Exception {
		ShoppingCar shoppingCar = shoppingCarService.findShoppingCarById("1");
		System.out.println(shoppingCar.getNumber());
	}

	@Test
	public void insertShoppingCar() throws Exception {
		ShoppingCar shoppingCar = new ShoppingCar();
		shoppingCar.setArticleId("22");
		shoppingCar.setDate(new Date());
		shoppingCar.setId("22");
		shoppingCar.setNumber(3222);
		shoppingCar.setPerId("22");
		shoppingCarService.insertShoppingCar(shoppingCar);
	}

	@Test
	public void deleteShoppingCarById() throws Exception {
		ShoppingCar shoppingCar = shoppingCarService.findShoppingCarById("2");
		shoppingCarService.deleteShoppingCarById(shoppingCar.getId());
	}

	@Test
	public void updateShoppingCarById() throws Exception {
		ShoppingCar shoppingCar = shoppingCarService.findShoppingCarById("1");
		shoppingCar.setNumber(666);
		shoppingCarService.updateShoppingCarById(shoppingCar);
	}

	@Test
	public void findShoppingCar() throws Exception {
		List<ShoppingCar> shoppingCars = shoppingCarService.findShoppingCar();
		for (ShoppingCar shoppingCar : shoppingCars) {
			System.out.println(shoppingCar.getDate());
		}
	}

	/*
	 * @Test public void findCount() throws Exception{ Integer
	 * count=shoppingCarService.findShoppingCarCount();
	 * System.out.println(count); }
	 */
	@Test
	public void findArticleAndPersonalInformation() throws Exception {
		String data = shoppingCarService.findArticleAndPersonalInformation();
		System.out.println(data);
	}

	@Test
	public void shoppingCarPagination() throws Exception {
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(3);
		String shoppings = shoppingCarService.shoppingCarPagination(pagination);
		System.out.println(shoppings);
	}

	@Test
	public void findShoppingCarAndUserAndPsersonalInformationById()
			throws Exception {
		System.out.println(shoppingCarService
				.findShoppingCarAndUserAndPsersonalInformationById("2")
				.getName());
	}
	@Test
	public void AddShoppingCarByArticleId() throws Exception{
		List<ShoppingCar> flag=shoppingCarService.AddShoppingCarByArticleId("5863a982c46f11e7aca65254002ec43c");
		System.err.println(flag);
	}

}
