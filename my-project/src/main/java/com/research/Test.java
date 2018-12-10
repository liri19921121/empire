/*
 * 文 件 名:  Test.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月9日
 */
package com.research;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月9日]
 */
public class Test
{
    public static void main(String[] args)
    {
        /***
         * 如果字面量的值在-128到127之间，那么不会new新的Integer对象
         * 而是直接引用常量池中的Integer对象，所以上面的面试题中f1==f2的结果是true
         * 而f3==f4的结果是false。越是貌似简单的面试题其中的玄机就越多，需要面试者有相当深厚的功力。
         */
        Integer f1 = 100;
        Integer f2 = 100;
        Integer f3 = 150;
        Integer f4 = 150;
        System.out.println(f1 == f2);
        System.out.println(f3 == f4);
        
    }
}
