<%--
  Created by IntelliJ IDEA.
  User: huangjunhao
  Date: 2020/8/17
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>

<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>权限信息</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/lib/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/lib/css/demo.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/lib/css/metroStyle/metroStyle.css"/>
</head>
<body>

<shiro:guest>
    <label style="margin-left: 20px;">欢迎游客访问,<a href="${pageContext.request.contextPath}/login.jsp">点击登录</a><br/></label>
</shiro:guest>

<shiro:user>
    <br/>
    <label style="margin-left: 20px;">欢迎：[<shiro:principal/>]登录，<a href="${pageContext.request.contextPath}/logout">点击退出</a></label>
    <br/>
    <hr/>
    <br/>
    <div style="margin-left: 5%;">
        <div>
            <ul class="nav nav-pills nav-stacked" style="width: 10%;border: 1px solid #d9edf7;">
                <li>
                    <a href="${pageContext.request.contextPath}/index.do">首页</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/user/findAll.do">用户列表</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/roles/findAll.do">角色列表</a>
                </li>
                <li class="active">
                    <a href="${pageContext.request.contextPath}/permissions/findAll.do">权限列表</a>
                </li>
                <li class="active">
                    <a href="${pageContext.request.contextPath}/test/findAll.do">test</a>
                </li>
            </ul>
        </div>
        <div style="margin-left: 21%;margin-right: 16%;margin-top: -8%;" class="text-center">
           <h1>test  ${test}</h1>

        </div>
    </div>


</shiro:user>

</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/jquery.ztree.core.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/jquery.ztree.excheck.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/permission.js"></script>
</html>
