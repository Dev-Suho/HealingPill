package com.healingpill.VO;

import oracle.sql.DATE;

public class BoardVO {
    /* 게시판 번호 */
    private  int mg_no;
    /* 게시판 이미지 */
    private String mg_image;
    /* 게시판 제목 */
    private String mg_title;
    /* 게시판 내용 */
    private String mg_content;
    /* 게시판 게시일 */
    private DATE mg_date;
    /* 게시판 조회수 */
    private int mg_views;

    public int getMg_no() {
        return mg_no;
    }

    public void setMg_no(int mg_no) {
        this.mg_no = mg_no;
    }

    public String getMg_image() {
        return mg_image;
    }

    public void setMg_image(String mg_image) {
        this.mg_image = mg_image;
    }

    public String getMg_title() {
        return mg_title;
    }

    public void setMg_title(String mg_title) {
        this.mg_title = mg_title;
    }

    public String getMg_content() {
        return mg_content;
    }

    public void setMg_content(String mg_content) {
        this.mg_content = mg_content;
    }

    public DATE getMg_date() {
        return mg_date;
    }

    public void setMg_date(DATE mg_date) {
        this.mg_date = mg_date;
    }

    public int getMg_views() {
        return mg_views;
    }

    public void setMg_views(int mg_views) {
        this.mg_views = mg_views;
    }

    @Override
    public String toString() {
        return "BoardVO{" +
                "mg_no=" + mg_no +
                ", mg_image='" + mg_image + '\'' +
                ", mg_title='" + mg_title + '\'' +
                ", mg_content='" + mg_content + '\'' +
                ", mg_date=" + mg_date +
                ", mg_views=" + mg_views +
                '}';
    }
}
