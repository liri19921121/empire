package com.research.shiro;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.mgt.DefaultSecurityManager;
import org.apache.shiro.realm.SimpleAccountRealm;
import org.apache.shiro.realm.text.IniRealm;
import org.apache.shiro.subject.Subject;
import org.junit.Before;
import org.junit.Test;

/***
 * 自定义realm，授权
 */
public class IniRealmTest {
    @Test
    public void testAuthentication(){

        //自定义realm
        IniRealm iniRealm = new IniRealm("classpath:config/shiro/user.ini");

        //1.构建SecuityManager环境
        DefaultSecurityManager defaultSecurityManager = new DefaultSecurityManager();
        defaultSecurityManager.setRealm(iniRealm);

        //2.主体提交认证请求
        SecurityUtils.setSecurityManager(defaultSecurityManager);
        Subject subject = SecurityUtils.getSubject();

        //登录
        UsernamePasswordToken token = new UsernamePasswordToken("liri","123456");
        subject.login(token);

        //true为登录成功
        System.out.println("isAuthenticated:"+subject.isAuthenticated());

        subject.checkRole("admin");
        subject.checkPermission("user:delete");
    }

}
