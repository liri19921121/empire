/*
 * 文 件 名:  AsynchronousCallTest.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年6月27日
 */
package com;

import com.Application;
import com.common.AsynchronousCallOne;
import com.common.AsynchronousCallTwo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.concurrent.Future;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年6月27日]
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = Application.class)
public class AsynchronousCallTest
{
    @Autowired
    private AsynchronousCallOne asynchronousCallOne;
    
    @Autowired
    private AsynchronousCallTwo asynchronousCallTwo;
    
    @Test
    public void test()
        throws Exception
    {
        asynchronousCallOne.doTaskOne();
        asynchronousCallOne.doTaskTwo();
        asynchronousCallOne.doTaskThree();
    }
    
    @Test
    public void test2()
        throws Exception
    {
        asynchronousCallTwo.doTaskOne();
        asynchronousCallTwo.doTaskTwo();
        asynchronousCallTwo.doTaskThree();
    }
    
    /***
     * 在测试用例一开始记录开始时间
     * 在调用三个异步函数的时候，返回Future<String>类型的结果对象
     * 在调用完三个异步函数之后，开启一个循环，根据返回的Future<String>对象来判断三个异步函数是否都结束了。若都结束，就结束循环；若没有都结束，就等1秒后再判断。
     * 跳出循环之后，根据结束时间 - 开始时间，计算出三个任务并发执行的总耗时。
     */
    @Test
    public void test3()
        throws Exception
    {
        long start = System.currentTimeMillis();
        
        Future<String> task1 = asynchronousCallTwo.doTaskOnef();
        
        Future<String> task2 = asynchronousCallTwo.doTaskTwof();
        
        Future<String> task3 = asynchronousCallTwo.doTaskThreef();
        
        while (true)
        {
            if (task1.isDone() && task2.isDone() && task3.isDone())
            {
                // 三个任务都调用完成，退出循环等待
                break;
            }
            Thread.sleep(1000);
        }
        
        long end = System.currentTimeMillis();
        
        System.out.println("任务全部完成，总耗时：" + (end - start) + "毫秒");
    }
    
}
