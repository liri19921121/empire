/*
 * 文 件 名:  RouJiaMo.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月3日
 */
package com.research.designPattern.factoryModel.SimpleFactoryMode;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月3日]
 */
public class RouJiaMo
{
    protected String name;
    
    /**
     * 准备工作
     */
    public void prepare()
    {
        System.out.println("揉面-剁肉-完成准备工作");
    }
    
    /**
     * 使用你们的专用袋-包装
     */
    public void pack()
    {
        System.out.println("肉夹馍-专用袋-包装");
    }
    
    /**
     * 秘制设备-烘烤2分钟
     */
    public void fire()
    {
        System.out.println("肉夹馍-专用设备-烘烤");
    }
    
}
