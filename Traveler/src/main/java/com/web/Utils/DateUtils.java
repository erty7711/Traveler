package com.web.Utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DateUtils {
	public static Date getDateByString(String dateStr) throws ParseException {
		Pattern pattern = Pattern.compile("([12]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\\d|3[01]))");
	    Matcher matcher = pattern.matcher(dateStr);
	    
	    Pattern pattern2 = Pattern.compile("([12]\\d{3}\\/(0[1-9]|1[0-2])\\/(0[1-9]|[12]\\d|3[01]))");
	    Matcher matcher2 = pattern2.matcher(dateStr);
	    String strDateFormat = "";
	    if (matcher.find()) {
	    	strDateFormat="yyyy-MM-dd";
	    } else if (matcher2.find()) {
	    	strDateFormat="yyyy/MM/dd";
	    } else {
	    	return null;
	    }
		DateFormat dateFormat = new SimpleDateFormat(strDateFormat);
		return dateFormat.parse(dateStr);
	}
}
