/*
 * 文 件 名:  Observer2.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月3日
 */
package com.research.designPattern.observerPattern;

/**
 * 模拟使用者2
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月3日]
 */
public class Observer2 implements Observer
{
    private Subject subject;
    
    public Observer2(Subject subject)
    {
        this.subject = subject;
        subject.registerObserver(this);
    }
    
    @Override
    public void update(String msg)
    {
        System.out.println("observer2 收到服务号推送消息：本期3D号码 为：" + msg + ",   说：我要告诉舍友们。");
    }
    
}
