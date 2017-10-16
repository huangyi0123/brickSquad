package com.brick.squad.pojo;

import java.util.Date;
import java.util.List;

public class Rapport {
    private String id;

    private String perId;

    private String userId;

    private Date rapportDate;

    private String content;
    /**Rapport客户老人沟通与User用户的关系：多对多*/
    private List<User> users;
    /**Rapport客户老人沟通与老人的关系：一对多*/
    private PersonalInformation personalInformation;
	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public PersonalInformation getPersonalInformation() {
		return personalInformation;
	}

	public void setPersonalInformation(PersonalInformation personalInformation) {
		this.personalInformation = personalInformation;
	}

	public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPerId() {
        return perId;
    }

    public void setPerId(String perId) {
        this.perId = perId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Date getRapportDate() {
        return rapportDate;
    }

    public void setRapportDate(Date rapportDate) {
        this.rapportDate = rapportDate;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}