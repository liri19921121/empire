package com.filter;

import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authz.AuthorizationFilter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/***
 * 拦截器检测权限
 */
public class RolesOrFilter extends AuthorizationFilter {

    @Override
    protected boolean isAccessAllowed(ServletRequest req,
                                      ServletResponse resp, Object object) throws Exception {
        //获得主体
        Subject subject = getSubject(req, resp);
        //配置文件中自定义的角色数组
        String[] roles = (String[]) object;
        //如果无规定用户则可以访问
        if (roles == null || roles.length == 0) {
            return true;
        }
        //当前主体有当前角色返回成功
        for (String role : roles) {
            if (subject.hasRole(role)) {
                return true;
            }
        }
        return false;
    }

}
