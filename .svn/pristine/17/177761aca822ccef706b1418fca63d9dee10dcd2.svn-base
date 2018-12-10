/*
 * 文 件 名:  ThreadTest.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年3月6日
 */
package com.research;

import org.springframework.stereotype.Service;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年3月6日]
 */
@Service
public class ThreadTest extends Thread
{
    public static void main(String[] args)
    {
        Runnable runnable = new Runnable()
        {
            Count count = new Count();
            
            public void run()
            {
                count.count();
            }
        };
        
        for (int i = 0; i < 10; i++)
        {
            new Thread(runnable).start();
        }
    }
}
