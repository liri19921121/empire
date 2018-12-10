/*
 * 文 件 名:  ScheduledTasks.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年5月31日
 */
package com.service;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 定时任务
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年5月31日]
 */
@Component
public class ScheduledTasks
{
    private static final SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
    
    /*    @Scheduled详解
    @Scheduled(fixedRate = 5000) 注解来定义每过5秒执行的任务，对于@Scheduled的使用可以总结如下几种方式：
    @Scheduled(fixedRate = 5000) ：上一次开始执行时间点之后5秒再执行
    @Scheduled(fixedDelay = 5000) ：上一次执行完毕时间点之后5秒再执行
    @Scheduled(initialDelay=1000, fixedRate=5000) ：第一次延迟1秒后执行，之后按fixedRate的规则每5秒执行一次*/
    //@Scheduled(cron="*/5*****") ：通过cron表达式定义规则
    
    @Scheduled(fixedRate = 50000)
    public void reportCurrentTime()
    {
        System.out.println("现在时间：" + dateFormat.format(new Date())
            + "   从前有座山，山上有座庙，庙里有个缸，缸里有个盆，盆里有个碗，碗里有个匙儿，匙儿里有两花生仁儿，我吃了，你馋了，我的故事讲完了。");
    }
}
