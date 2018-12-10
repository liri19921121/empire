package come.base;

import java.util.List;

/**
 * 分页实体
 * 
 * @author suwei
 * 
 * @param
 */
public class Pager
{
    
    /** 当前页数 */
    private int pageNum = 1;
    
    /** 每页显示数量 */
    private int numPerPage = 10;
    
    /** 总页数 */
    private int totalPage;
    
    /** 总数量 */
    private int totalCount;
    
    /**
     * 分页数据
     */
    private List list;
    
    /** 默认页面显示的js方法 */
    private String defaultMethod = "jumpPage";
    
    /**
     * <p>
     * Title:
     * </p>
     * <p>
     * Description: 无参构造方法
     * </p>
     */
    public Pager()
    {
        super();
    }
    
    /**
    * <p>Title: </p>
    * <p>Description: 有参构造方法</p>
    * @param pageNum 当前页数
    * @param numPerPage 每页显示条数
    */
    public Pager(Integer pageNum, Integer numPerPage)
    {
        super();
        if (null != pageNum)
        {
            this.pageNum = pageNum;
        }
        if (null != numPerPage)
        {
            this.numPerPage = numPerPage;
        }
    }
    
    /**
    * <p>Title: getPageNum</p>
    * <p>Description: getPageNum</p>
    * @return getPageNum
    */
    public int getPageNum()
    {
        return pageNum;
    }
    
    /**
    * <p>Title: setPageNum</p>
    * <p>Description: 设置当前页</p>
    * @param pageNum setPageNum
    */
    public void setPageNum(int pageNum)
    {
        this.pageNum = pageNum;
    }
    
    /**
    * <p>Title: getNumPerPage</p>
    * <p>Description: 获取每页显示条数</p>
    * @return numPerPage
    */
    public int getNumPerPage()
    {
        return numPerPage;
    }
    
    /**
    * <p>Title: setNumPerPage</p>
    * <p>Description: 设置每页显示条数</p>
    * @param numPerPage 每页显示条数
    */
    public void setNumPerPage(int numPerPage)
    {
        this.numPerPage = numPerPage;
    }
    
    /**
    * <p>Title: getTotalPage</p>
    * <p>Description: 获取总页数</p>
    * @return 总页数
    */
    public int getTotalPage()
    {
        return totalPage;
    }
    
    /**
    * <p>Title: getTotalCount</p>
    * <p>Description: 获取总条数</p>
    * @return 总条数
    */
    public int getTotalCount()
    {
        return totalCount;
    }
    
    /**
     * <p>Title: getTotalCount</p>
     * <p>Description: 分页数据</p>
     * @return 分页数据
     */
    public List getList()
    {
        return list;
    }
    
    /**
     * <p>Title: getTotalCount</p>
     * <p>Description: 分页数据</p>
     * @return 分页数据
     */
    public void setList(List list)
    {
        this.list = list;
    }
    
    /**
    * <p>Title: setTotalCount</p>
    * <p>Description: 设置总条数，同时会计算出总页数</p>
    * @param totalCount 总条数
    */
    public void setTotalCount(int totalCount)
    {
        this.totalCount = totalCount;
        
        this.totalPage = Math.ceil(totalCount / (float)this.numPerPage) > 0
            ? (int)Math.ceil(totalCount / (float)this.numPerPage) : 1;
        this.pageNum = this.pageNum > this.totalPage ? this.totalPage : this.pageNum;
    }
    
    /**
    * <p>Title: firstResult</p>
    * <p>Description: 计算当前页开始记录</p>
    * @return 开始记录数
    */
    public int firstResult()
    {
        final int firstResult = numPerPage * (pageNum - 1);
        return firstResult;
    }
    
    @Override
    public int hashCode()
    {
        final int prime = 31;
        int result = 1;
        result = prime * result + numPerPage;
        result = prime * result + pageNum;
        result = prime * result + totalCount;
        result = prime * result + totalPage;
        return result;
    }
    
    @Override
    public String toString()
    {
        return "Page [numPerPage=" + numPerPage + ", pageNum=" + pageNum + ", totalCount=" + totalCount + ", totalPage="
            + totalPage + ",list=" + list + "]";
    }
    
    /**
     * 高级主题风格
     * 
     * @return
     */
    public String getAdvancedThemeScript(String funMethod)
    {
        if (null != funMethod && !"".equals(funMethod))
        {
            defaultMethod = funMethod;
        }
        
        pageNum = pageNum <= 1 ? 1 : pageNum;
        pageNum = pageNum >= totalPage ? totalPage : pageNum;
        
        int down = (pageNum + 1 > totalPage ? totalPage : pageNum + 1);
        int up = (pageNum - 1 == 0 ? 1 : pageNum - 1);
        
        StringBuffer buf = new StringBuffer("");
        
        if (1 != pageNum)
        {
            buf.append("<a href='javascript:" + defaultMethod + "(1," + totalCount + ");'>首页</a>&nbsp;");
            buf.append("<a href='javascript:" + defaultMethod + "(" + up + "," + totalCount
                + ")' style='width:52px'>&nbsp;上一页</a>&nbsp;");
        }
        
        setPageNumber(buf);
        
        if (pageNum != totalPage)
        {
            buf.append("<a href='javascript:" + defaultMethod + "(" + down + "," + totalCount
                + ")' style='width:50px'>下一页</a>&nbsp;");
            buf.append("<a href='javascript:" + defaultMethod + "(" + totalPage + "," + totalCount + ")'>末页</a>&nbsp;");
        }
        return appendStyle(buf).toString();
    }
    
    /**
     * 设置 page 数量， 样式如右： 1 2 3 4 5 6 7 8 9 10 或 ...11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 ...
     * @return
     */
    private void setPageNumber(StringBuffer buf)
    {
        int unit = 4; // 分页样式 以当前页为中心的向左向右扩展的个数
        
        if (totalPage > unit * 2)
        {
            int up = pageNum;
            int down = pageNum;
            if (down <= unit)
            {
                down = 1;
                up = unit * 2 + 1;
            }
            else
            {
                up += unit;
                if (up > totalPage)
                {
                    up = totalPage;
                    down = up - unit * 2;
                }
                else
                {
                    down -= unit;
                }
            }
            
            if (down > 1)
            {
                buf.append("<span>...</span>");
            }
            for (int i = down; i <= up; i++)
            {
                appendPageNumber(buf, i);
            }
            if (up < totalPage)
            {
                buf.append("<span>...</span>");
            }
        }
        else
        {
            for (int i = 1; i <= totalPage; i++)
            {
                appendPageNumber(buf, i);
            }
        }
    }
    
    /**
     * 追加具体的分页数
     * @param buf
     * @param i
     */
    private void appendPageNumber(StringBuffer buf, int i)
    {
        buf.append("<a href='javascript:" + defaultMethod + "(" + i + "," + totalCount + ")' ");
        buf.append(getCurClass(pageNum, i) + ">" + i + "</a>&nbsp;");
    }
    
    /**
     * 获取当前的页的样式
     * @param currPage
     * @param i
     * @return
     */
    private String getCurClass(int currPage, int i)
    {
        if (currPage == i)
        {
            
            return "class='current'";
        }
        
        return "";
    }
    
    /**
     * 组装样式
     * @param buf
     */
    private StringBuffer appendStyle(StringBuffer buf)
    {
        StringBuffer style = new StringBuffer("<div class='mb50 mt15'>");
        style.append("<div class='page'><!--分页条-->");
        style.append(buf).append("</div></div>");
        return style;
    }
    
}
