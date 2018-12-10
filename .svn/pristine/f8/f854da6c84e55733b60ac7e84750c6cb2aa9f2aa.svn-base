/*
 * 文 件 名:  LucklyDraw.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年6月14日
 */
package come.controller;

import come.dao.LoginAndRegistrationDao;
import come.dao.LucklyDrawDao;
import come.pojo.Award;
import come.pojo.Gold;
import come.util.LotteryUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年6月14日]
 */
@Controller
@RequestMapping("/luckly-draw")
public class LucklyDrawController
{
    @Resource
    private LucklyDrawDao lucklyDrawDao;
    
    @Resource
    private LoginAndRegistrationDao loginAndRegistrationDao;
    
    //跳到主页
    @RequestMapping("/play")
    public String dancing(HttpServletRequest request)
    {
        request.setAttribute("number",
            lucklyDrawDao.queryNumberByUserId(request.getSession().getAttribute("userId").toString()));
        request.setAttribute("name",
            loginAndRegistrationDao.queryNameByUserId(request.getSession().getAttribute("userId").toString()));
        return "/index/luckyDraw/win_gold_activity";
    }
    
    //抽奖方法，根据产生随机数操作金币表，返回一个随机数
    /***
     * <一句话功能简述>
     * <功能详细描述>
     * @param investNumber 下注金币数量
     * @param request
     * @param response
     * @return
     * @throws ParseException
     */
    @RequestMapping(value = "getRandomNumber", method = RequestMethod.POST)
    @ResponseBody
    public String getRandomNumber(String userId, double investNumber, HttpServletRequest request,
        HttpServletResponse response)
        throws ParseException
    {
        //获得一个随机数
        int RandomNumber = this.getOrignalIndex();
        String RandomNumberString = Integer.toString(RandomNumber);
        //待更新我的金币数
        double my_gold = 1;
        //遇到除时中介数
        double my_gold_temp = 1;
        //我的金币数
        double goldTableRealNumber = Double.valueOf(lucklyDrawDao.queryNumberByUserId(userId));
        if (RandomNumber == 0)
        {
            //金币*100
            my_gold = goldTableRealNumber - investNumber + investNumber * 100;
        }
        else if (RandomNumber == 1)
        {
            //金币/50
            my_gold_temp = Math.ceil(investNumber / 50);
            my_gold = goldTableRealNumber - investNumber + my_gold_temp;
        }
        else if (RandomNumber == 2)
        {
            //再接再厉(留一个)
            my_gold = goldTableRealNumber - investNumber + 1;
        }
        else if (RandomNumber == 3)
        {
            //金币/10
            my_gold_temp = Math.ceil(investNumber / 10);
            my_gold = goldTableRealNumber - investNumber + my_gold_temp;
        }
        else if (RandomNumber == 4)
        {
            //金币*10
            my_gold = goldTableRealNumber - investNumber + investNumber * 10;
        }
        else if (RandomNumber == 5)
        {
            //金币/100
            my_gold_temp = Math.ceil(investNumber / 100);
            my_gold = goldTableRealNumber - investNumber + my_gold_temp;
        }
        else if (RandomNumber == 6)
        {
            //金币*5
            my_gold = goldTableRealNumber - investNumber + investNumber * 5;
        }
        else if (RandomNumber == 7)
        {
            //再来一次
            my_gold = goldTableRealNumber;
        }
        else if (RandomNumber == 8)
        {
            //金币*50
            my_gold = goldTableRealNumber - investNumber + investNumber * 50;
        }
        else if (RandomNumber == 9)
        {
            //金币/5
            my_gold_temp = Math.ceil(investNumber / 5);
            my_gold = goldTableRealNumber - investNumber + my_gold_temp;
        }
        Gold gold = lucklyDrawDao.queryGoldByUserId(userId);
        SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        gold.setTime(fm.format(new Date()));
        gold.setNumber(String.valueOf(my_gold));
        lucklyDrawDao.updateT(gold);
        return RandomNumberString;
    }
    
    public int getOrignalIndex()
    {
        List<Award> awards = new ArrayList<Award>();
        // 序号==物品Id==物品名称==概率
        Award prototype = new Award(1, "P1", "金币X100", 0.1d);
        awards.add(prototype);
        awards.add(prototype.clone(2, "P2", "金币÷50", 0.1d)); // 使用原型模式复制对象
        awards.add(prototype.clone(3, "P3", "再接再厉", 0.1d));
        awards.add(prototype.clone(4, "P4", "金币÷10", 0.1d));
        awards.add(prototype.clone(5, "P5", "金币X10", 0.1d));
        awards.add(prototype.clone(6, "P6", "金币÷100", 0.1d));
        awards.add(prototype.clone(7, "P7", "金币X5", 0.1d));
        awards.add(prototype.clone(8, "P8", "再来一次", 0.1d));
        awards.add(prototype.clone(9, "P9", "金币X50", 0.1d));
        awards.add(prototype.clone(10, "P10", "金币÷5", 0.1d));
        List<Double> orignalRates = new ArrayList<Double>(awards.size());
        for (Award award : awards)
        {
            double probability = award.getProbability();
            if (probability < 0)
            {
                probability = 0;
            }
            orignalRates.add(probability);
        }
        
        int orignalIndex = LotteryUtil.lottery(orignalRates);
        return orignalIndex;
    }
}
