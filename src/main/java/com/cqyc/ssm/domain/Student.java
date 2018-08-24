package com.cqyc.ssm.domain;

import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.*;
import java.io.Serializable;

public class Student implements Serializable {
    public interface register{}//注册时的校验组

    private Integer id;
    @NotNull(message = "用户名不能为空")
    @NotBlank(message = "用户名不能为空")
    @Length(min = 3,max = 10,message = "用户名的长度大于3小于10哟")
    private String usercode;

    @NotNull(message = "姓名不能为空",groups = register.class)
    @NotBlank(message = "姓名不能为空",groups = register.class)
    @Length(min = 1,max = 10,message = "姓名长度大于3小于10",groups = register.class)
    private String username;

    @NotBlank(message = "密码不能为空哟")
    @Length(min = 5,max = 18,message = " 密码长度在5到18之间哟")
    private String  password;

    @Email(message = "邮箱格式不对哟",groups = register.class)
    private String  email;

    @Length(min = 18,max = 18,message = "身份证输入错误哟",groups = register.class)
    private String  idCard;

    @NotBlank(message = "手机号码不能为空",groups = register.class)
    @Pattern(regexp = "^1(3|4|5|7|8)\\d{9}$",message = "手机格式输入错误",groups = register.class)
    private String  phone;

    @NotBlank(message = "性别不能为空哟",groups = register.class)
    private String  sex;

    private String  address;
    private Integer usertype;
    private Integer score;

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getId() {
        return id;

    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsercode() {
        return usercode;
    }

    public void setUsercode(String usercode) {
        this.usercode = usercode;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getUsertype() {
        return usertype;
    }

    public void setUsertype(Integer usertype) {
        this.usertype = usertype;
    }
}
