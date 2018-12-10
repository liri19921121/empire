/*
 * 文 件 名:  Test.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年3月13日
 */
package com.research.xmlToBean;

import java.util.Date;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年3月13日]
 */
public class Test
{
    public static void main(String[] args)
    {
        // 创建需要转换的对象    
        //@XmlType(propOrder = {"userId", "userName", "password", "birthday", "money",})
        User user = new User(1, "Steven", "@sun123", new Date(), 1000.0);
        System.out.println("---将对象转换成string类型的xml Start---");
        // 将对象转换成string类型的xml    
        String str = XMLUtil.convertToXml(user);
        // 输出    
        System.out.println(str);
        System.out.println("---将对象转换成string类型的xml End---");
        System.out.println("==================================华丽的分割线====================================");
        System.out.println("---将String类型的xml转换成对象 Start---");
        String a = "<?xml version='1.0' encoding='UTF-8' standalone='yes'?><User><money>1000.0</money></User>";
        User userTest = (User) XMLUtil.convertXmlStrToObject(User.class, a);
        System.out.println(userTest.getMoney());
        System.out.println(userTest.getUserId());
        System.out.println(userTest.getUserName());
        System.out.println("---将String类型的xml转换成对象 End---");
    }
}
