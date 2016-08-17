package com.cartomat.mpost.v2.core;

/**
 * Created by PC on 9/4/2015.
 */
public class Saying {
    private long id;
    private String content;

    public Saying(){

    }

    public Saying(long id, String content){
        this.id = id;
        this.content = content;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

}
