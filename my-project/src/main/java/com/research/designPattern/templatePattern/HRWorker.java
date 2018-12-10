/*
 * 文 件 名:  HRWorker.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月5日
 */
package com.research.designPattern.templatePattern;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月5日]
 */
public class HRWorker extends Worker
{
    
    public HRWorker(String name)
    {
        super(name);
    }
    
    @Override
    public void work()
    {
        System.out.println(name + "看简历-打电话-接电话");
    }
    
}
