<%--
  Created by IntelliJ IDEA.
  User: nguyenvanan
  Date: 22/11/2023
  Time: 09:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Trang web Tin tức</title>
    <style>
        /* CSS để tùy chỉnh giao diện */
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #333;
            color: #fff;
            padding: 10px;
        }

        .logo {
            display: flex;
            align-items: center;
        }

        body {
            font-family: Arial, sans-serif;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        nav {
            background-color: #f4f4f4;
            padding: 10px;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        nav ul li {
            display: inline;
            margin-right: 10px;
        }

        nav ul li a {
            text-decoration: none;
            color: #333;
            padding: 6px 12px;
        }

        nav ul li a:hover {
            background-color: #333;
            color: #fff;
        }

        main {
            padding: 20px;
        }
    </style>
</head>
<body>
<header>
    <div class="logo">
        <img src="https://i.imgur.com/vktfXKe.png" alt="Logo" style="height: 50px;">

        &nbsp;<h1>Trang web Tin tức</h1>
    </div>

    <button type="submit">Đăng nhập</button>
    </form>
    </div>
</header>

<nav>
    <ul>
        <li><a href="#">Trang chủ</a></li>
        <li><a href="#">Tin tức</a></li>
        <li><a href="#">Thể thao</a></li>
        <li><a href="#">Giải trí</a></li>
        <li><a href="posts/create.jsp">Đăng bài</a></li>
        <li><a href="posts?action=listPosts">Bài đã đăng</a></li>
        <li>
            <form action="#" method="get" style="display: inline;">
                <input type="text" name="search" placeholder="Tìm kiếm...">
                <button type="submit">Tìm</button>
            </form>
        </li>
    </ul>
</nav>

<main>
    <div>
        <img src="https://icdn.24h.com.vn/upload/4-2023/images/2023-11-22//1700628839-913-thumbnail-width740height495_anh_cat_3_2.jpg">

        <h1> <p><a href="home3.jsp">Truy tố Chủ tịch tập đoàn Tân Hoàng Minh Đỗ Anh Dũng</a></p></h1>
        <h3>Ông Đỗ Anh Dũng, Chủ tịch Tập đoàn Tân Hoàng Minh cùng đồng phạm bị truy tố về tội “Lừa đảo chiếm đoạt tài sản”.

            <br>
            Vịnh Hạ Long đang ở 'cảnh báo đỏ'
        </h3>
    </div>
</main>

<footer>
    <!-- Chân trang web ở đây -->
</footer>
</body>
</html>