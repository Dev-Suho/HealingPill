package com.healingpill.model;

import lombok.Getter;
import lombok.Setter;

public class MemberVO {
    @Getter
    @Setter
    public class User {
        private int mem_num;
        private String mem_id;
        private String mem_password;
        private String mem_name;
        private String mem_phone;
        private String mem_birth_year;
        private int mem_birth_month;
        private int mem_birth_day;
        private String mem_address;
        private String mem_email;
        private String mem_sex;
        private int mem_register_datetime;
        private String mem_is_admin;

        public User(String mem_id, String mem_password, String mem_username, String mem_phone, String mem_birth_year, int mem_birth_month, int mem_birth_day, String mem_address, String mem_email, String mem_sex, String mem_is_admin) {
        }
    }
}
