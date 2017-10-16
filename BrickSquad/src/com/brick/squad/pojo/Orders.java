package com.brick.squad.pojo;

import java.util.Date;
import java.util.List;

public class Orders {
    private String id;

    private String no;

    private String stateId;

    private Date productionDate;

    private String buyId;

    private String articleId;

    private Integer number;

    private Float money;
    /**订单与Rate评论的关系：一对多*/
    private List<Rated> rateds;
    /**订单与Type类型的关系：一对多*/
    private Type types;
    /**订单与商品的关系：多对多*/
    private List<Article> article;
    /**订单与老人信息的关系：一对多*/
    private PersonalInformation personalInformation;

    public PersonalInformation getPersonalInformation() {
		return personalInformation;
	}

	public void setPersonalInformation(PersonalInformation personalInformation) {
		this.personalInformation = personalInformation;
	}

	public List<Article> getArticle() {
		return article;
	}

	public void setArticle(List<Article> article) {
		this.article = article;
	}



	public Type getTypes() {
		return types;
	}

	public void setTypes(Type types) {
		this.types = types;
	}

	public List<Rated> getRateds() {
		return rateds;
	}

	public void setRateds(List<Rated> rateds) {
		this.rateds = rateds;
	}

	public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public String getStateId() {
        return stateId;
    }

    public void setStateId(String stateId) {
        this.stateId = stateId;
    }

    public Date getProductionDate() {
        return productionDate;
    }

    public void setProductionDate(Date productionDate) {
        this.productionDate = productionDate;
    }

    public String getBuyId() {
        return buyId;
    }

    public void setBuyId(String buyId) {
        this.buyId = buyId;
    }

    public String getArticleId() {
        return articleId;
    }

    public void setArticleId(String articleId) {
        this.articleId = articleId;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Float getMoney() {
        return money;
    }

    public void setMoney(Float money) {
        this.money = money;
    }
}