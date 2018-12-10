package come.util;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/*
 * 文 件 名:  LotteryUtil.java
 * 版    权:  深圳钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  suwei
 * 修改时间:  2017年3月13日
 */

/**
 * 抽奖的工具类
 * <功能详细描述>
 * 
 * @author  suwei
 * @version  [版本号, 2017年3月13日]
 */
public class LotteryUtil
{
    /**
     * 抽奖
     *
     * @param orignalRates 原始的概率列表，保证顺序和实际物品对应
     * @return 物品的索引
     */
    public static int lottery(List<Double> orignalRates) 
    {
        if (orignalRates == null || orignalRates.isEmpty()) 
        {
            return -1;
        }

        int size = orignalRates.size();

        // 计算总概率，这样可以保证不一定总概率是1
        double sumRate = 0d;
        for (double rate : orignalRates) 
        {
            sumRate += rate;
        } 

        // 重新计算每个物品在总概率的基础下的概率情况
        List<Double> sortOrignalRates = new ArrayList<Double>(size);
        Double tempSumRate = 0d;
        for (double rate : orignalRates) 
        {
            tempSumRate += rate;
            sortOrignalRates.add(tempSumRate / sumRate);
        }

        // 根据区块值来获取抽取到的物品索引
        double nextDouble = Math.random();
        sortOrignalRates.add(nextDouble);
        Collections.sort(sortOrignalRates);

        return sortOrignalRates.indexOf(nextDouble);
    }
        
}
