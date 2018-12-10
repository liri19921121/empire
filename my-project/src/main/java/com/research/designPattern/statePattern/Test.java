/*
 * 文 件 名:  Test.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月5日
 */
package com.research.designPattern.statePattern;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月5日]
 */
public class Test
{
    public static void main(String[] args)
    {
        VendingMachine machine = new VendingMachine(10);
        machine.insertMoney();
        machine.backMoney();
        
        System.out.println("----我要中奖----");
        
        for (int i = 0; i < 11; i++)
        {
            machine.insertMoney();
            machine.turnCrank();
        }
        
        System.out.println("-------压力测试------");
        
        machine.insertMoney();
        machine.backMoney();
        machine.backMoney();
        machine.turnCrank();// 无效操作
        machine.turnCrank();// 无效操作
        machine.backMoney();
        
    }
    
}
