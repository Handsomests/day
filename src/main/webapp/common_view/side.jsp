<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<ul class="sidebar navbar-nav">
    <li class="nav-item active">
        <a class="nav-link" href="index.jsp">
            <i class="fa fa-fw fa-dashboard"></i>
            <span>Dashboard</span>
        </a>
    </li>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown"
           aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-folder"></i>
            <span>Pages</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="404.html">404 Page</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="blank.html">Blank Page</a>
        </div>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="charts.html">
            <i class="fa fa-fw fa-area-chart"></i>
            <span>Charts</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/book">
            <i class="fa fa-fw fa-table"></i>
            <span>商品列表</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/view/other/cacl.jsp">
            <i class="fa fa-fw fa-calculator"></i>
            <span>计算器</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/view/other/source.jsp">
            <i class="fa fa-fw fa-object-group"></i>
            <span>成绩</span></a>
    </li>
</ul>