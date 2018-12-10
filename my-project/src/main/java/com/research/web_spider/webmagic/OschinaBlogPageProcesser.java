/*
 * 文 件 名:  OschinaBlogPageProcesser.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年12月1日
 */
package com.research.web_spider.webmagic;

import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.pipeline.ConsolePipeline;
import us.codecraft.webmagic.processor.PageProcessor;

import java.util.List;

/**
 * 官网 教程： http://webmagic.io/docs/zh/
 * <功能详细描述>
 * 
 * @author  sun
 * @version  [版本号, 2017年12月1日]
 */
public class OschinaBlogPageProcesser implements PageProcessor
{
    private Site site = Site.me().setDomain("my.oschina.net");
    
    public void process(Page page)
    {
        List<String> links = page.getHtml().links().regex("http://my\\.oschina\\.net/flashsword/blog/\\d+").all();
        page.addTargetRequests(links);
        page.putField("title",
            page.getHtml().xpath("//div[@class='BlogEntity']/div[@class='BlogTitle']/h1").toString());
        page.putField("content", page.getHtml().$("div.content").toString());
        page.putField("tags", page.getHtml().xpath("//div[@class='BlogTags']/a/text()").all());
    }
    
    public Site getSite()
    {
        return site;
        
    }
    
    public static void main(String[] args)
    {
        /*Spider.create(new GithubRepoPageProcessor())
                //从https://github.com/code4craft开始抓    
                .addUrl("https://github.com/code4craft")
                //设置Scheduler，使用Redis来管理URL队列
                .setScheduler(new RedisScheduler("localhost"))
                //设置Pipeline，将结果以json方式保存到文件
                .addPipeline(new JsonFilePipeline("D:\\data\\webmagic"))
                //开启5个线程同时执行
                .thread(5)
                //启动爬虫
                .run();*/
        
        Spider.create(new OschinaBlogPageProcesser())
            .addUrl("http://my.oschina.net/flashsword/blog")
            .addPipeline(new ConsolePipeline())
            .run();
    }
    
}
