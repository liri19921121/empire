/*
 * 文 件 名:  ObjectFor3D.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月3日
 */
package com.research.designPattern.observerPattern;

import java.util.ArrayList;
import java.util.List;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月3日]
 */
public class ObjectFor3D implements Subject
{
    
    private List<Observer> observers = new ArrayList<Observer>();
    
    /**
     * 3D彩票的号码
     */
    private String msg;
    
    @Override
    public void registerObserver(Observer observer)
    {
        observers.add(observer);
    }
    
    @Override
    public void removeObserver(Observer observer)
    {
        int index = observers.indexOf(observer);
        if (index >= 0)
        {
            observers.remove(index);
        }
    }
    
    @Override
    public void notifyObservers()
    {
        for (Observer observer : observers)
        {
            observer.update(msg);
        }
    }
    
    /**
     * 主题更新消息
     * 
     * @param msg
     */
    public void setMsg(String msg)
    {
        this.msg = msg;
        
        notifyObservers();
    }
    
}
