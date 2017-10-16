package com.brick.squad.test;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.ShoppingCar;
import com.brick.squad.service.ShoppingCarService;

@RunWith(SpringJUnit4ClassRunner.class)
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
		shoppingCar.setArticleId("2");
		shoppingCar.setDate(new Date());
		shoppingCar.setId("2");
		shoppingCar.setNumber(32);
		shoppingCar.setPerId("2");
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

}