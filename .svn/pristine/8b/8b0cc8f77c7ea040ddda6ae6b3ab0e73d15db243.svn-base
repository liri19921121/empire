/*
 * 文 件 名:  SslUtil.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年11月28日
 */
package com.research.wx.util;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author  sun
 * @version  [版本号, 2017年11月28日]
 */
public class SslUtil
{
    
    private byte[] certData;
    
    public SslUtil()
        throws Exception
    {
        String certPath = WeChat_Var.getKeyPath();
        File file = new File(certPath);
        InputStream certStream = new FileInputStream(file);
        this.certData = new byte[(int)file.length()];
        certStream.read(this.certData);
        certStream.close();
    }
    
    public InputStream getCertStream()
    {
        ByteArrayInputStream certBis;
        certBis = new ByteArrayInputStream(this.certData);
        return certBis;
    }
    
}
