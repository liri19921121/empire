/*
 * 文 件 名:  BlueGemDecorator.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月4日
 */
package com.research.designPattern.decoratorPattern;

/**
 * 蓝宝石装饰品
 * 每颗攻击力+5
 * 
 * @author   sun
 * @version  [版本号, 2018年7月4日]
 */
public class BlueGemDecorator implements IEquipDecorator
{
    /**
     * 每个装饰品维护一个装备
     */
    private IEquip equip;
    
    public BlueGemDecorator(IEquip equip)
    {
        this.equip = equip;
    }
    
    @Override
    public int caculateAttack()
    {
        return 5 + equip.caculateAttack();
    }
    
    @Override
    public String description()
    {
        return equip.description() + "+ 蓝宝石";
    }
    
}
