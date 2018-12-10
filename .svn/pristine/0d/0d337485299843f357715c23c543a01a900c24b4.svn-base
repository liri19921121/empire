package com.research.zxing;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

import java.io.File;
import java.nio.file.Path;
import java.util.HashMap;

/*
 * 文 件 名:  qrCode.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年11月3日
 */

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author  sun
 * @version  [版本号, 2017年11月3日]
 */
public class createZxing
{
    //生成二维码
    public static void main(String[] args)
    {
        int width = 200; // 图像宽度  
        int height = 200; // 图像高度  
        String format = "png";// 图像类型  
        //不加http://不会自动跳转
        //String content = "http://www.baidu.com";
        String content = "曾哲怡是只猪哈哈哈哈";
        //定义二维码的参数
        HashMap hints = new HashMap();
        hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");//定义内容所用编码
        hints.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.M);//定义纠错等级
        hints.put(EncodeHintType.MARGIN, 2);//定于边距，默认为5
        try
        {
            BitMatrix bitMatrix = new MultiFormatWriter().encode(content, BarcodeFormat.QR_CODE, width, height, hints);// 生成矩阵
            Path file = new File("D:/img4.png").toPath();
            MatrixToImageWriter.writeToPath(bitMatrix, format, file);// 输出图像  
            System.err.println("输出成功");
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}
