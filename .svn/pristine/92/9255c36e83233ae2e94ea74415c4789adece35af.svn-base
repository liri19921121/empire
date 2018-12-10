/*
 * 文 件 名:  Index.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年11月27日
 */
package com.research.wx.controller;

import com.research.wx.pojo.OrderDTO;
import com.research.wx.pojo.PayResponse;
import com.research.wx.sdk.WXPay;
import com.research.wx.service.WxService;
import com.research.wx.util.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author  sun
 * @version  [版本号, 2017年11月27日]
 */
@Controller
@RequestMapping("/wxPlay")
public class WxController
{
    private static final Logger log = LoggerFactory.getLogger(WxController.class);
    
    private WXPay wxpay;
    
    @Resource
    WxService wxService;
    
    @RequestMapping("/index")
    public String Index(HttpServletRequest request)
        throws Exception
    {
        //将请求信息封装成map,此处写死，正常情况应该根据前端订单生成
        Map<String, String> map = wxService.buildMap();
        //将请求信息封装成xml报文
        String reqBody = XmlUtil.mapToXML(map);
        //得到回复报文,预支付订单
        String responseBod = wxService.getResponse(reqBody);
        //将回复报文转为map
        Map payResponseMap = XmlUtil.xmlToMap(responseBod);
        System.out.println(payResponseMap);
        if (payResponseMap.get("return_code").toString().equals("SUCCESS")
            && payResponseMap.get("result_code").toString().equals("SUCCESS"))
        {
            //确定支付订单让客户去支付
            Map<String, String> respMap = wxService.getPay(payResponseMap);
            
            request.setAttribute("payResponse", respMap);
            
            //支付成功返回跳转的url地址
            request.setAttribute("returnUrl", "https://www.baidu.com");
        }
        else
        {
            System.out.println("预支付订单出错：" + payResponseMap.get("err_code_des"));
        }
        //跳转到支付页面
        return "/wx/wxplay";
    }
    
    /**
     * 微信异步通知
     */
    @RequestMapping(value = "/notify", method = RequestMethod.POST)
    public String notify(HttpServletRequest request, @RequestBody String notifyData)
    {
        
        /*支付完成后，微信会把相关支付结果和用户信息发送给商户，商户需要接收处理，并返回应答。
                对后台通知交互时，如果微信收到商户的应答不是成功或超时，微信认为通知失败，微信会通过一定的策略定期重新发起通知，尽可能提高通知的成功率，但微信不保证通知最终能成功。 （通知频率为15/15/30/180/1800/1800/1800/1800/3600，单位：秒）
                注意：同样的通知可能会多次发送给商户系统。商户系统必须能够正确处理重复的通知。
                推荐的做法是，当收到通知进行处理时，首先检查对应业务数据的状态，判断该通知是否已经处理过，如果没有处理过再进行处理，如果处理过直接返回结果成功。在对业务数据进行状态检查和处理之前，要采用数据锁进行并发控制，以避免函数重入造成的数据混乱。
                特别提醒：商户系统对于支付结果通知的内容一定要做签名验证,并校验返回的订单金额是否与商户侧的订单金额一致，防止数据泄漏导致出现“假通知”，造成资金损失。*/
        
        PayResponse payResponse = wxService.notify(notifyData);
        
        request.setAttribute("payResponse", payResponse);
        //返回给微信处理结果
        return "pay/success";
    }
    
    /**
     * 退款
     */
    public Map<String, String> refund(OrderDTO orderDTO)
    {
        HashMap<String, String> data = new HashMap<String, String>();
        data.put("out_trade_no", orderDTO.getOrderId());
        data.put("out_trade_no", orderDTO.getOrderId());
        data.put("total_fee", MoneyUtil.Yuan2Fen(orderDTO.getOrderAmount().doubleValue()).toString());
        data.put("refund_fee", MoneyUtil.Yuan2Fen(orderDTO.getOrderAmount().doubleValue()).toString());
        data.put("appid", WeChat_Var.getAppId());
        data.put("mch_id", WeChat_Var.getMchId());
        data.put("nonce_str", RandomUtil.getRandomStr());
        data.put("sign", SignUtil.sign(data, WeChat_Var.getSignKey()));
        Map<String, String> respMap = null;
        try
        {
            //返回的数据
            respMap = wxpay.refund(data);
            WXPay wxpay;
            return respMap;
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return respMap;
    }
}
