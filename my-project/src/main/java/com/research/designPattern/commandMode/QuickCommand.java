/*
 * 文 件 名:  QuickCommand.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月4日
 */
package com.research.designPattern.commandMode;

/**
 * 定义一个命令，可以干一系列的事情
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月4日]
 */
public class QuickCommand implements Command
{
    private Command[] commands;
    
    public QuickCommand(Command[] commands)
    {
        this.commands = commands;
    }
    
    @Override
    public void execute()
    {
        for (int i = 0; i < commands.length; i++)
        {
            commands[i].execute();
        }
    }
    
}
