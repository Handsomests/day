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
            <form class="form-horizontal col-md-8 offset-md-2" action="/book" method="post">
                <br>
                <h3 class="form-title offset-md-4">书籍详情</h3>
                <input type="text" value="${book.id}" name="id" hidden>
                <div class="form-group">
                    <label class="control-label">书名:</label>
                    <input type="text" value="${book.name}" name="name" class="form-control">
                </div>
                <div class="form-group">
                    <label class="control-label">价格:</label>
                    <input type="number" value="${book.price}" name="price" class="form-control">
                </div>
                <div class="form-group">
                    <label class="control-label">数量:</label>
                    <input  type="number" value="${book.number}" name="number" class="form-control">
                </div>
                <div class="form-group">
                    <label class="control-label">描述:</label>
                    <textarea class="form-control"   name="description">${book.description}</textarea>
                </div>
                <div class="footer offset-md-4">
                    <button type="button" class="btn btn-default right" onclick="window.history.back();return false;">返回</button>
                    <input type="submit"  class="btn btn-primary offset-md-1" value="保 存"/>
                </div>
            </form>
        </div>
        <!-- /.container-fluid -->
        <!-- Sticky Footer -->

    </div>
</div>
<%@include file="../../common_view/foot.jsp"%>
