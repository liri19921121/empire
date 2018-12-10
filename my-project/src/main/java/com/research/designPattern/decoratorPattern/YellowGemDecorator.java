/*
 * 文 件 名:  YellowGemDecorator.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月4日
 */
package com.research.designPattern.decoratorPattern;

/**
 * 黄宝石装饰品
 * 每颗攻击力+10
 * 
 * @author   sun
 * @version  [版本号, 2018年7月4日]
 */
public class YellowGemDecorator implements IEquipDecorator
{
    /**
     * 每个装饰品维护一个装备
     */
    private IEquip equip;
    
    public YellowGemDecorator(IEquip equip)
    {
        this.equip = equip;
    }
    
    @Override
    public int caculateAttack()
    {
        return 10 + equip.caculateAttack();
    }
    
    @Override
    public String description()
    {
        return equip.description() + "+ 黄宝石";
    }
    
}
