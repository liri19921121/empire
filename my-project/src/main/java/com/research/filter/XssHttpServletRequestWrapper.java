/*
 * 文 件 名:  XssHttpServletRequestWrapper.java
 * 版    权:  深圳钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  suwei
 * 修改时间:  2017年9月1日
 */
package com.research.filter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;

/**
 * XSS请求装饰器，完成具体的请求过滤操作
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年2月25日]
 */
public class XssHttpServletRequestWrapper extends HttpServletRequestWrapper
{
    HttpServletRequest orgRequest = null;
    
    // SQL关键字
    /*public static final String[] SQL_KEYS =
        {"%", "select", "insert", "delete", "from", "count\\(", "drop table", "update", "truncate", "asc\\(", "mid\\(",
            "char\\(", "xp_cmdshell", "exec", "master", "netlocalgroup administrators", "net user", "or", "and"};*/
    
    public static final String SQL_KEYS =
        "exec |execute |insert |select |delete |update |drop |chr |mid |master |truncate |char |declare |sitename |net user |xp_cmdshell|like '|create |drop |table |from |grant |group_concat|column_name|information_schema.columns|table_schema|union |where |or |"
            + "EXEC |EXECUTE |INSERT |SELECT |DELETE |UPDATE |DROP |CHR |MID |MASTER |TRUNCATE |CHAR |DECLARE |SITENAME |NET USER|XP_CMDSHELL|LIKE '|CREATE |DROP |TABLE |FROM |GRANT |GROUP_CONCAT|COLUMN_NAME|INFORMATION_SCHEMA.COLUMNS|TABLE_SCHEMA|UNION |WHERE |COUNT |OR ";
    
    public XssHttpServletRequestWrapper(HttpServletRequest request)
    {
        super(request);
        orgRequest = request;
    }
    
    /**
     * 覆盖getParameter方法，将参数名和参数值都做xss过滤。<br/>
     */
    @Override
    public String getParameter(String name)
    {
        String value = super.getParameter(xssEncode(name));
        if (value != null)
        {
            value = xssEncode(value);
        }
        return value;
    }
    
    @Override
    public String[] getParameterValues(String name)
    {
        // 返回值之前 先进行过滤
        String[] values = super.getParameterValues(name);
        if (values != null)
        {
            for (int i = 0; i < values.length; i++)
            {
                values[i] = xssEncode(values[i]);
            }
        }
        return values;
    }
    
    @Override
    public Map<String, String[]> getParameterMap()
    {
        HashMap<String, String[]> paramMap = (HashMap<String, String[]>)super.getParameterMap();
        paramMap = (HashMap<String, String[]>)paramMap.clone();
        
        for (Iterator iterator = paramMap.entrySet().iterator(); iterator.hasNext();)
        {
            Map.Entry<String, String[]> entry = (Map.Entry<String, String[]>)iterator.next();
            String[] values = entry.getValue();
            for (int i = 0; i < values.length; i++)
            {
                if (values[i] instanceof String)
                {
                    values[i] = xssEncode(values[i]);
                }
            }
            entry.setValue(values);
        }
        return paramMap;
    }
    
    /**
     * 覆盖getHeader方法，将参数名和参数值都做xss过滤。<br/>
     * 如果需要获得原始的值，则通过super.getHeaders(name)来获取<br/>
     * getHeaderNames 也可能需要覆盖
     */
    /* @Override
    public String getHeader(String name)
    {
        String value = super.getHeader(xssEncode(name));
        if (value != null)
        {
            value = xssEncode(value);
        }
        return value;
    }*/
    
    /**
     * 将容易引起xss漏洞的半角字符直接替换成全角字符
     *
     * @param s
     * @return
     */
    private static String xssEncode(String s)
    {
        if (s == null || s.isEmpty())
        {
            return s;
        }
        else
        {
            s = stripXSSAndSql(s);
        }
        StringBuilder sb = new StringBuilder(s.length() + 16);
        for (int i = 0; i < s.length(); i++)
        {
            char c = s.charAt(i);
            switch (c)
            {
                case '>':
                    sb.append('＞');// 全角大于号
                    break;
                case '<':
                    sb.append('＜');// 全角小于号
                    break;
                case '\'':
                    sb.append('‘');// 全角单引号
                    break;
                case '\"':
                    sb.append('“');// 全角双引号
                    break;
                case '&':
                    sb.append('＆');// 全角
                    break;
                case '\\':
                    sb.append('＼');// 全角斜线
                    break;
                case '#':
                    sb.append('＃');// 全角井号
                    break;
                case '%': // < 字符的 URL 编码形式表示的 ASCII 字符（十六进制格式） 是: %3c
                    processUrlEncoder(sb, s, i);
                    break;
                default:
                    sb.append(c);
                    break;
            }
        }
        return s;
    }
    
    public static void processUrlEncoder(StringBuilder sb, String s, int index)
    {
        if (s.length() >= index + 2)
        {
            if (s.charAt(index + 1) == '3' && (s.charAt(index + 2) == 'c' || s.charAt(index + 2) == 'C'))
            { // %3c, %3C
                sb.append('＜');
                return;
            }
            if (s.charAt(index + 1) == '6' && s.charAt(index + 2) == '0')
            { // %3c (0x3c=60)
                sb.append('＜');
                return;
            }
            if (s.charAt(index + 1) == '3' && (s.charAt(index + 2) == 'e' || s.charAt(index + 2) == 'E'))
            { // %3e, %3E
                sb.append('＞');
                return;
            }
            if (s.charAt(index + 1) == '6' && s.charAt(index + 2) == '2')
            { // %3e (0x3e=62)
                sb.append('＞');
                return;
            }
        }
        sb.append(s.charAt(index));
    }
    
    /**
     * 获取最原始的request
     *
     * @return
     */
    public HttpServletRequest getOrgRequest()
    {
        return orgRequest;
    }
    
    /**
     * 获取最原始的request的静态方法
     *
     * @return
     */
    public static HttpServletRequest getOrgRequest(HttpServletRequest req)
    {
        if (req instanceof XssHttpServletRequestWrapper)
        {
            return ((XssHttpServletRequestWrapper)req).getOrgRequest();
        }
        return req;
    }
    
    /** 
     *  
     * 防止xss跨脚本攻击（替换，根据实际情况调整） 
     */
    public static String stripXSSAndSql(String value)
    {
        if (value != null)
        {
            // Avoid anything between script tags  
            Pattern scriptPattern = Pattern.compile(
                "<[\r\n| | ]*script[\r\n| | ]*>(.*?)</[\r\n| | ]*script[\r\n| | ]*>", Pattern.CASE_INSENSITIVE);
            value = scriptPattern.matcher(value).replaceAll("");
            
            // Avoid anything in a src="http://www.yihaomen.com/article/java/..." type of e-xpression  
            scriptPattern = Pattern.compile("src[\r\n| | ]*=[\r\n| | ]*[\\\"|\\\'](.*?)[\\\"|\\\']",
                Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
            value = scriptPattern.matcher(value).replaceAll("");
            
            // Remove any lonesome </script> tag  
            scriptPattern = Pattern.compile("</[\r\n| | ]*script[\r\n| | ]*>", Pattern.CASE_INSENSITIVE);
            value = scriptPattern.matcher(value).replaceAll("");
            
            // Remove any lonesome <script ...> tag  
            scriptPattern = Pattern.compile("<[\r\n| | ]*script(.*?)>",
                Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
            value = scriptPattern.matcher(value).replaceAll("");
            
            // Remove any lonesome <img ...> tag  
            scriptPattern =
                Pattern.compile("<[\r\n| | ]*img(.*?)>", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
            value = scriptPattern.matcher(value).replaceAll("");
            
            // Remove any lonesome <iframe ...> tag  
            scriptPattern = Pattern.compile("<[\r\n| | ]*iframe(.*?)>",
                Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
            value = scriptPattern.matcher(value).replaceAll("");
            
            // Avoid eval(...) expressions  
            scriptPattern =
                Pattern.compile("eval\\((.*?)\\)", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
            value = scriptPattern.matcher(value).replaceAll("");
            
            // Avoid e-xpression(...) expressions  
            scriptPattern = Pattern.compile("e-xpression\\((.*?)\\)",
                Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
            value = scriptPattern.matcher(value).replaceAll("");
            
            // Avoid javascript:... expressions  
            scriptPattern = Pattern.compile("javascript[\r\n| | ]*:[\r\n| | ]*", Pattern.CASE_INSENSITIVE);
            value = scriptPattern.matcher(value).replaceAll("");
            
            // Avoid vbscript:... expressions  
            scriptPattern = Pattern.compile("vbscript[\r\n| | ]*:[\r\n| | ]*", Pattern.CASE_INSENSITIVE);
            value = scriptPattern.matcher(value).replaceAll("");
            
            // Avoid onload= expressions  
            scriptPattern =
                Pattern.compile("onload(.*?)=", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
            value = scriptPattern.matcher(value).replaceAll("");
        }
        
        final String[] keys = SQL_KEYS.split("\\|");
        
        //预防SQL盲注
        for (int i = 0; i < keys.length; i++)
        {
            value = value.replace(keys[i].toString(), "");
        }
        
        return value;
    }
    
    public static void main(String[] args)
    {
        String value = "<src='null' select=sele onmouseover='alert(1)'>";
        
        System.out.println(xssEncode(value));
    }
}
