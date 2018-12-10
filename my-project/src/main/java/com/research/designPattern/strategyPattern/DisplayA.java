/*
 * 文 件 名:  DisplayA.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月4日
 */
package com.research.designPattern.strategyPattern;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月4日]
 */
public class DisplayA implements IDisplayBehavior
{
    
    @Override
    public void display()
    {
        System.out.println("样子1类：美丽动人");
    }
    
}
