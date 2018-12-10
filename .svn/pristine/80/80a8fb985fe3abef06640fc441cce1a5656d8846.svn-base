/*
 * 文 件 名:  Test.java
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
public class Test
{
    public static void main(String[] args)
    {
        Role roleA = new RoleA("A");
        roleA.setAttackBehavior(new AttackJY())//
            .setDefendBehavior(new DefendTBS())//
            .setDisplayBehavior(new DisplayA())//
            .setRunBehavior(new RunJCTQ());
        System.out.println("创造角色" + roleA.name + "属性:");
        roleA.run();
        roleA.attack();
        roleA.defend();
        roleA.display();
        System.out.println();
        
        Role roleB = new RoleA("B");
        roleB.setAttackBehavior(new AttackXLSBZ())//
            .setDefendBehavior(new DefendJZZ())//
            .setDisplayBehavior(new DisplayB())//
            .setRunBehavior(new RunYWD());
        System.out.println("创造角色" + roleA.name + "属性:");
        roleB.run();
        roleB.attack();
        roleB.defend();
        roleB.display();
        System.out.println();
        
        Role roleC = new RoleA("C");
        roleC.setAttackBehavior(new AttackXLSBZ())//
            .setDefendBehavior(new DefendTBS())//
            .setDisplayBehavior(new DisplayB())//
            .setRunBehavior(new RunJCTQ());
        System.out.println("创造角色" + roleA.name + "属性:");
        roleC.run();
        roleC.attack();
        roleC.defend();
        roleC.display();
    }
    
}
