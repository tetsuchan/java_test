<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>入力画面</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>
        <div id="main">
            <h1>入力画面</h1>
            <form action="insert" method="post">
                <label for="email">Email</label>
                <input type="text" name="email" required>
                <label for="password">Password</label>
                <input type="text" name="password" required>
                <label for="name">氏名</label>
                <input type="text" name="name" required>
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
				<label for="old">年齢</label>
                <input type="text" name="old" required>歳
                <textarea name="memo" id="memo" cols="41" rows="3" maxlength="100" required></textarea>
                <input type="submit" value="確認">
            </form>
        </div>
    </body>
</html>