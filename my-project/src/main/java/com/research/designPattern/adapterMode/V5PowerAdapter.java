/*
 * 文 件 名:  V5PowerAdapter.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月4日
 */
package com.research.designPattern.adapterMode;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月4日]
 */
public class V5PowerAdapter implements V5Power
{
    /**
     * 组合的方式
     */
    private V220Power v220Power;
    
    public V5PowerAdapter(V220Power v220Power)
    {
        this.v220Power = v220Power;
    }
    
    @Override
    public int provideV5Power()
    {
        int power = v220Power.provideV220Power();
        //power经过各种操作-->5 
        System.out.println("适配器：将220V电压转换成5V。");
        return 5;
    }
    
}
