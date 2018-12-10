package com.research.shiro;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.mgt.DefaultSecurityManager;
import org.apache.shiro.realm.SimpleAccountRealm;
import org.apache.shiro.subject.Subject;
import org.junit.Before;
import org.junit.Test;

/***
 * 授权
 */
public class AuthorizationTest {
    //SimpleAccountRealm不支持添加权限，自定义Realm可以
    SimpleAccountRealm simpleAccountRealm = new SimpleAccountRealm();

    @Before
    public void addUser() {
        simpleAccountRealm.addAccount("liri", "123456", "admin", "user");
    }

    @Test
    public void testAuthentication() {
        //1.构建SecuityManager环境
        DefaultSecurityManager defaultSecurityManager = new DefaultSecurityManager();
        defaultSecurityManager.setRealm(simpleAccountRealm);

        //2.主体提交认证请求
        SecurityUtils.setSecurityManager(defaultSecurityManager);
        Subject subject = SecurityUtils.getSubject();

        //登录
        UsernamePasswordToken token = new UsernamePasswordToken("liri", "123456");
        subject.login(token);

        //true为登录成功
        System.out.println("isAuthenticated:" + subject.isAuthenticated());

        //用户是否具备这样的角色
        subject.checkRole("admin");
        subject.checkRoles("user", "admin");


    }
}
