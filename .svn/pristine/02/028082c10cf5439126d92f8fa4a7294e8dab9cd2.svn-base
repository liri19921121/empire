/*
 * 文 件 名:  SingletonSlacker.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月3日
 */
package com.research.designPattern.singletonMode;

/**
 * 懒汉模式
 * 线程安全，效率低不推荐使用
 * @author   sun
 * @version  [版本号, 2018年7月3日]
 */
public class SingletonSlacker
{
    private static SingletonSlacker instance = null;
    
    private SingletonSlacker()
    {
    };
    
    //一定要注意线程安全
    public static synchronized SingletonSlacker getInstance()
    {
        
        if (instance == null)
        {
            instance = new SingletonSlacker();
        }
        return instance;
    }
    
    /**
     * 懒汉式双重校验锁[推荐用]
     * 懒汉式变种，属于懒汉式中最好的写法，保证了：延迟加载和线程安全
     * Double-Check概念对于多线程开发者来说不会陌生，如代码中所示，我们进行了两次if (instance== null)检查，这样就可以保    
     * 证线程安全了。这样，实例化代码只用执行一次，后面再次访问时，判断if (instance== null)，直接return实例化对象。
     */
    /*    private static Singleton SingletonSlacker = null;
    
    private SingletonSlacker()
    {
    };
    
    public static SingletonSlacker getInstance()
    {
        if (instance == null)
        {
            synchronized (SingletonSlacker.class)
            {
                if (instance == null)
                {
                    instance = new SingletonSlacker();
                }
            }
        }
        return instance;
    }*/
    
}
