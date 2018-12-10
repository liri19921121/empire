/*
 * 文 件 名:  RingEquip.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月4日
 */
package com.research.designPattern.decoratorPattern;

/**
 * 戒指
 * 攻击力 5
 * 
 * @author   sun
 * @version  [版本号, 2018年7月4日]
 */
public class RingEquip implements IEquip
{
    
    @Override
    public int caculateAttack()
    {
        return 5;
    }
    
    @Override
    public String description()
    {
        return "圣战戒指";
    }
    
}