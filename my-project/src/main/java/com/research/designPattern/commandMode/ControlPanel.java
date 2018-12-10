/*
 * 文 件 名:  ControlPanel.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月4日
 */
package com.research.designPattern.commandMode;

/**
 * 控制器面板，一共有9个按钮
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月4日]
 */
public class ControlPanel
{
    private static final int CONTROL_SIZE = 9;
    
    private Command[] commands;
    
    public ControlPanel()
    {
        commands = new Command[CONTROL_SIZE];
        /**
         * 初始化所有按钮指向空对象
         */
        for (int i = 0; i < CONTROL_SIZE; i++)
        {
            commands[i] = new NoCommand();
        }
    }
    
    /**
     * 设置每个按钮对应的命令
     * @param index
     * @param command
     */
    public void setCommand(int index, Command command)
    {
        commands[index] = command;
    }
    
    /**
     * 模拟点击按钮
     * @param index
     */
    public void keyPressed(int index)
    {
        System.out.print(index + "按钮按下：");
        commands[index].execute();
    }
    
}
