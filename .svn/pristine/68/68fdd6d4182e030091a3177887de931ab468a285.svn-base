/*
 * 文 件 名:  AsynchronousCallTwo.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年6月27日
 */
package com.common;

import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.AsyncResult;
import org.springframework.stereotype.Component;

import java.util.Random;
import java.util.concurrent.Future;

/**
 *上述的同步调用虽然顺利的执行完了三个任务，但是可以看到执行时间比较长，
 *若这三个任务本身之间不存在依赖关系，可以并发执行的话，同步调用在执行效率方面就比较差，
 *可以考虑通过异步调用的方式来并发执行。
 *
 *在Spring Boot中，我们只需要通过使用@Async注解就能简单的将原来的同步函数变为异步函数，
 *Task类改在为如下模式：
 * 
 * 
 * 注：为了让@Async注解能够生效，还需要在Spring Boot的主程序中配置@EnableAsync，
 *    @Async所修饰的函数不要定义为static类型，这样异步调用不会生效
 *    
 *    
 * 此时可以反复执行单元测试，您可能会遇到各种不同的结果，比如：
 * 没有任何任务相关的输出
 * 有部分任务相关的输出
 * 乱序的任务相关的输出
 * 原因是目前doTaskOne、doTaskTwo、doTaskThree三个函数的时候已经是异步执行了。
 * 主程序在异步调用之后，主程序并不会理会这三个函数是否执行完成了，由于没有其他需要执行的内容，
 * 所以程序就自动结束了，导致了不完整或是没有输出任务相关内容的情况。
 *    
 *    
 * @author   sun
 * @version  [版本号, 2018年6月27日]
 */
@Component
public class AsynchronousCallTwo
{
    public static Random random = new Random();
    
    //------------------------异步调用------------------
    @Async
    public void doTaskOne()
        throws Exception
    {
        System.out.println("开始做任务一");
        long start = System.currentTimeMillis();
        Thread.sleep(random.nextInt(10000));
        long end = System.currentTimeMillis();
        System.out.println("完成任务一，耗时：" + (end - start) + "毫秒");
    }
    
    @Async
    public void doTaskTwo()
        throws Exception
    {
        System.out.println("开始做任务二");
        long start = System.currentTimeMillis();
        Thread.sleep(random.nextInt(10000));
        long end = System.currentTimeMillis();
        System.out.println("完成任务二，耗时：" + (end - start) + "毫秒");
    }
    
    @Async
    public void doTaskThree()
        throws Exception
    {
        System.out.println("开始做任务三");
        long start = System.currentTimeMillis();
        Thread.sleep(random.nextInt(10000));
        long end = System.currentTimeMillis();
        System.out.println("完成任务三，耗时：" + (end - start) + "毫秒");
    }
    
    //--------------异步回调-------------
    /***
     * 为了让doTaskOne、doTaskTwo、doTaskThree能正常结束，
     * 假设我们需要统计一下三个任务并发执行共耗时多少，这就需要等到上述三个函数都完成调动之后记录时间
     * 并计算结果。
     * 那么我们如何判断上述三个异步调用是否已经执行完成呢？我们需要使用Future<T>来返回异步调用的结果
     */
    @Async
    public Future<String> doTaskOnef()
        throws Exception
    {
        System.out.println("开始做任务一");
        long start = System.currentTimeMillis();
        Thread.sleep(random.nextInt(10000));
        long end = System.currentTimeMillis();
        System.out.println("完成任务一，耗时：" + (end - start) + "毫秒");
        return new AsyncResult<>("任务一完成");
    }
    
    @Async
    public Future<String> doTaskTwof()
        throws Exception
    {
        System.out.println("开始做任务二");
        long start = System.currentTimeMillis();
        Thread.sleep(random.nextInt(10000));
        long end = System.currentTimeMillis();
        System.out.println("完成任务二，耗时：" + (end - start) + "毫秒");
        return new AsyncResult<>("任务二完成");
    }
    
    @Async
    public Future<String> doTaskThreef()
        throws Exception
    {
        System.out.println("开始做任务三");
        long start = System.currentTimeMillis();
        Thread.sleep(random.nextInt(10000));
        long end = System.currentTimeMillis();
        System.out.println("完成任务三，耗时：" + (end - start) + "毫秒");
        return new AsyncResult<>("任务三完成");
    }
}
