/*
 * 文 件 名:  AsynchronousCall.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年6月27日
 */
package com.common;

import org.springframework.stereotype.Component;

import java.util.Random;

/**
 * 异步调用
 * 创建三个处理函数分别模拟三个执行任务的操作，操作消耗时间随机取（10秒内）
 * 
 * @author   sun
 * @version  [版本号, 2018年6月27日]
 */
@Component
public class AsynchronousCallOne
{
    public static Random random = new Random();
    
    public void doTaskOne()
        throws Exception
    {
        System.out.println("开始做任务一");
        long start = System.currentTimeMillis();
        Thread.sleep(random.nextInt(10000));
        long end = System.currentTimeMillis();
        System.out.println("完成任务一，耗时：" + (end - start) + "毫秒");
    }
    
    public void doTaskTwo()
        throws Exception
    {
        System.out.println("开始做任务二");
        long start = System.currentTimeMillis();
        Thread.sleep(random.nextInt(10000));
        long end = System.currentTimeMillis();
        System.out.println("完成任务二，耗时：" + (end - start) + "毫秒");
    }
    
    public void doTaskThree()
        throws Exception
    {
        System.out.println("开始做任务三");
        long start = System.currentTimeMillis();
        Thread.sleep(random.nextInt(10000));
        long end = System.currentTimeMillis();
        System.out.println("完成任务三，耗时：" + (end - start) + "毫秒");
    }
    
}
