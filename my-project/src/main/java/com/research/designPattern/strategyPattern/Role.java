/*
 * 文 件 名:  Role.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月4日
 */
package com.research.designPattern.strategyPattern;

/**
 * 游戏的角色超类
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月4日]
 */
public abstract class Role
{
    protected String name;
    
    protected IDefendBehavior defendBehavior;
    
    protected IDisplayBehavior displayBehavior;
    
    protected IRunBehavior runBehavior;
    
    protected IAttackBehavior attackBehavior;
    
    public Role setDefendBehavior(IDefendBehavior defendBehavior)
    {
        this.defendBehavior = defendBehavior;
        return this;
    }
    
    public Role setDisplayBehavior(IDisplayBehavior displayBehavior)
    {
        this.displayBehavior = displayBehavior;
        return this;
    }
    
    public Role setRunBehavior(IRunBehavior runBehavior)
    {
        this.runBehavior = runBehavior;
        return this;
    }
    
    public Role setAttackBehavior(IAttackBehavior attackBehavior)
    {
        this.attackBehavior = attackBehavior;
        return this;
    }
    
    protected void display()
    {
        displayBehavior.display();
    }
    
    protected void run()
    {
        runBehavior.run();
    }
    
    protected void attack()
    {
        attackBehavior.attack();
    }
    
    protected void defend()
    {
        defendBehavior.defend();
    }
    
}
