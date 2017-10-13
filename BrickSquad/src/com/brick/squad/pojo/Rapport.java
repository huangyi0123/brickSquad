package com.brick.squad.pojo;

import java.util.Date;

public class Rapport {
    private String id;

    private String perId;

    private String userId;

    private Date rapportDate;

    private String content;

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