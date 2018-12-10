/*
 * 文 件 名:  DoorOffCommond.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月4日
 */
package com.research.designPattern.commandMode;

/**
 * 关门命令
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月4日]
 */
public class DoorOffCommond implements Command
{
    private Door door;
    
    public DoorOffCommond(Door door)
    {
        this.door = door;
    }
    
    @Override
    public void execute()
    {
        door.close();
    }
}
