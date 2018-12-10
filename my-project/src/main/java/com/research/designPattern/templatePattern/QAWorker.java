/*
 * 文 件 名:  QAWorker.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月5日
 */
package com.research.designPattern.templatePattern;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月5日]
 */
public class QAWorker extends Worker
{
    
    public QAWorker(String name)
    {
        super(name);
    }
    
    @Override
    public void work()
    {
        System.out.println(name + "写测试用例-提交bug-写测试用例");
    }
    
}
