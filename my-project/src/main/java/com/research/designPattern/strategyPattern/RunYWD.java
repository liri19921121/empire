/*
 * 文 件 名:  RunYWD.java
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
public class RunYWD implements IRunBehavior
{
    
    @Override
    public void run()
    {
        System.out.println("赋予逃跑类技能：烟雾弹");
    }
}
