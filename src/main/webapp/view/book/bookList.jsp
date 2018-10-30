<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    th, td,tr {
        text-align: center;
    }

    .table tbody tr td{
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
</style>
<%@include file="../../common_view/head.jsp" %>
<div id="wrapper">
    <%@include file="../../common_view/side.jsp" %>
    <div id="content-wrapper">
        <div class="container-fluid">
            <div class="pull-right">
                <a href="/view/book/addOrEdit.jsp">
                    <button class="btn btn-info  m-md-2">新增</button>
                </a>
            </div>
            <table class="table table-striped table-hover table-bordered" style="table-layout:fixed;">
                <thead>
                <tr class="active">
                    <th width="50px">序号</th>
                    <th width="100px">图书名</th>
                    <th width="100px;">价格</th>
                    <th width="60px;">数量</th>
                    <th width="200px;">图书描述</th>
                    <th width="80px">操作</th>
                </tr>
                </thead>
                <tbody>
                <c:set var="index" value="${page.start}"></c:set>
                <c:forEach items="${requestScope.bookList}" var="book">
                    <tr>
                        <td>${index+1}</td>
                        <td>${book.name}</td>
                        <td>${book.price}</td>
                        <td>${book.number}</td>
                        <td>${book.description}</td>
                        <td>
                            <a href="/book?action=edit&id=${book.id}">
                                <button class="btn btn-primary">编辑</button>
                            </a>
                            <a href="/book?action=delete&id=${book.id}">
                                <button class="btn btn-danger" onclick="return confirm('您确定要删除？')">删除</button>
                            </a>
                        </td>
                        <c:set var="index" value="${index+1}"></c:set>
                    </tr>
                </c:forEach>
                </tbody>
                <br/>
            </table>
            <div class="row">
                <div class="m-auto">
                    <ul class="pagination" >
                        <li <c:if test="${page.start <= 0}"> class="page-item disabled" </c:if>>
                                <a href="/book?start=${page.start-page.pageSize}" class="page-item page-link">上一页</a>
                            </li>
                            <c:forEach begin="0" end="${page.totalPage-1}"  var="index">
                                <li class="page-item">
                                    <a href="/book?start=${index*page.pageSize}" class="page-link">${index+1}</a>
                                </li>
                            </c:forEach>


                            <li <c:if test="${page.total-page.start<page.pageSize}"> class="page-item disabled" </c:if>>
                                <a href="/book?start=${page.start+page.pageSize}"  class="page-link">下一页</a>
                            </li>
                        <li class="page-item disabled">
                            <c:set var="pageNum" value="${(page.start/page.pageSize)+1}" />
                            <span class="page-link">第 <fmt:formatNumber type="number" value="${pageNum}" pattern="#"/> 页  </span>
                        </li>
                        <li class="page-item disabled" id="next">
                            <span class="page-link">共 ${page.totalPage} 页</span>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
        <!-- /.container-fluid -->
        <%--<footer class="sticky-footer">--%>
            <%--<div class="container my-auto">--%>
                <%--<div class="copyright text-center my-auto">--%>
                    <%--<span>Copyright © Your Website 2018</span>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</footer>--%>

    </div>
</div>
<script>

</script>
<%@include file="../../common_view/foot.jsp" %>
