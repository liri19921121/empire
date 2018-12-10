package come.pojo;
/*
 * 文 件 名:  Award.java
 * 版    权:  深圳钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  suwei
 * 修改时间:  2017年3月13日
 */

/**
 * 奖项实体类
 * <功能详细描述>
 * 
 * @author  suwei
 * @version  [版本号, 2017年3月13日]
 */
public class Award implements Cloneable
{
    private int index;
    private String awardId;     // 奖项ID
    private String awardName;   // 奖项名称
    private double probability; // 奖项概率
    
    
    /** <默认构造函数>
     */
    public Award(int index, String awardId, String awardName, double probability)
    {
        super();
        this.index = index;
        this.awardId = awardId;
        this.awardName = awardName;
        this.probability = probability;
    }
    
    /**
     * @return 返回 index
     */
    public int getIndex()
    {
        return index;
    }
    /**
     * @param 对index进行赋值
     */
    public void setIndex(int index)
    {
        this.index = index;
    }
    /**
     * @return 返回 awardId
     */
    public String getAwardId()
    {
        return awardId;
    }
    /**
     * @param 对awardId进行赋值
     */
    public void setAwardId(String awardId)
    {
        this.awardId = awardId;
    }
    /**
     * @return 返回 awardName
     */
    public String getAwardName()
    {
        return awardName;
    }
    /**
     * @param 对awardName进行赋值
     */
    public void setAwardName(String awardName)
    {
        this.awardName = awardName;
    }
    /**
     * @return 返回 probability
     */
    public double getProbability()
    {
        return probability;
    }
    /**
     * @param 对probability进行赋值
     */
    public void setProbability(double probability)
    {
        this.probability = probability;
    }

    /** {@inheritDoc} */
     
    @Override
    public String toString()
    {
        return "Award [index=" + index + ", awardId=" + awardId + ", awardName=" + awardName + ", probability="
            + probability + "]";
    }
    
    /**
     * 使用原型模式clone对象，并通过构造函数给复制出来的对象赋值
     * <功能详细描述>
     * @param index
     * @param awardId
     * @param awardName
     * @param probability
     * @return
     */
    public Award clone(int index, String awardId, String awardName, double probability)
    {
        Award clone = null;
        try
        {
            clone = (Award)super.clone();
            clone.awardId = awardId;
            clone.index = index;
            clone.awardName = awardName;
            clone.probability = probability;
        }
        catch (CloneNotSupportedException e)
        {
            e.printStackTrace();
        }
        return clone;
    }
    
}
