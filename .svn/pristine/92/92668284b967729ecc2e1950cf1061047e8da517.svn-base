package com.research.wx.config;

import com.research.wx.sdk.IWXPayDomain;
import com.research.wx.sdk.WXPayConfig;
import com.research.wx.test.WXPayDomainSimpleImpl;
import com.research.wx.util.WeChat_Var;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

public class WXPayConfigImpl extends WXPayConfig
{
    
    private byte[] certData;
    
    private static WXPayConfigImpl INSTANCE;
    
    private WXPayConfigImpl()
        throws Exception
    {
        //证书地址
        //String certPath = "D://CERT/common/apiclient_cert.p12";
        String certPath = WeChat_Var.getKeyPath();
        File file = new File(certPath);
        InputStream certStream = new FileInputStream(file);
        this.certData = new byte[(int)file.length()];
        certStream.read(this.certData);
        certStream.close();
    }
    
    public static WXPayConfigImpl getInstance()
        throws Exception
    {
        if (INSTANCE == null)
        {
            synchronized (WXPayConfigImpl.class)
            {
                if (INSTANCE == null)
                {
                    INSTANCE = new WXPayConfigImpl();
                }
            }
        }
        return INSTANCE;
    }
    
    public String getAppID()
    {
        return WeChat_Var.getAppId();
    }
    
    public String getMchID()
    {
        return WeChat_Var.getMchId();
    }
    
    public String getKey()
    {
        return WeChat_Var.getSignKey();
    }
    
    public InputStream getCertStream()
    {
        ByteArrayInputStream certBis;
        certBis = new ByteArrayInputStream(this.certData);
        return certBis;
    }
    
    public int getHttpConnectTimeoutMs()
    {
        return 2000;
    }
    
    public int getHttpReadTimeoutMs()
    {
        return 10000;
    }
    
    public IWXPayDomain getWXPayDomain()
    {
        return WXPayDomainSimpleImpl.instance();
    }
    
    public String getPrimaryDomain()
    {
        return "api.mch.weixin.qq.com";
    }
    
    public String getAlternateDomain()
    {
        return "api2.mch.weixin.qq.com";
    }
    
    @Override
    public int getReportWorkerNum()
    {
        return 1;
    }
    
    @Override
    public int getReportBatchSize()
    {
        return 2;
    }
}
