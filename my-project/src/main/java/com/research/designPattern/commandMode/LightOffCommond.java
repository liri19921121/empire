/*
 * 文 件 名:  LightOffCommond.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月4日
 */
package com.research.designPattern.commandMode;

/**
 * 关闭电灯的命令
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月4日]
 */
public class LightOffCommond implements Command
{
    private Light light;
    
    public LightOffCommond(Light light)
    {
        this.light = light;
    }
    
    @Override
    public void execute()
    {
        light.off();
    }
    
}
