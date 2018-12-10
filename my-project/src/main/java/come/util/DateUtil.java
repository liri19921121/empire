/**
 * 时间操作辅助类
 * 
 * @version v1.0 DateUtil.java 2013-9-25 下午05:47:33
 * 
 */
package come.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * DateUtil 时间操作公共类</br> 如果要添加新的格式化格式，请先添加常量 :)
 * 
 */
public class DateUtil
{
    private static Logger log = LoggerFactory.getLogger(DateUtil.class);
    
    public static final String YY_MM_DDHHMMSS = "yyyy-MM-dd HH:mm:ss";
    
    public static final String YYMMDDHHMMSSCN = "yyyy年MM月dd日";
    
    public static final String YY_MM_DD = "yyyy-MM-dd";
    
    public static final String HH_MM_SS = "HH:mm:ss";
    
    public static final String YYMMDDHHMMSS = "yyyyMMddHHmmss";
    
    public static final String YYMMDDHHMM = "yyyyMMddHHmm";
    
    public static final String YYMMDD = "yyyyMMdd";
    
    public static final String HHMMSS = "HHmmss";
    
    public static final String HHMMSSSSS = "HHmmssSSS";
    
    public static final String YYMMDDHHMMSSSSS = "yyyyMMddHHmmssSSS";
    
    public static final String HHMM = "HH:mm";
    
    public static final String YYMM = "yyyyMM";
    
    public static final String YY_MM_DDHHMM = "yyyy-MM-dd HH:mm";
    
    public static final String MMDD = "MM月dd日";
    
    public static final String YEAR_MONTH = "yyyy-MM";
    
    public static final String AM = "上午";
    
    public static final String PM = "下午";
    
    public static final String NIGHT = "晚上";
    
    private static Map<String, String> defaultDateFormatMap = new HashMap<String, String>();
    static
    {
        defaultDateFormatMap.put("[0-9]{4}-[0-9]{1,2}-[0-9]{1,2}", DateUtil.YY_MM_DD);
        defaultDateFormatMap.put("[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}", "yyyy/MM/dd");
        defaultDateFormatMap.put("[0-9]{4}-[0-9]{1,2}-[0-9]{1,2} [0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}",
            DateUtil.YY_MM_DDHHMMSS);
        defaultDateFormatMap.put("[0-9]{4}/[0-9]{1,2}/[0-9]{1,2} [0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}",
            "yyyy/MM/dd HH:mm:ss");
        defaultDateFormatMap.put("[0-9]{4}-[0-9]{1,2}", DateUtil.YEAR_MONTH);
        defaultDateFormatMap.put("[0-9]{4}/[0-9]{1,2}", "yyyy/MM");
    }
    
    /**
     * 获取 yyyyMMddHHmmss 格式时间<br>
     * 如果date为null，返回当前时间
     * 
     * 
     * @version v1.0 2013-9-25 下午05:56:57
     * @param date
     *            时间
     * @return 格式化后的时间字符串
     */
    public static String getNowyyyyMMddHHmmss(Date date)
    {
        SimpleDateFormat fmt = new SimpleDateFormat(YYMMDDHHMMSS);
        if (date == null)
        {
            return fmt.format(new Date());
        }
        return fmt.format(date);
    }
    
    /**
     * 获取 yyyyMMdd 格式时间<br>
     * 如果date为null，返回当前时间
     * 
     * 
     * @version v1.0 2013-9-25 下午05:57:25
     * @param date
     *            时间
     * @return 格式化后的时间字符串
     */
    public static String getNowyyyyMMdd(Date date)
    {
        SimpleDateFormat fmt = new SimpleDateFormat(YYMMDD);
        if (date == null)
        {
            return fmt.format(new Date());
        }
        return fmt.format(date);
    }
    
    /**
     * 返回yyyyMMdd转换后的日期
     * 
     * @param dateStr
     *            格式yyyyMMdd
     * @return date类型的日期
     */
    public static Date getDateyyyyMMdd(String dateStr)
    {
        Date date = null;
        SimpleDateFormat fmt = new SimpleDateFormat(YYMMDD);
        try
        {
            date = fmt.parse(dateStr);
        }
        catch (ParseException e)
        {
            e.printStackTrace();
        }
        return date;
    }
    
    /**
     * 获取 HHmmss 格式时间 <br>
     * 如果date为null，返回当前时间
     * 
     * 
     * @version v1.0 2013-9-25 下午05:59:21
     * @param date
     *            时间
     * @return 格式化后的时间字符串
     */
    public static String getNowHHmmss(Date date)
    {
        SimpleDateFormat fmt = new SimpleDateFormat(HH_MM_SS);
        if (date == null)
        {
            return fmt.format(new Date());
        }
        return fmt.format(date);
    }
    
    /**
     * 获取 HHmmssSSS 格式时间<br>
     * 如果date为null，返回当前时间
     * 
     * 
     * @version v1.0 2013-9-25 下午05:59:25
     * @param date
     *            时间
     * @return 格式化后的时间字符串
     */
    public static String getNowHHmmssSSS(Date date)
    {
        SimpleDateFormat fmt = new SimpleDateFormat(HHMMSSSSS);
        if (date == null)
        {
            return fmt.format(new Date());
        }
        return fmt.format(date);
    }
    
    /**
     * 获取 yyyyMMddHHmmssSSS 格式时间<br>
     * 如果date为null，返回当前时间
     * 
     * 
     * @version v1.0 2013-9-25 下午05:59:33
     * @param date
     *            时间
     * @return 格式化后的时间字符串
     */
    public static String getNowyyyyMMddHHmmssSSS(Date date)
    {
        SimpleDateFormat fmt = new SimpleDateFormat(YYMMDDHHMMSSSSS);
        if (date == null)
        {
            return fmt.format(new Date());
        }
        return fmt.format(date);
    }
    
    /**
     * 获取 yyyy-MM-dd HH:mm:ss 格式时间<br>
     * 如果date为null，返回当前时间
     * 
     * 
     * @version v1.0 2013-9-25 下午05:59:36
     * @param date
     *            时间
     * @return 格式化后的时间字符串
     */
    public static String getSimpleDate(Date date)
    {
        SimpleDateFormat fmt = new SimpleDateFormat(YY_MM_DDHHMMSS);
        if (date == null)
        {
            return fmt.format(new Date());
        }
        return fmt.format(date);
    }
    
    /**
     * 获取 yyyy-MM-dd HH:mm:ss 格式时间<br>
     * 如果date为null，返回当前时间
     * 
     * @author Jamin
     * @version v1.0 2013-10-11 下午05:59:36
     * @param date
     *            时间
     * @return 格式化后的时间字符串
     */
    public static Date getStartTime()
    {
        Calendar c = Calendar.getInstance();
        c.set(Calendar.HOUR_OF_DAY, 0);
        c.set(Calendar.MINUTE, 0);
        c.set(Calendar.SECOND, 0);
        return c.getTime();
    }
    
    /**
     * 获取当前时间 N天前后 的日期</br> 如：-1=当前日期 一天前 的日期，1=当前日期 一天后 的日期
     * 
     * 
     * @version v1.0 2013-10-14 下午02:47:39
     * @param day
     *            天数
     * @param fmt_type
     *            格式化类型
     * @return 格式化后的日期
     */
    public static String getDayBeforeDate(int day, String fmt_type)
    {
        Calendar rightNow = Calendar.getInstance();
        rightNow.add(Calendar.DAY_OF_MONTH, day);
        return toString(rightNow.getTime(), fmt_type);
    }
    
    /**
     * 获取当前时间 N个月前后 日期，n可为正负整数</br> 如：-1=当前日期 一月前 的日期，1=当前日期 一月后 的日期
     * 
     * 
     * @version v1.0 2013-10-14 下午02:44:03
     * @param month
     *            月数
     * @param fmt_type
     *            格式化类型
     * @return 按照参数 fmt_type 格式化后的日期
     */
    public static String getMonthBeforeDate(int month, String fmt_type)
    {
        Calendar rightNow = Calendar.getInstance();
        rightNow.add(Calendar.MONTH, month);
        return toString(rightNow.getTime(), fmt_type);
    }
    
    /**
     * 将字符串的转换成date类型</br>
     * 
     * @version v1.0 2013-11-28 下午10:44:03
     * @param date
     *            日期
     * @param fmt_type
     *            格式化类型
     * @return 按照参数 fmt_type 格式化后的日期
     */
    public static Date toDate(String date, String fmt_type)
    {
        SimpleDateFormat fmt = new SimpleDateFormat(fmt_type);
        try
        {
            if (date != null)
            {
                return fmt.parse(date);
            }
        }
        catch (ParseException e)
        {
            log.info(e.toString());
        }
        return new Date();
    }
    
    public static String toString(Date date, String pattern)
    {
        Assert.notNull(date);
        Assert.notNull(pattern);
        SimpleDateFormat sdf = new SimpleDateFormat(pattern);
        return sdf.format(date);
    }
    
    /**
     * 计算两个日期之间相差年
     * 
     * @param sdate
     * @param edate
     * @return 相差天数
     * @throws ParseException
     */
    @SuppressWarnings("deprecation")
    public static int betYear(Date sdate, Date edate)
    {
        if (edate.getYear() > sdate.getYear())
        {
            return edate.getYear() - sdate.getYear();
        }
        else
        {
            return 0;
        }
    }
    
    /**
     * 计算两个日期之间相差的天数
     * 
     * @param sdate
     * @param edate
     * @return 相差天数
     * @throws ParseException
     */
    public static int betDays(Date sdate, Date edate)
        throws ParseException
    {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        sdate = sdf.parse(sdf.format(sdate));
        edate = sdf.parse(sdf.format(edate));
        
        Calendar cal = Calendar.getInstance();
        cal.setTime(sdate);
        
        long time1 = cal.getTimeInMillis();
        cal.setTime(edate);
        
        long time2 = cal.getTimeInMillis();
        long between_days = (time2 - time1) / (1000 * 3600 * 24);
        
        return Integer.parseInt(String.valueOf(between_days));
    }
    
    /**
     * 计算两个日期之间相差的天数
     * 
     * @param sdate
     * @param edate
     * @return 相差天数
     * @throws ParseException
     */
    public static int betDays(String sdate, String edate)
        throws ParseException
    {
        Date sDate = toDate(sdate, YY_MM_DDHHMMSS);
        Date eDate = toDate(edate, YY_MM_DDHHMMSS);
        
        Calendar cal = Calendar.getInstance();
        cal.setTime(sDate);
        
        long time1 = cal.getTimeInMillis();
        cal.setTime(eDate);
        
        long time2 = cal.getTimeInMillis();
        long between_days = (time2 - time1) / (1000 * 3600 * 24);
        return Integer.parseInt(String.valueOf(between_days));
    }
    
    /**
     * 计算两个日期之间相差的分钟
     * 
     * @param sdate
     * @param edate
     * @return 相差分钟
     * @throws ParseException
     */
    public static int betweenMinutes(Date sdate, Date edate)
    {
        long sdateMillis = sdate.getTime();
        long edateMillis = edate.getTime();
        long bettweenMillis = edateMillis - sdateMillis;
        int minutes = (int)bettweenMillis / 1000 / 60;
        return minutes;
    }
    
    public static int getMonth(Date date)
    {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        int month = cal.get(Calendar.MONTH) + 1;
        return month;
    }
    
    public static int getYear(Date date)
    {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        int year = cal.get(Calendar.YEAR);
        return year;
    }
    
    public static int getDay(Date date)
    {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        int day = cal.get(Calendar.DATE);
        return day;
    }
    
    /**
     * 获取指定时间的下一个小时
     * 
     * @param date
     * @param hours传负数可查前一个小时
     * @return
     */
    public static Date nextHour(Date date, int hours)
    {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.HOUR, hours);
        return cal.getTime();
    }
    
    public static Date nextDay(Date date, int nextDay)
    {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.DATE, nextDay);
        return cal.getTime();
    }
    
    public static String now()
    {
        SimpleDateFormat fm = new SimpleDateFormat(YY_MM_DDHHMMSS);
        return fm.format(new Date());
    }
    
    public static String now(String format)
    {
        if (!StringUtils.hasLength(format))
        {
            format = YY_MM_DDHHMMSS;
        }
        SimpleDateFormat fm = new SimpleDateFormat(format);
        return fm.format(new Date());
    }
    
    /**
     * 比较两个 Date 对象表示的时间值（从历元至现在的毫秒偏移量）。
     * 
     * @param d1
     * @param d2
     * @return 如果 d1 表示的时间等于 d2 表示的时间，则返回 0 值；如果此 d1 的时间在d2表示的时间之前，则返回小于 0 的值；如果
     *         d1 的时间在 d2 表示的时间之后，则返回大于 0 的值。
     * 
     */
    public static int compare(Date d1, Date d2)
    {
        Assert.notNull(d1);
        Assert.notNull(d2);
        
        Calendar c1 = Calendar.getInstance();
        Calendar c2 = Calendar.getInstance();
        c1.setTime(d1);
        c2.setTime(d2);
        
        return c1.compareTo(c2);
    }
    
    /**
     * 比较两个 Date 对象表示的日期值（仅仅比较日期,忽略时分秒）
     * 
     * @param d1
     * @param d2
     * @return 如果 d1 表示的日期等于 d2 表示的日期，则返回 0 值；如果此 d1 的日期在d2表示的日期之前，则返回小于 0 的值；如果
     *         d1 的日期在 d2 表示的日期之后，则返回大于 0 的值。
     * 
     */
    public static int compareDate(Date d1, Date d2)
    {
        Assert.notNull(d1);
        Assert.notNull(d2);
        
        d1 = DateUtil.toDate(DateUtil.toString(d1, YY_MM_DD), YY_MM_DD);
        d2 = DateUtil.toDate(DateUtil.toString(d2, YY_MM_DD), YY_MM_DD);
        Calendar c1 = new GregorianCalendar();
        Calendar c2 = new GregorianCalendar();
        c1.setTime(d1);
        c2.setTime(d2);
        
        return c1.compareTo(c2);
    }
    
    public static Date nowTime()
    {
        return new GregorianCalendar().getTime();
    }
    
    /**
     * 判断当前日期是星期几.   星期天返回7.
     * <br>
     * 
     * @param pTime
     *            修要判断的时间<br>
     * @return dayForWeek 判断结果<br>
     */
    public static int dayForWeek(Date d)
    {
        
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(d);
        
        int week = calendar.get(Calendar.DAY_OF_WEEK);
        week = week - 1;
        if (week == 0)
            week = 7;
        return week;
        
    }
    
    @SuppressWarnings("deprecation")
    public static String getWelMsg(Date d)
    {
        int curHour = d.getHours();
        if (curHour > 5 && curHour < 12)
        {
            return AM;
        }
        if ((curHour > 11 && curHour < 18))
        {
            return PM;
        }
        return NIGHT;
    }
    
    /**
     * 获取传入时间内的后几个月
     * <br>
     * 
     * @param date 传入时间,n月份
     *            修要判断的时间<br>
     * @return Date 当前月后几个月 <br>
     */
    public static Date getNextDateByMonth(Date date, int n)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.MONTH, n);
        return calendar.getTime();
        
    }
    
}
