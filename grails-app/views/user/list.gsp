
<%@ page import="com.pvardanega.User" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>

    <g:if test="${flash.message}">
        <div class="success" role="status">${flash.message}</div>
    </g:if>

    <table class="table table-striped">
        <thead>
            <tr>

                <g:sortableColumn property="id" title="${message(code: 'user.username.id', default: 'Username')}" />

                <g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Username')}" />

                <g:sortableColumn property="password" title="${message(code: 'user.password.label', default: 'Password')}" />

                <g:sortableColumn property="enabled" title="${message(code: 'user.enabled.label', default: 'Enabled')}" />

            </tr>
        </thead>
        <tbody>
        <g:each in="${userInstanceList}" status="i" var="userInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td>${fieldValue(bean: userInstance, field: "id")}</td>

                <td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link></td>

                <td>${fieldValue(bean: userInstance, field: "password")}</td>

                <td><g:formatBoolean boolean="${userInstance.enabled}" /></td>

            </tr>
        </g:each>
        </tbody>
    </table>

</body>
</html>
