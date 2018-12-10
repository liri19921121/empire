package com.research.shiro;

import com.research.shiro.realm.CustomRealm;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.mgt.DefaultSecurityManager;
import org.apache.shiro.realm.jdbc.JdbcRealm;
import org.apache.shiro.subject.Subject;
import org.junit.Test;

/***
 *自定义realm
 */
public class CustomRealTest {

    @Test
    public void testAuthentication() {
        //自定义realm
        CustomRealm customRealm = new CustomRealm();

        //1.构建SecuityManager环境
        DefaultSecurityManager defaultSecurityManager = new DefaultSecurityManager();
        defaultSecurityManager.setRealm(customRealm);

        //************加密*******************
        HashedCredentialsMatcher matcher = new HashedCredentialsMatcher();
        matcher.setHashAlgorithmName("md5");
        //加密一次
        matcher.setHashIterations(1);
        customRealm.setCredentialsMatcher(matcher);
        //***********************************

        //2.主体提交认证请求
        SecurityUtils.setSecurityManager(defaultSecurityManager);
        Subject subject = SecurityUtils.getSubject();

        //登录
        UsernamePasswordToken token = new UsernamePasswordToken("sun", "123456");
        subject.login(token);

        //true为登录成功
        System.out.println("isAuthenticated:" + subject.isAuthenticated());

        subject.checkRole("admin");
        subject.checkPermissions("add", "select");
    }
}
