package com.lzm.conversion;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Controller;

/**
 * 转换日期类型的数据
 * S : 页面传递过来的类型
 * T ： 转换后的类型
 *
 */
@Controller
public  class DateConveter {

	public Date convert(String source) {
		// TODO Auto-generated method stub

		 SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date date = simpleDateFormat.parse(source);
			return  date;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}


}
