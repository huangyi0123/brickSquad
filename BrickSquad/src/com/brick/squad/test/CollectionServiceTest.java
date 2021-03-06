package com.brick.squad.test;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.pojo.Collection;
import com.brick.squad.service.CollectionService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class CollectionServiceTest {

	@Autowired
	@Qualifier("collectionService")
	private CollectionService collectionService;

	@Test
	public void testFindCollectionById() {
		Collection collection = collectionService
				.findCollectionById("499e0cbabfad11e7aca65254002ec43c");
		System.out.println(collection.getColDate());
	}
	/*@Test
	public void testFindCollectionById2() {
		 List<ArticleExpand> articleExpand=collectionService.findCollectionMessage("77c9a2dec44911e7aca65254002ec43c");
		 System.out.println(articleExpand);
		
	}*/
	@Test
	public void testInsertCollection() {
		Collection collection = new Collection();
		collection.setPerId("3");
		collection.setArticleId("6");
		collection.setColDate(new Date());
		collectionService.insertCollection(collection);

	}

	@Test
	public void testUpdateCollectionById() {
		Collection collection = collectionService
				.findCollectionById("499e0cbabfad11e7aca65254002ec43c");
		collection.setArticleId("4");
		collection.setColDate(new Date());
		collection.setPerId("4");
		collectionService.updateCollectionById(collection);
	}

	@Test
	public void testDeleteCollectionById() {
		collectionService.deleteCollectionById("1");
	}

	@Test
	public void testCollectionPagination() {
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(4);
		System.out.println(collectionService.collectionPagination(pagination));
	}
	@Test
	public void findCollectionByArticleId() throws Exception{
		List<Collection> listCollection=collectionService.findCollectionByArticleId("8b1b72d6b70611e78d4f5254002ec43c");
		for(Collection collection:listCollection){
			System.out.println("==============="+collection.getArticleId());
		}
	}

}
