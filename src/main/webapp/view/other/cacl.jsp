<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/10/19
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>
    input::-ms-input-placeholder{
        text-align: center;
    }
    input::-webkit-input-placeholder{
        text-align: center;
    }
</style>
<%@include file="../../common_view/head.jsp"%>
<div id="wrapper">
    <%@include file="../../common_view/side.jsp"%>
    <div id="content-wrapper">
        <div class="container-fluid">
        <form class="col-md-4 offset-md-3">
            <div class="form-group"><h3 class="card-title offset-md-2">网页计算器</h3></div>
            <div class="form-group">
                <input class="form-control" type="number" id="num1" placeholder="运算数1" required >
            </div>
            <div class="form-group">
                <input class="form-control" type="number" id="num2" placeholder="运算数2" required>
            </div>
            <div class="from-group">
                <select class="form-control" id="type">
                    <optgroup label="运算类型">
                        <option value="*">乘</option>
                        <option value="/">除</option>
                        <option value="+">加</option>
                        <option value="-">减</option>
                    </optgroup>
                </select>
            </div>
            <br/>
            <div class="form-group">
                运算结果：

                <div id="result">
                             ${end}
                </div>
            </div>
            <div class="form-group">
                <input type="button" class="btn btn-primary col-md-3 offset-md-5" value="执行" onclick="execute()">
            </div>
        </form>
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
<!-- Bootstrap core JavaScript-->


<script>
    function execute() {
        var num1=$("#num1").val();
        var num2=$("#num2").val();
        var type=$("#type").val();
        var end=eval(num1+type+num2);
        $("#result").html("<font color='red'>"+end+"</font>");
    }
</script>
<%@include file="../../common_view/foot.jsp"%>
