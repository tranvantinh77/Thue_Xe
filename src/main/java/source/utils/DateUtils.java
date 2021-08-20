package source.utils;

import java.util.Calendar;
import java.util.Date;

public class DateUtils {
	
	public static Date UpDownDate(Date date, int num) {

        Calendar c = Calendar.getInstance();
//        System.out.println("Ngày  : "+ date);
        		
        c.setTime(date);
        c.add(Calendar.DATE, num);
        
        Date dateResult = new Date(c.getTime().getTime());
//        System.out.println("Ngày được tăng thêm 8 ngày (Sử dụng add)  : "
//                + dateResult);
        return dateResult;
	}
	
	public static long daysBetween2Dates(Date date1, Date date2) {
        
        Calendar c1 = Calendar.getInstance();
        Calendar c2 = Calendar.getInstance();
        
        c1.setTime(date1);
        c2.setTime(date2);

        // Công thức tính số ngày giữa 2 mốc thời gian:
        long noDay = (c2.getTime().getTime() - c1.getTime().getTime()) / (24 * 3600 * 1000);

//        System.out.println(noDay);
		return noDay;

    }
//	public static void main(String[] args) {
//		java.util.Date date = new java.util.Date();
//		date.setDate(28);
//		date.setMonth(5);
//		date.setYear(2021);
//		Date d = new Date(date.getTime());
//		date.setDate(5);
//		date.setMonth(6);
//		date.setYear(2021);
//		Date d2 = new Date(date.getTime());
//		UpDownDate(d);
//		daysBetween2Dates(d, d2);
//	}
}
