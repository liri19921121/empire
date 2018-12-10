/*
 * 文 件 名:  Count.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年3月6日
 */
package com.research;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年3月6日]
 */
public class Count
{
    private int num;
    
    public void count()
    {
        for (int i = 1; i <= 10; i++)
        {
            num += i;
        }
        System.out.println(Thread.currentThread().getName() + "-" + num);
    }
}
