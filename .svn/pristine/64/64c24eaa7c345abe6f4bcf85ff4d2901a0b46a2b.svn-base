/*
 * 文 件 名:  Worker.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月5日
 */
package com.research.designPattern.templatePattern;

import java.util.Date;

/**
 * 工作超类
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月5日]
 */
public abstract class Worker
{
    protected String name;
    
    public Worker(String name)
    {
        this.name = name;
    }
    
    /**
     * 记录一天的工作
     */
    public final void workOneDay()
    {
        
        System.out.println("-----------------work start ---------------");
        enterCompany();
        computerOn();
        work();
        computerOff();
        exitCompany();
        System.out.println("-----------------work end ---------------");
        
    }
    
    /**
     * 工作
     */
    public abstract void work();
    
    /**
     * 关闭电脑
     */
    private void computerOff()
    {
        System.out.println(name + "关闭电脑");
    }
    
    /**
     * 打开电脑
     */
    private void computerOn()
    {
        System.out.println(name + "打开电脑");
    }
    
    /**
     * 进入公司
     */
    public void enterCompany()
    {
        System.out.println(name + "进入公司");
    }
    
    /**
     * 设置钩子,重写此方法可启动钩子
     */
    public boolean isNeedPrintDate()
    {
        return false;
    }
    
    /**
     * 离开公司
     */
    public void exitCompany()
    {
        if (isNeedPrintDate())
        {
            System.out.print(new Date().toLocaleString() + "-->");
        }
        System.out.println(name + "离开公司");
    }
    
}
