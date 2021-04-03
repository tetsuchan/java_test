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
            <h1>マイページ</h1>
            <c:if test="${!empty loginUser.name}">
            	<p>こんにちわ、${loginUser.name}さん</p>
            </c:if>
            <c:if test="${!empty loginUser.email}">
           		<p>Email:${loginUser.email}</p>
            </c:if>
			<p>顧客情報を入力して下さい</p>
            <form action="search" method="post">
                    <label for="gender">性別</label>
                    <input type="radio" name="gender" value="0" checked="checked">男
                    <input type="radio" name="gender" value="1">女
                    <label for="blood">血液型</label>
                    <select name="blood">
                        <option value="A">A型</option>
                        <option value="B">B型</option>
                        <option value="O">O型</option>
                        <option value="AB">AB型</option>
                    </select>
                    <input type="submit" value="検索">
            </form>
            <table border="1">
                <tr>
                    <th>id</th>
                    <th>email</th>
                    <th>氏名</th>
                    <th>性別</th>
                    <th>血液型</th>
                    <th>年齢</th>
                    <th>詳細</th>
                </tr>
                <c:forEach var="customer" items="${customerList}">
                    <tr>
                        <td><c:out value="${customer.id}"/></td>
                        <td><c:out value="${customer.email}"/></td>
                        <td><c:out value="${customer.name}"/></td>
                        <c:if test="${customer.gender == 0}"><td>男</td></c:if>
                        <c:if test="${customer.gender == 1}"><td>女</td></c:if>
                        <td><c:out value="${customer.blood}"/>型</td>
                        <td><c:out value="${customer.old}"/>歳</td>
                        <td>
                            <a href="search?id=<c:out value="${customer.id}"/>">
                            詳細はこちら</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <p>全件検索はコチラ</p>
            <form action="all" method="post">
            	<input type="submit" value="検索">
            </form>
            <table border="1">
                <tr>
                    <th>id</th>
                    <th>email</th>
                    <th>氏名</th>
                    <th>性別</th>
                    <th>血液型</th>
                    <th>年齢</th>
                    <th>詳細</th>
                </tr>
                <c:forEach var="customer" items="${cL}">
                    <tr>
                        <td><c:out value="${customer.id}"/></td>
                        <td><c:out value="${customer.email}"/></td>
                        <td><c:out value="${customer.name}"/></td>
                        <c:if test="${customer.gender == 0}"><td>男</td></c:if>
                        <c:if test="${customer.gender == 1}"><td>女</td></c:if>
                        <td><c:out value="${customer.blood}"/>型</td>
                        <td><c:out value="${customer.old}"/>歳</td>
                        <td>
                            <a href="search?id=<c:out value="${customer.id}"/>">
                            詳細はこちら</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <p><a href="insert.jsp">新規会員登録</a></p>
        </div>
    </body>
</html>