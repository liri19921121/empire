/*
 * 文 件 名:  Test.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月9日
 */
package com.research;

/**
 * <一句话功能简述>
 * 上述的代码，第一个方法时用了同步代码块的方式进行同步，传入的对象实例是this，表明是当前对象，
 * 当然，如果需要同步其他对象实例，也不可传入其他对象的实例；第二个方法是修饰方法的方式进行同步。
 * 因为第一个同步代码块传入的this，所以两个同步代码所需要获得的对象锁都是同一个对象锁，
 * 下面main方法时分别开启两个线程，分别调用test1和test2方法，那么两个线程都需要获得该对象锁，
 * 另一个线程必须等待。上面也给出了运行的结果可以看到：直到test2线程执行完毕，释放掉锁，test1线程才开始执行。
 * 
 * @author   sun
 * @version  [版本号, 2018年7月9日]
 */
public class synchronize
{
    public void test1()
    {
        synchronized (this)
        {
            int i = 5;
            while (i-- > 0)
            {
                System.out.println(Thread.currentThread().getName() + " : " + i);
                if (i == 3)
                {
                    try
                    {
                        this.wait();
                    }
                    catch (InterruptedException e)
                    {
                        e.printStackTrace();
                    }
                }
                try
                {
                    Thread.sleep(500);
                }
                catch (InterruptedException ie)
                {
                }
            }
        }
    }
    
    public synchronized void test2()
    {
        int i = 5;
        while (i-- > 0)
        {
            System.out.println(Thread.currentThread().getName() + " : " + i);
            try
            {
                Thread.sleep(500);
            }
            catch (InterruptedException ie)
            {
            }
            //唤醒
            if (i == 3)
            {
                this.notify();
            }
        }
    }
    
    public static void main(String[] args)
    {
        final synchronize myt2 = new synchronize();
        Thread test1 = new Thread(new Runnable()
        {
            public void run()
            {
                myt2.test1();
            }
        }, "test1");
        Thread test2 = new Thread(new Runnable()
        {
            public void run()
            {
                myt2.test2();
            }
        }, "test2");
        test1.start();
        test2.start();
        
        //         TestRunnable tr=new TestRunnable();  
        //         Thread test3=new Thread(tr);  
        //         test3.start();  
    }
    
}
