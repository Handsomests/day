<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    th, td, tr {
        text-align: center;
    }

    .table tbody tr td {
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
            <h1>
                书籍管理
            </h1>
                <div class="input-group col-md-4 offset-md-8">
                   <input type="text" class="form-control" placeholder="Search for..." name="keywords" id="keywords">
                    <ul id="showSearch" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1"></ul>
                   <div class="input-group-append">
                       <%--<a href="/book?action=search&keywords">--%>
                           <button class="btn btn-primary" type="button" id="searchButton"><i class="fa fa-search"></i></button>
                           <%--</a>--%>
                   </div>
                    <a href="/view/book/addOrEdit.jsp"><button class="btn btn-primary  offset-md-5">新增</button></a>
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
            <div  class="row"<c:if test="${search eq 'search'}"> hidden</c:if>>
                <div class="m-auto">
                    <ul class="pagination">
                        <li <c:if test="${page.start <= 0}"> class="page-item disabled" </c:if>>
                            <a href="/book?start=${page.start-page.pageSize}" class="page-item page-link">上一页</a>
                        </li>
                        <c:forEach begin="0" end="${page.totalPage-1>0?page.totalPage-1:1}" var="pageIndex">
                            <li class="page-item">
                                <a href="/book?start=${pageIndex*page.pageSize}" class="page-link">${pageIndex+1}</a>
                            </li>
                        </c:forEach>
                        <li <c:if test="${page.total-page.start<page.pageSize}"> class="page-item disabled" </c:if>>
                            <a href="/book?start=${page.start+page.pageSize}" class="page-link">下一页</a>
                        </li>
                        <li class="page-item disabled">
                            <c:set var="pageNum" value="${(page.start/page.pageSize)+1}"/>
                            <span class="page-link">第 <fmt:formatNumber type="number" value="${pageNum}"
                                                                        pattern="#"/> 页  </span>
                        </li>
                        <li class="page-item disabled" id="next">
                            <span class="page-link">共 ${page.totalPage} 页</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<script>
    $(document).ready(function(){
        $("#keywords").keyup(function(){
            var keywords = $("#keywords").val();
            var  url="/check?type=search&keywords="+keywords;
            var data={
                keywords:keywords
            }
            if(keywords!="") {
                $.ajax({
                    type: "POST",   //http请求方式
                    cache: false,
                    url: url,       //发送给服务器的url
                    data: JSON.stringify(data), //发送给服务器的参数
                    dataType: "json",  //告诉JQUERY返回的数据格式(注意此处数据格式一定要与提交的controller返回的数据格式一致,不然不会调用回调函数complete)
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert("向服务器请求信息异常，请检查网络是否正常！" + XMLHttpRequest.status + ":" + XMLHttpRequest.readyState + ":" + textStatus);
                    },
                    success: function (result) {
                        for (var i = 0; i < result.length - 1; i++) {
                            //循环添加li节点
                            $("#showSearch").append("<li role='presentation' class='dropdown-item' id='li-text'>" + result[i] + "</li>");
                            //显示 ul 节点
                            $("#showSearch").show();
                            $("#li-text").mousedown(function () {
                                $("#keywords").val($(this).text());
                            });
                        }
                    }
                }),
                $('#keywords').keydown(function(){
                    $('#showSearch').html("");
                }),
                $('#keywords').blur(function(){
                    $('#showSearch').hide();
                })
            }
    });})

    $("#searchButton").click(function () {
        var keywords = $("#keywords").val();
        window.location.href="/book?action=search&keywords="+keywords;
    });
</script>
<%@include file="../../common_view/foot.jsp" %>
