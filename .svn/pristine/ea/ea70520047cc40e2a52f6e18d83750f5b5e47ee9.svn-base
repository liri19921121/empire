/*
 * 文 件 名:  VendingMachine.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月5日
 */
package com.research.designPattern.statePattern;

/**
 * 自动售货机
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月5日]
 */
public class VendingMachine
{
    private State noMoneyState;
    
    private State hasMoneyState;
    
    private State soldState;
    
    private State soldOutState;
    
    private State winnerState;
    
    private int count = 0;
    
    //当前状态
    private State currentState = noMoneyState;
    
    public VendingMachine(int count)
    {
        noMoneyState = new NoMoneyState(this);
        hasMoneyState = new HasMoneyState(this);
        soldState = new SoldState(this);
        soldOutState = new SoldOutState(this);
        winnerState = new WinnerState(this);
        
        if (count > 0)
        {
            this.count = count;
            currentState = noMoneyState;
        }
    }
    
    public void insertMoney()
    {
        currentState.insertMoney();
    }
    
    public void backMoney()
    {
        currentState.backMoney();
    }
    
    public void turnCrank()
    {
        currentState.turnCrank();
        if (currentState == soldState || currentState == winnerState)
            currentState.dispense();
    }
    
    public void dispense()
    {
        System.out.println("发出一件商品...");
        if (count != 0)
        {
            count -= 1;
        }
    }
    
    public void setState(State state)
    {
        this.currentState = state;
    }
    
    /**
     * @return 返回 noMoneyState
     */
    public State getNoMoneyState()
    {
        return noMoneyState;
    }
    
    /**
     * @param 对noMoneyState进行赋值
     */
    public void setNoMoneyState(State noMoneyState)
    {
        this.noMoneyState = noMoneyState;
    }
    
    /**
     * @return 返回 hasMoneyState
     */
    public State getHasMoneyState()
    {
        return hasMoneyState;
    }
    
    /**
     * @param 对hasMoneyState进行赋值
     */
    public void setHasMoneyState(State hasMoneyState)
    {
        this.hasMoneyState = hasMoneyState;
    }
    
    /**
     * @return 返回 soldState
     */
    public State getSoldState()
    {
        return soldState;
    }
    
    /**
     * @param 对soldState进行赋值
     */
    public void setSoldState(State soldState)
    {
        this.soldState = soldState;
    }
    
    /**
     * @return 返回 soldOutState
     */
    public State getSoldOutState()
    {
        return soldOutState;
    }
    
    /**
     * @param 对soldOutState进行赋值
     */
    public void setSoldOutState(State soldOutState)
    {
        this.soldOutState = soldOutState;
    }
    
    /**
     * @return 返回 winnerState
     */
    public State getWinnerState()
    {
        return winnerState;
    }
    
    /**
     * @param 对winnerState进行赋值
     */
    public void setWinnerState(State winnerState)
    {
        this.winnerState = winnerState;
    }
    
    /**
     * @return 返回 count
     */
    public int getCount()
    {
        return count;
    }
    
    /**
     * @param 对count进行赋值
     */
    public void setCount(int count)
    {
        this.count = count;
    }
    
    /**
     * @return 返回 currentState
     */
    public State getCurrentState()
    {
        return currentState;
    }
    
    /**
     * @param 对currentState进行赋值
     */
    public void setCurrentState(State currentState)
    {
        this.currentState = currentState;
    }
    
}
