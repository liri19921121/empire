/*
 * 文 件 名:  HelloWorld.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年4月16日
 */
package com.research;

import java.util.Random;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年4月16日]
 */

//                           _ooOoo_
//                           o8o
//                           88" . "88
//                           ( -_- )
//                            O\ = /O
//                        ____/`'\____
//                      .   ' \\ // `.
//                       / \\ : // \
//                     / _ -:- - \
//                         \\\ - ///  
//                      \_ ''\/''  
//                      \ .-\__ `-` ___/-. /
//                   ___`. .' /--.--\ `. . __
//                ."" '< `.___\_<>_/___.' >'"".
//                 : `- \`.;`\ _ /`;.`/ - ` :  
//                 \ \ `-. \_ __\ /__ _/ .-` / /
//         ======`-.____`-.___\_____/___.-`____.-'======
//                            `=='
//
//         .............................................
//                  佛祖镇楼                  BUG辟易
//          佛曰:
//                  写字楼里写字间，写字间里程序员；
//                  程序人员写程序，又拿程序换酒钱。
//                  酒醒只在网上坐，酒醉还来网下眠；
//                  酒醉酒醒日复日，网上网下年复年。
//                  但愿老死电脑间，不愿鞠躬老板前；
//                  奔驰宝马贵者趣，公交自行程序员。
//                  别人笑我忒疯癫，我笑自己命太贱；
//                  不见满街漂亮妹，哪个归得程序员？
public class HelloWorld
{
    public static void main(String... args)
    {
        System.out.println(randomString(-229985452) + ' ' + randomString(-147909649));
    }
    
    public static String randomString(int seed)
    {
        Random rand = new Random(seed);
        StringBuilder sb = new StringBuilder();
        while (true)
        {
            int n = rand.nextInt(27);
            if (n == 0)
                break;
            sb.append((char)('`' + n));
        }
        return sb.toString();
    }
    
}
