/*
 * 文 件 名:  AttackJY.java
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
public class AttackJY implements IAttackBehavior
{
    
    @Override
    public void attack()
    {
        System.out.println("赋予攻击类技能：九阳神功！");
    }
    
}
