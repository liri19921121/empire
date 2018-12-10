/*
 * 文 件 名:  Test.java
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
public class Test
{
    public static void main(String[] args)
    {
        Mobile mobile = new Mobile();
        V5Power v5Power = new V5PowerAdapter(new V220Power());
        mobile.inputPower(v5Power);
    }
    
}
