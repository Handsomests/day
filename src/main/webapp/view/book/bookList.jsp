<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    th ,td{
        text-align: center;
    }
    .table tbody tr td{
        overflow: hidden;
        text-overflow:ellipsis;
        white-space: nowrap;
    }
</style>
<%@include file="../../common_view/head.jsp"%>
<div id="wrapper">
    <%@include file="../../common_view/side.jsp"%>
<div id="content-wrapper">
    <div class="container-fluid">
        <div class="pull-right">
            <a href="/view/book/addOrEdit.jsp"><button class="btn btn-info  m-md-2">新增</button></a>
        </div>
        <table  class="table table-striped table-hover table-bordered" style="table-layout:fixed;">
            <thead>
            <tr class="active">
                <th width="100px">图书名</th>
                <th width="100px;">价格</th>
                <th width="60px;">数量</th>
                <th width="200px;">图书描述</th>
                <th width="80px">操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${requestScope.bookList}" var="book">
                <tr>
                    <td>${book.name}</td>
                    <td>${book.price}</td>
                    <td>${book.number}</td>
                    <td>${book.description}</td>
                    <td>
                        <a href="/book?action=edit&id=${book.id}" ><button class="btn btn-primary" >编辑</button></a>
                        <a href="/book?action=delete&id=${book.id}"><button class="btn btn-danger" onclick = "return confirm('您确定要删除？')">删除</button></a>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
    </div>
    <!-- /.container-fluid -->

    <!-- Sticky Footer -->
    <footer class="sticky-footer">
        <div class="container my-auto">
            <div class="copyright text-center my-auto">
                <span>Copyright © Your Website 2018</span>
            </div>
        </div>
    </footer>
</div>
</div>
<%@include file="../../common_view/foot.jsp"%>
