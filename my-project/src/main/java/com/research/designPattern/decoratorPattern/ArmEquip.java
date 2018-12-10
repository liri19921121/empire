/*
 * 文 件 名:  ArmEquip.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月4日
 */
package com.research.designPattern.decoratorPattern;

/**
 * 武器
 * 攻击力20
 * 
 * @author   sun
 * @version  [版本号, 2018年7月4日]
 */
public class ArmEquip implements IEquip
{
    
    @Override
    public int caculateAttack()
    {
        return 20;
    }
    
    @Override
    public String description()
    {
        return "屠龙刀";
    }
    
}
