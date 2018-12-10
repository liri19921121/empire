/*
 * 文 件 名:  IEquip.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月4日
 */
package com.research.designPattern.decoratorPattern;

/**
 * 装备的接口
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月4日]
 */
public interface IEquip
{
    /**
     * 计算攻击力
     * 
     * @return
     */
    public int caculateAttack();
    
    /**
     * 装备的描述
     * 
     * @return
     */
    public String description();
}
