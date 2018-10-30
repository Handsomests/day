package util;

import java.io.Serializable;

public class Page implements Serializable {
    private int start;         //开始数据的索引
    private int last;         //
    private int pageSize;      //页面大小
    private int total;         //总记录数
    private int totalPage;     //总页数

    public Page(int start,int pageSize,int total){
        super();
        this.start=start;
        this.pageSize=pageSize;
        this.total=total;
        setTotalPage();
    }
    //判断是否有上一页
    public Boolean isHasPreviouse(){
        if (start==0)
            return false;
        return true;
    }
    //判断是否有下一页
    public Boolean isHasNext(){
          if(getLast()==0)
              return false;
          return true;
    }
    //获取尾页
    public int getLast(){
        last= total % pageSize == 0 ? total-pageSize : total - total % pageSize;

        last = last < 0 ? 0 : last;

        return last;
    }
    //总页数
    public int getTotalPage(){
        totalPage= total % pageSize == 0 ? total/pageSize : total/pageSize+1;
        return totalPage;
    }
    public void setTotalPage(){
        totalPage= total % pageSize == 0 ? total/pageSize : total/pageSize + 1;
        System.out.println(totalPage+"--------+++++++++++"+total);
    }
    public int getStart() {
        return start;
    }

    public int getPageSize() {
        return pageSize;
    }

    public int getTotal() {
        return total;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public void setLast(int last) {
        this.last = last;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public Page() {
    }
}
