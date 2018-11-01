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
    //总页数
    public void setTotalPage(){
        this.totalPage= total % pageSize == 0 ? total/pageSize : total/pageSize + 1;
    }
    public int getTotalPage(){
        return totalPage;
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
