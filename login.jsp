<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>ログイン画面</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>
        <div id="main">
            <h1>ログイン画面</h1>
            <form action="login" method="post">
                <div class="field">
                    <label for="email">Email</label>
                    <input type="text" id="email" name="email">
                </div>
                <div class="field">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password">
                </div>
                <div>
                    <input type="submit">
                </div>
            </form>
        </div>
    </body>
</html>
