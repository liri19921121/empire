/*
 * 文 件 名:  PageModel.java
 * 版    权:  深圳钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  suwei
 * 修改时间:  2017年7月4日
 */
package come.base;

/**
 * 分页model
 * <功能详细描述>
 * 
 * @author  suwei
 * @version  [版本号, 2017年7月4日]
 */
public class PageModel
{
    private int pageNo;
    
    private int pagePerSize;
    
    private int pageFirst;
    
    private int pageLast;
    
    private int pagePrevious;
    
    private int pageNext;
    
    private int dataCount;
    
    public PageModel()
    {
        pageNo = 1;
        pagePerSize = 10;
        pageFirst = 1;
    }
    
    public PageModel(int pageNo, int pagePerSize)
    {
        this.pageNo = 1;
        this.pagePerSize = 10;
        pageFirst = 1;
        this.pageNo = pageNo;
        this.pagePerSize = pagePerSize;
    }
    
    public int getPageNo()
    {
        return pageNo;
    }
    
    public void setPageNo(int pageNo)
    {
        this.pageNo = pageNo;
        pagePrevious = this.pageNo - 1 > 1 ? this.pageNo - 1 : 1;
        pageNext = this.pageNo + 1 < pageLast ? this.pageNo + 1 : pageLast;
    }
    
    public int getDataCount()
    {
        return dataCount;
    }
    
    public void setDataCount(int dataCount)
    {
        this.dataCount = dataCount;
        pageLast = (int)Math.ceil((float)this.dataCount / (float)pagePerSize);
    }
    
    public int getPagePerSize()
    {
        return pagePerSize;
    }
    
    public void setPagePerSize(int pagePerSize)
    {
        this.pagePerSize = pagePerSize;
    }
    
    public void setPagePerSize(String pagePerSize)
    {
        if (pagePerSize == null)
        {
            return;
        }
        else
        {
            this.pagePerSize = Integer.parseInt(pagePerSize);
            return;
        }
    }
    
    public int getPageFirst()
    {
        return pageFirst;
    }
    
    public void setPageFirst(int pageFirst)
    {
        this.pageFirst = pageFirst;
    }
    
    public int getPageLast()
    {
        return pageLast;
    }
    
    public void setPageLast(int pageLast)
    {
        this.pageLast = pageLast;
    }
    
    public int getPagePrevious()
    {
        return pagePrevious;
    }
    
    public void setPagePrevious(int pagePrevious)
    {
        this.pagePrevious = pagePrevious;
    }
    
    public int getPageNext()
    {
        return pageNext;
    }
    
    public void setPageNext(int pageNext)
    {
        this.pageNext = pageNext;
    }
    
}
