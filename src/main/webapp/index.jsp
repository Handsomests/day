<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>登录</title>
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet"  href="css/bootstrap4.1.3/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap4.1.3/font-awesome.min.css" type="text/css">
    <script type="text/javascript"  src="js/jquery/jquery.js"></script>
    <script type="text/javascript"  src="js/bootstrap4.1.3/bootstrap.min.js"></script>
    <style type="text/css">
        body{background: url(img/background.JPG) no-repeat;background-size:cover;font-size: 16px;}
        .form{background: rgba(255,255,255,0.7);width:450px;margin:100px auto;}
        #login_form{display: block;}
        .fa{display: inline-block;top: 28px;left: 6px;right: 6px;position: relative;color: #ccc;}
        input[type="text"],input[type="password"]{padding-left:36px;width: 300px}
        .checkbox{padding-left:21px;}
        .m-auto{
            margin-top: 15% !important;
        }
        .modal-content{
            width: 120%;
        }
        input{
            -moz-appearance: none;
            -ms-progress-appearance: none;
            -webkit-appearance: none;
        }
    </style>
</head>

<body>
<div class="container">
    <div class="row form m-auto">
        <form class="form-horizontal  offset-md-2" id="login_form" action="/loginOrRegister?action=login" method="post">
            <br/>
            <h3 class="form-title offset-md-3">登录界面</h3>
            <div class="col-sm-10 col-md-10">
                <div class="form-group">
                    <i class="fa fa-user fa-lg fa-fw"></i>
                    <input class="form-control" required type="text" placeholder="用户名" id="loginUserName" name="userName"  autofocus="autofocus" maxlength="20" />
                </div>
                <dic class="form-group">
                    <div id="showLoginResult" style="vertical-align: middle;"></div>
                </dic>
                <div class="form-group">
                    <i class="fa fa-lock fa-lg fa-fw"></i>
                    <input class="form-control" required type="password" placeholder="密码" name="userPass" maxlength="20"/>
                </div>
                <div class="form-group">
                    <c:if test="${flag==false}">
                        <font style="color: red;font-size: 0.9rem">密码错误</font>
                    </c:if>
                </div>
                <div class="form-group">
                    <label class="checkbox">
                        <input type="checkbox" name="remember-me" value="1"/>  记住我？
                    </label>
                    <hr/>
                </div>
                <div class="form-group">
                    <input type="submit" id="loginSubmit" class="btn btn-success offset-md-3"  value="登 录 "/>
                    <button type="button" class="btn btn-primary offset-md-2" data-toggle="modal" data-target="#register">
                        注  册
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">欢迎注册</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form  action="/loginOrRegister?action=register" method="post" class="offset-md-2" id="registerForm" role="form">
                    <div class="form-group">
                        <i class="fa fa-user  fa-fw"></i>
                        <input type="text" placeholder="用户名" required class="form-control" id="registerUserName" name="userName"  maxlength="20">
                    </div>
                    <div class="form-group">
                        <div id="showRegisterResult" style="vertical-align: middle;">
                        </div>
                    </div>
                    <div class="form-group">
                        <i class="fa fa-lock  fa-fw"></i>
                        <input type="password" required placeholder="6-16数字和字母组成" class="form-control" id="registerUserPass" name="userPass" minlength="6" maxlength="20">
                    </div>
                    <div class="form-group">
                        <div id="showPass">
                        </div>
                    </div>
                    <div class="form-group">
                        <i class="fa fa-lock fa-fw"></i>
                        <input type="password" required placeholder="密码确认" class="form-control" id="registerUserPassEnter" name="userPassEnter" minlength="6" maxlength="20">
                    </div>
                    <div class="form-group">
                        <div id="showPassEnter">
                        </div>
                    </div>
                    <div class="form-group">
                        <i class="fa fa-envelope fa-fw"></i>
                        <input type="text" placeholder="邮箱" required class="form-control" id="email" name="email">
                    </div>
                    <div class="form-group">
                        <div id="showEmailResult" style="vertical-align: middle;">
                        </div>
                    </div>
                    <div class="text-right">
                        <button type="button" class="btn btn-default right" data-dismiss="modal">关闭</button>
                        <input type="submit"  class="btn btn-primary" value="注册"  id="registerSubmit"/>
                    </div>
                </form>
            </div>
            <!--<div class="modal-footer">-->
            <!--<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>-->
            <!--<button type="button" class="btn btn-primary">Save changes</button>-->
            <!--</div>-->
        </div>
    </div>
</div>

<!-- 注册Modal -->

</body>
<script>
    // 检验登录名是否可用
   $("#loginUserName").blur(function () {
       var userName=$("#loginUserName").val();
       var url="/check?type=checkUserName";
       var data={
           userName:userName
       }
       if(userName==""){
           $("#loginUserName").css(
               "border-color" , "#dc3545"
           );
           $("#showLoginResult").html("<font color='red' size='0.9rem'>用户名不能为空</font>");
           return;
       }
       else {
           $.ajax({
               type:"POST",   //http请求方式
               cache:false,
               url:url,       //发送给服务器的url
               // data:JSON.stringify(data), //发送给服务器的参数
               data:data,
               //dataType:"json",  //告诉JQUERY返回的数据格式(注意此处数据格式一定要与提交的controller返回的数据格式一致,不然不会调用回调函数complete)
               error: function (XMLHttpRequest, textStatus, errorThrown) {
                   alert("向服务器请求信息异常，请检查网络是否正常！" + XMLHttpRequest.status + ":" + XMLHttpRequest.readyState + ":" + textStatus);
               },
               success : function(result) {
                   if(result == 'true'){
                       $("#loginUserName").css(
                           "border-color" , "green"
                       );
                       $("#showLoginResult").html("");
                       $("#loginSubmit").prop("disabled",false);
                   }
                   else{
                       $("#loginUserName").css(
                           "border-color" , "#dc3545"
                       );
                       $("#showLoginResult").html("<font color='red' size='0.9rem'>该用户名不存在</font>");
                       $("#loginSubmit").prop("disabled",true);
                   }
               }
           });
       }
       // console.log(userName);

   });
    // 检验注册名是否可用
   $("#registerUserName").blur(function () {
       var userName=$("#registerUserName").val();
       var url="/check?type=checkUserName";
       var data={
           userName:userName
       }
       if(userName==""){
           $("#registerUserName").css(
               "border-color" , "#dc3545"
           );
           $("#showRegisterResult").html("<font color='red' size='0.9rem'>用户名不能为空</font>");
           return;
       }
       else {
           $.ajax({
               type:"POST",   //http请求方式
               cache:false,
               url:url,       //发送给服务器的url
               // data:JSON.stringify(data), //发送给服务器的参数
               data:data,
               //dataType:"json",  //告诉JQUERY返回的数据格式(注意此处数据格式一定要与提交的controller返回的数据格式一致,不然不会调用回调函数complete)
               error: function (XMLHttpRequest, textStatus, errorThrown) {
                   alert("向服务器请求信息异常，请检查网络是否正常！" + XMLHttpRequest.status + ":" + XMLHttpRequest.readyState + ":" + textStatus);
               },
               success : function(result) {
                   if(result == 'true'){
                       $("#registerUserName").css(
                           "border-color" , "#dc3545"
                       );
                       $("#showRegisterResult").html("<font color='red' size='0.9rem'>该用户已存在</font>");
                       $("#registerSubmit").prop("disabled",true);
                   }
                   else{
                       $("#registerUserName").css(
                           "border-color" , "green"
                       );
                       $("#showRegisterResult").html("");
                       $("#registerSubmit").prop("disabled",false);
                   }
               }
           });
       }

   });
   //验证邮箱
    $("#email").blur(function () {
        var email=$("#email").val();
        var url="/check?type=checkEmail"
        var data={
            email:email
        }
        var pattern = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
        if(pattern.test(email)) {
            $.ajax({
                type:"POST",   //http请求方式
                cache:false,
                url:url,       //发送给服务器的url
                // data:JSON.stringify(data), //发送给服务器的参数
                data:data,
                //dataType:"json",  //告诉JQUERY返回的数据格式(注意此处数据格式一定要与提交的controller返回的数据格式一致,不然不会调用回调函数complete)
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert("向服务器请求信息异常，请检查网络是否正常！" + XMLHttpRequest.status + ":" + XMLHttpRequest.readyState + ":" + textStatus);
                },
                success : function(result) {
                    if(result == 'true'){
                        $("#email").css("border-color" , "#dc3545");
                        $("#showEmailResult").html("<font color='red' size='0.9rem'>该邮箱已存在</font>");
                        $("#registerSubmit").prop("disabled",true);
                    }
                    else{
                        $("#email").css("border-color" , "green");
                        $("#showEmailResult").html("");
                        $("#registerSubmit").prop("disabled",false);
                    }
                }
            });
        }
        else {
            $("#email").css("border-color" , "#dc3545");
            $("#showEmailResult").html("<font color='red' size='0.9rem'>邮箱格式不正确</font>");
            $("#registerSubmit").prop("disabled",true);
            return;
        }
    })
    //密码校验
    $("#registerUserPass").blur(function () {
        var registerUserPass=$("#registerUserPass").val();
        var pattern=/^[\w]{6,16}$/;
        if(pattern.test(registerUserPass)){
            $("#registerUserPass").css("border-color","green");
            $("#showPass").html("");
            $("#registerSubmit").prop("disabled",false);
        }
        else {
            $("#registerUserPass").css("border-color","red");
            $("#showPass").html("<font color='red' size='0.9rem'>密码格式错误</font>");
            $("#registerSubmit").prop("disabled",true);
        }
    })
    //确认密码
    $("#registerUserPassEnter").blur(function () {
        var registerUserPass=$("#registerUserPass").val();
        var registerUserPassEnter=$("#registerUserPassEnter").val();
        if(registerUserPass==registerUserPassEnter){
            $("#registerUserPassEnter").css("border-color","green");
            $("#showPassEnter").html("");
            $("#registerSubmit").prop("disabled",false);
        }
        else {
            $("#registerUserPassEnter").css("border-color","red");
            $("#showPassEnter").html("<font color='red' size='0.9rem'>两次输入密码不一致</font>");
            $("#registerSubmit").prop("disabled",true);
        }
    })
</script>
</html>
