/*
 * 文 件 名:  SimpleRouJiaMoFactroy.java
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
public class SimpleRouJiaMoFactroy
{
    public RouJiaMo createRouJiaMo(String type)
    {
        RouJiaMo rouJiaMo = null;
        if (type.equals("Suan"))
        {
            rouJiaMo = new SuanRouJiaMo();
            
        }
        else if (type.equals("Tian"))
        {
            rouJiaMo = new TianRouJiaMo();
        }
        else if (type.equals("La"))
        {
            rouJiaMo = new LaRouJiaMo();
        }
        return rouJiaMo;
    }
    
}
