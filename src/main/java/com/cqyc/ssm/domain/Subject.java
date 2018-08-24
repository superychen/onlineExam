package com.cqyc.ssm.domain;

import org.hibernate.validator.constraints.Length;

import javax.validation.MessageInterpolator;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

public class Subject implements Serializable {
    public interface editXz{}

    private Integer id;
    @NotNull(message = "考试题目不能为空")
    @NotBlank(message = "考试题目不能为空")
    private String title;

    @NotBlank(message = "A选项不能为空",groups =editXz.class )
    private String optionA;
    @NotBlank(message = "B选项不能为空",groups =editXz.class )
    private String optionB;
    @NotBlank(message = "C选项不能为空",groups =editXz.class )
    private String optionC;
    @NotBlank(message = "答案不能为空")
    private String answer;
    private String gou;
    private String cha;
    @NotEmpty
    private Integer eaxmtype;
    private String eaxmimg;
    @NotBlank(message = "讲解不能为空")
    private String explains;


    public String getEaxmimg() {
        return eaxmimg;
    }

    public void setEaxmimg(String eaxmimg) {
        this.eaxmimg = eaxmimg;
    }
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getOptionA() {
        return optionA;
    }

    public void setOptionA(String optionA) {
        this.optionA = optionA;
    }

    public String getOptionB() {
        return optionB;
    }

    public void setOptionB(String optionB) {
        this.optionB = optionB;
    }

    public String getOptionC() {
        return optionC;
    }

    public void setOptionC(String optionC) {
        this.optionC = optionC;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getGou() {
        return gou;
    }

    public void setGou(String gou) {
        this.gou = gou;
    }

    public String getCha() {
        return cha;
    }

    public void setCha(String cha) {
        this.cha = cha;
    }

    public Integer getEaxmtype() {
        return eaxmtype;
    }

    public void setEaxmtype(Integer eaxmtype) {
        this.eaxmtype = eaxmtype;
    }

    public String getExplains() {
        return explains;
    }

    public void setExplains(String explains) {
        this.explains = explains;
    }
}
