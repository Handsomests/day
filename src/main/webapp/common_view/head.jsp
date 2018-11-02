<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>--%>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>后台管理</title>
    <link rel="icon" href="../../img/favicon.ico" type="image/x-icon">
    <!-- Bootstrap core CSS-->
    <link href="../../css/bootstrap4.1.3/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="../../css/bootstrap4.1.3/font-awesome.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="../../css/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../../css/sb-admin.css" rel="stylesheet">
    <script src="../../js/jquery/jquery.min.js"></script>
</head>
<body id="page-top">
<nav class="navbar navbar-expand navbar-blue bg-dark static-top">

    <a class="navbar-brand mr-1" href="/view/home/home.jsp">后台管理界面</a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fa fa-bars"></i>
    </button>

    <!-- Navbar Search -->
    <%--<form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">--%>
        <%--<div class="input-group">--%>
            <%--<input type="text" class="form-control" placeholder="Search for..." aria-label="Search"--%>
                   <%--aria-describedby="basic-addon2">--%>
            <%--<div class="input-group-append">--%>
                <%--<button class="btn btn-primary" type="button">--%>
                    <%--<i class="fa fa-search"></i>--%>
                <%--</button>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</form>--%>
    <!-- Navbar -->
    <ul class="navbar-nav col-md-2 offset-md-9 offset-ld-10">
        <li class="nav-item dropdown no-arrow nav-link">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false">
                <i class="fa fa-user-circle fa-fw"></i>欢迎你，${userName}
            </a>
            <div class="dropdown-menu" aria-labelledby="userDropdown">
                <a class="dropdown-item m-auto" href="#" data-toggle="modal" data-target="#logoutModal">登出</a>
            </div>
        </li>
    </ul>

</nav>



<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="loginOut" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="loginOut">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
               <div class="input-group offset-md-4">
                   <h4>你确定登出吗？</h4>
               </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">关闭</button>
                <a class="btn btn-danger" href="login.html">登出</a>
            </div>
        </div>
    </div>
</div>