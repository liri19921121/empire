package com.research.wx.util;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import java.util.*;

public class XmlUtil
{
    public static void main(String[] args)
    {
        String xml =
            "<xml><a><b>测试</b><c>测试2</c></a><appid>wx2421b1c4370ec43b</appid><attach>支付测试</attach><body>JSAPI支付测试</body><mch_id>10000100</mch_id><detail><![CDATA[{ 'goods_detail':[ { 'goods_id':'iphone6s_16G', 'wxpay_goods_id':'1001', 'goods_name':'iPhone6s 16G', 'quantity':1, 'price':528800, 'goods_category':'123456', 'body':'苹果手机' }, { 'goods_id':'iphone6s_32G', 'wxpay_goods_id':'1002', 'goods_name':'iPhone6s 32G', 'quantity':1, 'price':608800, 'goods_category':'123789', 'body':'苹果手机' } ] }]]></detail><nonce_str>1add1a30ac87aa2db72f57a2375d8fec</nonce_str><notify_url>http://wxpay.wxutil.com/pub_v2/pay/notify.v2.php</notify_url><openid>oUpF8uMuAJO_M2pxb1Q9zNjWeS6o</openid><out_trade_no>1415659990</out_trade_no><spbill_create_ip>14.23.150.211</spbill_create_ip><total_fee>1</total_fee><trade_type>JSAPI</trade_type><sign>0CB01533B8C1EF103065174F50BCA001</sign></xml>";
        System.out.println(xmlToMap(xml).get("appid"));
        System.out.println(xmlToMap(xml).get("body"));
        System.out.println(xmlToMap(xml).get("c"));
        System.out.println(xmlToMap(xml).toString());
        
    }
    
    // xml转map
    public static Map xmlToMap(String xml)
    {
        /*引入
        <dependency>
          <groupId>dom4j</groupId>
          <artifactId>dom4j</artifactId>
          <version>1.1</version>
        </dependency>*/
        try
        {
            Map map = new HashMap();
            Document document = DocumentHelper.parseText(xml);
            //获取根节点元素对象  
            Element nodeElement = document.getRootElement();
            listNodes(nodeElement, map);
            return map;
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return null;
    }
    
    //遍历当前节点下的所有节点  
    public static void listNodes(Element node, Map map)
    {
        if (!(node.getTextTrim().equals("")))
        {
            map.put(node.getName(), node.getText());
        }
        //同时迭代当前节点下面的所有子节点 ,使用递归  
        Iterator<Element> iterator = node.elementIterator();
        while (iterator.hasNext())
        {
            Element e = iterator.next();
            listNodes(e, map);
        }
    }
    
    //map转xml
    public static String mapToXML(Map map)
    {
        StringBuffer sb = new StringBuffer();
        sb.append("<xml>");
        mapToXMLTest2(map, sb);
        sb.append("</xml>");
        try
        {
            return sb.toString();
        }
        catch (Exception e)
        {
        }
        return null;
    }
    
    private static void mapToXMLTest2(Map map, StringBuffer sb)
    {
        Set set = map.keySet();
        for (Iterator it = set.iterator(); it.hasNext();)
        {
            String key = (String)it.next();
            Object value = map.get(key);
            if (null == value)
                value = "";
            if (value.getClass().getName().equals("java.util.ArrayList"))
            {
                ArrayList list = (ArrayList)map.get(key);
                sb.append("<" + key + ">");
                for (int i = 0; i < list.size(); i++)
                {
                    HashMap hm = (HashMap)list.get(i);
                    mapToXMLTest2(hm, sb);
                }
                sb.append("</" + key + ">");
                
            }
            else
            {
                if (value instanceof HashMap)
                {
                    sb.append("<" + key + ">");
                    mapToXMLTest2((HashMap)value, sb);
                    sb.append("</" + key + ">");
                }
                else
                {
                    sb.append("<" + key + ">" + value + "</" + key + ">");
                }
                
            }
        }
    }
}