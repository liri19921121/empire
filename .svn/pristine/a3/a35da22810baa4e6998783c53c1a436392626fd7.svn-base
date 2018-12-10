/*
 * 文 件 名:  Test.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月4日
 */
package com.research.designPattern.decoratorPattern;

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
        // 一个镶嵌1颗红宝石，1颗蓝宝石的靴子
        System.out.println(" 一个镶嵌2颗红宝石，1颗蓝宝石的靴子");
        IEquip equip = new RedGemDecorator(new BlueGemDecorator(new ShoeEquip()));
        System.out.println("攻击力  : " + equip.caculateAttack());
        System.out.println("描述 :" + equip.description());
        System.out.println("-------");
        // 一个镶嵌1颗红宝石，1颗蓝宝石的武器
        System.out.println(" 一个镶嵌1颗红宝石，1颗蓝宝石,1颗黄宝石的武器");
        equip = new RedGemDecorator(new BlueGemDecorator(new YellowGemDecorator(new ArmEquip())));
        System.out.println("攻击力  : " + equip.caculateAttack());
        System.out.println("描述 :" + equip.description());
        System.out.println("-------");
    }
}
