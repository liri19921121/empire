/*
 * 文 件 名:  Validate.java
 * 版    权:  深圳钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  suwei
 * 修改时间:  2017年7月4日
 */
package come.base;

import java.util.Collection;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author  suwei
 * @version  [版本号, 2017年7月4日]
 */
public class Validate
{
    public Validate()
    {
    }
    
    public static boolean emptyStringValidate(String str)
    {
        return str != null && str.trim().length() > 0;
    }
    
    public static boolean specialStringValidate1(String str)
    {
        return str != null && str.indexOf("'") == -1 && str.indexOf("\"") == -1 && str.indexOf(" ") == -1
            && str.indexOf(";") == -1;
    }
    
    public static boolean specialStringValidate2(String str)
    {
        return specialStringValidate1(str) && !str.equals("");
    }
    
    public static boolean specialStringValidate3(Object obj)
    {
        return obj != null && specialStringValidate2(obj.toString());
    }
    
    public static boolean emptyCollectionValidate(Collection collection)
    {
        return collection != null && collection.size() > 0;
    }
    
    public static boolean strictEmptyCollectionValidate(Collection collection)
    {
        if (emptyCollectionValidate(collection))
        {
            Object obj = collection.iterator().next();
            if (obj != null && !obj.toString().equals(""))
                return true;
        }
        return false;
    }
    
    public static boolean emptyArrayValidate(Object objs[])
    {
        return objs != null && objs.length > 0;
    }
    
    public static boolean strictEmptyArrayValidate(Object objs[])
    {
        return emptyArrayValidate(objs) && objs[0] != null && !objs[0].toString().equals("");
    }
    
    public static boolean jsonString(String jsonString)
    {
        return jsonString != null && !jsonString.equals("") && !jsonString.equalsIgnoreCase("null")
            && jsonString.indexOf(":") != -1 && jsonString.indexOf("{") == 0
            && jsonString.lastIndexOf("}") == jsonString.length() - 1;
    }
}
