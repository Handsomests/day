<%@ page contentType="text/html;charset=UTF-8" language="java" %>
</head>
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
                <div class="form-group"><h3 class="card-title offset-md-2">成绩</h3></div>
                <div class="form-group">
                    <input class="form-control" type="number" id="sources" name="source"  placeholder="输入成绩" required >
                </div>

                <br/>
                <div class="form-group">
                    <div id="result"></div>
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
<script>
    function execute() {
        var source=$("#sources").val();

        if(source<=10&&source>=0)
            $("#result").html("<font color='red'>您的成绩：中</font>");
        else if(source<=20&&source>10)
            $("#result").html("<font color='red'>您的成绩：良</font>");
        else if(source<=30&&source>20)
            $("#result").html("<font color='red'>您的成绩：优</font>");
        else if(source=="")
            $("#result").html("<font color='red'>不能为空</font>");
        else
            $("#result").html("<font color='red'>您的成绩：秀</font>");
    }
</script>
<%@include file="../../common_view/foot.jsp"%>
