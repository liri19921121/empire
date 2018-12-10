package com.research.shiro.realm;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;

import java.util.HashSet;
import java.util.Set;

public class CustomRealm extends AuthorizingRealm {


    //授权
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        //从主体传过来的认证信息中获取用户名
        String userName = (String) principalCollection.getPrimaryPrincipal();
        //从数据库中获取角色数据
        Set<String> roles = getRolesByUsername(userName);
        //从数据库中获取权限数据
        Set<String> permissions = getPermissionsByUsername(userName);
        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
        //设置角色
        simpleAuthorizationInfo.setRoles(roles);
        //设置权限
        simpleAuthorizationInfo.setStringPermissions(permissions);
        return simpleAuthorizationInfo;
    }

    //认证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        //从主体传过来的认证信息中获取用户名
        String userName = (String) authenticationToken.getPrincipal();
        //通过用户名到数据库中获取凭证
        String password = getPasswordByUserName(userName);
        if (password == null) {
            return null;
        }
        //realmName随便取名
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo
                ("sun",password,"customReal");
        //**************加盐**********************
        authenticationInfo.setCredentialsSalt(ByteSource.Util.bytes("liri"));
        //****************************************
        return authenticationInfo;
    }

    //模拟数据库查询密码
    private String getPasswordByUserName(String userName) {
        //123456加密后+"liri"
        return "931c8cb3c2f2580b58c326022fc346f2";
    }
    //模拟数据库查询角色数据
    private Set<String> getRolesByUsername(String userName) {
        //...
        Set<String> sets = new HashSet<String>();
        sets.add("admin");
        sets.add("user");
        return sets;
    }
    //模拟数据库查询权限数据
    private Set<String> getPermissionsByUsername(String userName) {
        //...
        Set<String> sets = new HashSet<String>();
        sets.add("select");
        sets.add("add");
        return sets;
    }

    public static void main(String[] args) {
        Md5Hash md5Hash = new Md5Hash("123456","liri");
        System.out.println(md5Hash.toString());
    }
}
