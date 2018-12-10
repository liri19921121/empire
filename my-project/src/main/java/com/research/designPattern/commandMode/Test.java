/*
 * 文 件 名:  Test.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月4日
 */
package com.research.designPattern.commandMode;

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
        /**
         * 三个家电
         */
        Light light = new Light();
        Door door = new Door();
        Computer computer = new Computer();
        /**
         * 一个控制器，假设是我们的app主界面
         */
        ControlPanel controlPanel = new ControlPanel();
        // 为每个按钮设置功能
        controlPanel.setCommand(0, new LightOnCommond(light));
        controlPanel.setCommand(1, new LightOffCommond(light));
        controlPanel.setCommand(2, new ComputerOnCommond(computer));
        controlPanel.setCommand(3, new ComputerOffCommond(computer));
        controlPanel.setCommand(4, new DoorOnCommond(door));
        controlPanel.setCommand(5, new DoorOffCommond(door));
        
        // 模拟点击
        controlPanel.keyPressed(0);
        controlPanel.keyPressed(1);
        controlPanel.keyPressed(2);
        controlPanel.keyPressed(3);
        controlPanel.keyPressed(4);
        controlPanel.keyPressed(5);
        controlPanel.keyPressed(6);// 这个没有指定，但是不会出任何问题，我们的NoCommand的功劳
        
        // 定义一键搞定模式
        QuickCommand quickCommand = new QuickCommand(
            new Command[] {new DoorOffCommond(door), new LightOffCommond(light), new ComputerOnCommond(computer)});
        System.out.println("****点击一键搞定按钮****");
        controlPanel.setCommand(8, quickCommand);
        controlPanel.keyPressed(8);
        
    }
    
}
