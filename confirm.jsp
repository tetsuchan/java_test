<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>確認画面</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>
    	<h1>確認ページ</h1>
    	<p>入力項目は以下です、登録しますか？</p>
    	<ul>
    		<li>Email:${customer.email}</li>
    		<li>Password:${customer.password}</li>
    		<li>名前:${customer.name}</li>
    		<c:if test="${customer.gender == 0}">
    		<li>性別:男</li>
    		</c:if>
    		<c:if test="${customer.gender == 1}">
    		<li>性別:女</li>
    		</c:if>
    		<li>血液型:${customer.blood}型</li>
    		<li>年齢:${customer.old}歳</li>
    		<li>メモ:${customer.memo}</li>
    	</ul>
    	<form action="confirm" method="post">
    		<input type="hidden" name="email" value="${customer.email}">
    		<input type="hidden" name="password" value="${customer.password}">
    		<input type="hidden" name="name" value="${customer.name}">
    		<input type="hidden" name="gender" value="${customer.gender}">
    		<input type="hidden" name="blood" value="${customer.blood}">
    		<input type="hidden" name="old" value="${customer.old}">
    		<input type="hidden" name="memo" value="${customer.memo}">
 			<input type="submit" value="登録">
 		</form>
 		<form action="insert.jsp" method="post">
 			<input type="submit" value="修正">
 		</form>
    </body>
</html>
