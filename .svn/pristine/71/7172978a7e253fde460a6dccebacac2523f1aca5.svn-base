/*
 * 文 件 名:  RoujiaMoStore.java
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
public class Test
{
    /**
     * 根据传入类型卖不同的肉夹馍
     * 
     * @param type
     * @return
     */
    public static RouJiaMo sellRouJiaMo(String type)
    {
        //准备工厂
        SimpleRouJiaMoFactroy factroy = new SimpleRouJiaMoFactroy();
        //根据不同的类型生成不同的肉夹馍
        RouJiaMo rouJiaMo = factroy.createRouJiaMo(type);
        rouJiaMo.prepare();
        rouJiaMo.fire();
        rouJiaMo.pack();
        return rouJiaMo;
    }
    
    /***
     * 定义一个创建对象的接口，让其子类自己决定实例化哪一个工厂类，工厂模式使其创建过程延迟到子类进行,主要解决接口选择的问题。
     */
    public static void main(String[] args)
    {
        /*RouJiaMo rouJiaMo = sellRouJiaMo("Suan");
        System.out.println(rouJiaMo.name + "制作完成");
        RouJiaMo rouJiaMo2 = sellRouJiaMo("Tian");
        System.out.println(rouJiaMo2.name + "制作完成");*/
        RouJiaMo rouJiaMo3 = sellRouJiaMo("La");
        System.out.println(rouJiaMo3.name + "制作完成");
    }
}
