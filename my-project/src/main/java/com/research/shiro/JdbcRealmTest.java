package com.research.shiro;

import com.alibaba.druid.pool.DruidDataSource;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.mgt.DefaultSecurityManager;
import org.apache.shiro.realm.jdbc.JdbcRealm;
import org.apache.shiro.subject.Subject;
import org.junit.Test;

public class JdbcRealmTest {

    //数据源
    DruidDataSource dataSource = new DruidDataSource();
    {
        dataSource.setUrl("jdbc:mysql://39.106.63.239:13306/dbgirl");
        dataSource.setUsername("root");
        dataSource.setPassword("riLI@19921121");
    }
    @Test
    public void  testAuthentication(){
        JdbcRealm jdbcRealm = new JdbcRealm();
        jdbcRealm.setDataSource(dataSource);
        //开启权限查询
        jdbcRealm.setPermissionsLookupEnabled(true);

        String sql = "SELECT password FROM userbasicsinfo WHERE userName = ?";
        //认证的sql查询使用我们自己的sql查询
        jdbcRealm.setAuthenticationQuery(sql);

        //查询权限
        String roleSql = "SELECT role_name FROM user_role WHERE user_name = ?";
        jdbcRealm.setUserRolesQuery(roleSql);

        //查询角色
        String perSql = "SELECT permission FROM permission WHERE role_name=?";
        jdbcRealm.setPermissionsQuery(perSql);

        //1.构建SecuityManager环境
        DefaultSecurityManager defaultSecurityManager = new DefaultSecurityManager();
        defaultSecurityManager.setRealm(jdbcRealm);

        //2.主体提交认证请求
        SecurityUtils.setSecurityManager(defaultSecurityManager);
        Subject subject = SecurityUtils.getSubject();

        //登录
        UsernamePasswordToken token = new UsernamePasswordToken("sun","123456");
        subject.login(token);

        //true为登录成功
        System.out.println("isAuthenticated:"+subject.isAuthenticated());

        //验证角色
        subject.checkRole("admin");
        //验证权限
        subject.checkPermission("select");
    }
}
