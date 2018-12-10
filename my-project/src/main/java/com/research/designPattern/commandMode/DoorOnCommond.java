/*
 * 文 件 名:  DoorOnCommond.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月4日
 */
package com.research.designPattern.commandMode;

/**
 * 开门命令
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月4日]
 */
public class DoorOnCommond implements Command
{
    private Door door;
    
    public DoorOnCommond(Door door)
    {
        this.door = door;
    }
    
    @Override
    public void execute()
    {
        door.open();
    }
}
