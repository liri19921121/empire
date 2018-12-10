/*
 * 文 件 名:  SingletonEnum.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月3日
 */
package com.research.designPattern.singletonMode;

/**
 * 枚举模式，极推荐使用
 * 借助JDK1.5中添加的枚举来实现单例模式。不仅能避免多线程同步问题，而且还能防止反序列化重新创建新的对象。最安全的写法；
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月3日]
 */
public enum SingletonEnum
{
    
    instance;
    
    private SingletonEnum()
    {
        System.out.println("===");
    }
    
    public void method()
    {
    }
    
}
