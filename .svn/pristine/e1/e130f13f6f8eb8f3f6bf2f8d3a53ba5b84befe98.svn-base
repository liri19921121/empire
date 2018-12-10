/*
 * 文 件 名:  Test.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月3日
 */
package com.research.designPattern.observerPattern;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月3日]
 */
public class Test
{
    
    /***
     * 观察者模式的定义：定义了对象之间的一对多的依赖，这样一来，当一个对象改变时，它的所有的依赖者都会收到通知并自动更新。
     * 对于定义的理解总是需要实例来解析的，如今的微信服务号相当火啊，下面就以微信服务号为背景，给大家体验一下观察者模式。
     */
    public static void main(String[] args)
    {
        //模拟一个3D的服务号
        ObjectFor3D subjectFor3d = new ObjectFor3D();
        //客户1订阅服务号
        Observer observer1 = new Observer1(subjectFor3d);
        //客户2订阅服务号
        Observer observer2 = new Observer2(subjectFor3d);
        //客户2订阅服务号
        Observer observer3 = new Observer3(subjectFor3d);
        
        subjectFor3d.setMsg("20180703的3D号码是：127");
        
    }
    
}
