<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>マイページ</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>
        <div id="main">
            <h1>詳細画面</h1>
            <c:forEach var="customer" items="${customerList}">
            	<form action="update" method="post">
                	<label for="email">Email</label>
                	<input type="text" name="email" id="email" value="${customer.email}">
                	<label for="password">Password</label>
                	<input type="text" name="password" id="password" value="${customer.password}">
                	<label for="name">氏名</label>
                	<input type="text" name="name" id="name" value="${customer.name}">
                	<label for="gender">性別</label>
                	<c:if test="${customer.gender == 0}">
                		<input type="radio" name="gender" value="0" checked>男
                		<input type="radio" name="gender" value="1">女
                	</c:if>
                	<c:if test="${customer.gender == 1}">
                		<input type="radio" name="gender" value="0">男
                		<input type="radio" name="gender" value="1" checked>女
                	</c:if>
                	<label for="blood">血液型</label>
                		<select name="blood">
                		<c:if test="${customer.blood == 'A'}">
                    		<option value="A" selected>A型</option>
                    		<option value="B">B型</option>
                    		<option value="O">O型</option>
                    		<option value="AB">AB型</option>
                    	</c:if>
                    	<c:if test="${customer.blood == 'B'}">
                    		<option value="A" >A型</option>
                    		<option value="B" selected>B型</option>
                    		<option value="O">O型</option>
                    		<option value="AB">AB型</option>
                    	</c:if>
                    	<c:if test="${customer.blood == 'O'}">
                    		<option value="A" >A型</option>
                    		<option value="B">B型</option>
                    		<option value="O" selected>O型</option>
                    		<option value="AB">AB型</option>
                    	</c:if>
                    	<c:if test="${customer.blood == 'AB'}">
                    		<option value="A" >A型</option>
                    		<option value="B">B型</option>
                    		<option value="O">O型</option>
                    		<option value="AB" selected>AB型</option>
                    	</c:if>
                		</select>
                	<label for="memo">メモ</label>
                	<textarea name="memo" id="memo" cols="41" rows="3" maxlength="100">${customer.memo}</textarea>
                	<input type="hidden" name="id" value="${customer.id}">
                	<input type="submit" value="更新">
            </form>
            <form action="delete" method="post">
            	<input type="hidden" name="id" value="${customer.id}">
            	<input type="submit" value="削除">
            </form>
            </c:forEach>
        </div>
    </body>
</html>