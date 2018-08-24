package com.cqyc.ssm.comm;

import org.springframework.core.convert.converter.Converter;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateConvert implements Converter<String,Date> {
    public Date convert(String source) {

        try {
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            return df.parse(source);
        } catch (Exception e) {
            try {
                throw new CustomException("日期转换异常");
            } catch (CustomException e1) {
                e1.printStackTrace();
            }
            return null;
        }
    }
}
