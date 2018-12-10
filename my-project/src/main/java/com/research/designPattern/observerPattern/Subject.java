/*
 * 文 件 名:  Subject.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月3日
 */
package com.research.designPattern.observerPattern;

/**
 * 主题接口，所有的主题必须实现此接口
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月3日]
 */
public interface Subject
{
    /**
     * 注册一个观察着
     * 
     * @param observer
     */
    public void registerObserver(Observer observer);
    
    /**
     * 移除一个观察者
     * 
     * @param observer
     */
    public void removeObserver(Observer observer);
    
    /**
     * 通知所有的观察着
     */
    public void notifyObservers();
}
