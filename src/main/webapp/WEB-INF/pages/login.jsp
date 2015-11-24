<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<%--<head>G:\yangshi\bootstrap-3.3.5-dist\css\bootstrap.min.css--%>
    <link rel="stylesheet" href="/bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <link rel="stylesheet/less" type="text/css" href="/less.js-2.5.3/less/login.less">
    <script type="text/javascript" src="/less.js-2.5.3/js/less.min.js"></script>
    <script type="text/javascript" src="/bootstrap-3.3.5-dist/js/code.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=0">
    <title>登录页面</title>
</head>
<body onload="createCode();">
<!--顶部-->
<div class="container">
    <div class="row row1">
        <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
            <img class="text-left img1" src="../img/1.png">
        </div>
        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
            <p class="h">欢迎登录</p>
        </div>
        <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
            <p class="h text-right ">客服热线:400-xxx-xxxx服务时间:8:30-18:00</p>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <img src="../img/2.jpg" id="img2">
        </div>
    </div>
</div>

<!--中端-->
<div class="container row2 row3">
    <div class="row ">
        <div class="col-sm-3 col-md-2 text-center">
            <h3 class="text">用户登录</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2 col-md-2">
            <img src="../img/2.jpg" class="img2">
        </div>
    </div>
</div>

<div class="container row3" >
    <div class="table-bordered form0">
        <div class="row ">
            <div class="col-sm-12 col-md-12">

                <!--输入框-->
                <form class="form-horizontal" action="/no.form" method="post">
                    <div class="col-sm-7 col-md-7 " >
                        <div class="form-group text-right form2 form1">
                            <label class="col-sm-3 col-md-3 control-label">
                                <h5 class="size1">用户名:</h5>
                            </label>
                            <div class="col-sm-5 col-md-5">
                                <input type="text" class="form-control"  onblur="text1()"
                                       id="username" name="username"><span id="user"></span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 col-md-3 control-label">
                                <h5 class="size1">输入密码:</h5>
                            </label>
                            <div class="col-sm-5 col-md-5">
                                <input type="password" class="form-control" onblur="text2()"
                                       id="password" name="password"><span id="pwd"></span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 col-md-3  control-label">
                                <h5 class="size1">验证码:</h5>
                            </label>
                            <div class=" col-sm-5 col-md-5">
                                <input  class="form-control" id="input1" >
                            </div>
                            <!--验证码-->
                            <div>
                                <input type="button" id="checkCode" class="code" onclick="createCode();"/>
                            </div>
                        </div>

                        <!--下次自动登陆-->
                        <div class="col-sm-5 col-md-5 form2 text-right col-sm-offset-1">
                            <div class="checkbox down">
                                <label>
                                    <input type="checkbox">下次自动登录
                                </label>
                            </div>
                        </div>

                        <!--忘记密码-->
                        <div class="col-sm-4 col-md-4 form4 ma text-left">
                            <a href="#">忘记密码</a>
                        </div>

                        <!--登录按钮-->
                        <div class="col-sm-5 col-md-5 form2 text-right">
                            <button type="submit" onclick="validate()" class="button">
                                <p class="p1">登录</p>
                            </button>

                        </div>
                        <div id="showResult"></div>
                        <div class="col-sm-8 col-md-8 form2 text-center">
                            <h5 class="size3">还不是棉棉网用户?
                                <form action="register.jsp">
                                    <a href="register.jsp" class="size">马上免费注册</a>
                                </form>

                            </h5>
                        </div>
                    </div>
                </form>
                <!--图片-->
                <div class=" col-sm-5 col-md-5 login">
                    <img src="../img/login.jpg" id="login">
                </div>
            </div>
        </div>
    </div>
</div>

<!--末尾-->
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
            <h4>
                <small>COPYRlGHT@棉棉网www.XXXXXXXX.com</small>
            </h4>
            <h4>
                <small>**ICP备*********号-3lCP证：津B2-233333348</small>
            </h4>
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 col-xs-offset-3 col-sm-offset-3 col-md-offset-3 col-lg-offset-3 not">
                    <img src="../img/3.jpg">
                    <img src="../img/4.jpg">
                    <img src="../img/5.jpg">
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
