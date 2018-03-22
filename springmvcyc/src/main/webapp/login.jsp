<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登录</title>
    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" type="text/css"
          href="<spring:url value="/resources/css/default/login/style.css"/>">
    <link rel="stylesheet" type="text/css"
          href="<spring:url value="/resources/css/default/login/form-elements.css"/>">
    <link rel="stylesheet" type="text/css"
          href="<spring:url value="/resources/css/default/frame/font-awesome.css"/>">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="<spring:url value="/resources/css/images/login/favicon.png"/>">
    <link rel="apple-touch-icon-precomposed" sizes="144x144"
          href="<spring:url value="/resources/images/login/apple-touch-icon-144-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" sizes="114x114"
          href="<spring:url value="/resources/images/login/apple-touch-icon-114-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" sizes="72x72"
          href="<spring:url value="/resources/images/login/apple-touch-icon-72-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed"
          href="<spring:url value="/resources/images/login/apple-touch-icon-57-precomposed.png"/>">

</head>

<body>

<!-- Top content -->
<div class="top-content">

    <div class="inner-bg">
        <div class="container">
            <%--<div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1><strong>Bootstrap</strong> Login Form</h1>
                    <div class="description">
                        <p>
                            This is a free responsive login form made with Bootstrap.
                            Download it on <a href="#"><strong>AZMIND</strong></a>, customize and use it as you like!
                        </p>
                    </div>
                </div>
            </div>--%>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>登录网站</h3>
                        </div>
                        <div class="form-top-right">
                            <i class="fa fa-lock"></i>
                        </div>
                    </div>
                    <C:if test="${loginMsg}!=null" var="loginMsg" scope="page">
                        <C:out value="${loginMsg}"></C:out>
                    </C:if>
                    <div class="form-bottom">
                        <form role="form" action="<spring:url value="com.shuyang.sys.yc/login.do"/> " method="post" class="login-form">
                            <div class="form-group">
                                <label class="sr-only" for="form-username">Username</label>
                                <input type="text" name="form-username" placeholder="用户名..."
                                       class="form-username form-control" id="form-username">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-password">Password</label>
                                <input type="password" name="form-password" placeholder="密码..."
                                       class="form-password form-control" id="form-password">
                            </div>
                            <button type="submit" class="btn">登录</button>
                        </form>
                    </div>
                </div>
            </div>
            <%--<div class="row">--%>
                <%--<div class="col-sm-6 col-sm-offset-3 social-login">--%>
                    <%--<h3>...or login with:</h3>--%>
                    <%--<div class="social-login-buttons">--%>
                        <%--<a class="btn btn-link-2" href="#">--%>
                            <%--<i class="fa fa-facebook"></i> Facebook--%>
                        <%--</a>--%>
                        <%--<a class="btn btn-link-2" href="#">--%>
                            <%--<i class="fa fa-twitter"></i> Twitter--%>
                        <%--</a>--%>
                        <%--<a class="btn btn-link-2" href="#">--%>
                            <%--<i class="fa fa-google-plus"></i> Google Plus--%>
                        <%--</a>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        </div>
    </div>

</div>


<!-- Javascript -->
<script src="<spring:url value="/resources/js/login/jquery.backstretch.min.js"/>"></script>
<script src="<spring:url value="/resources/js/login/scripts.js"/>"></script>

<!--[if lt IE 10]>
<script src="<spring:url value="/resources/js/login/placeholder.js"/>"></script>
<![endif]-->

</body>

</html>