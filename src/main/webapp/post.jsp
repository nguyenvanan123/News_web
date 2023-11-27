<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: nguyenvanan--%>
<%--  Date: 10/11/2023--%>
<%--  Time: 10:52--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Bài viết mới</title>--%>
<%--</head>--%>
<%--<style>--%>
<%--    h2,h1{--%>
<%--        text-align: center;--%>
<%--    }--%>
<%--    body{--%>
<%--        background-color: burlywood;--%>
<%--        color: brown;--%>
<%--    }--%>
<%--</style>--%>
<%--<script>--%>
<%--    function exit(){--%>

<%--        window.location="home2.1.jsp"--%>
<%--    }--%>
<%--    let avatar = document.getElementById("avatar");--%>
<%--    let input = document.getElementById("input");--%>

<%--    input.onchange = (e) => {--%>
<%--        if (input.files[0]) avatar.src = URL.createObjectURL(input.files[0]);--%>
<%--    };--%>


<%--</script>--%>
<%--<body>--%>


<%--<c:set var="userName" value="${insertContent}"></c:set>--%>
<%--<h1>Bài viết mới</h1>--%>
<%--<h2>Tiêu đề: ${userName.title}</h2>--%>
<%--<button onclick="exit()">exit</button>--%>
<%--<p>Nội dung: ${userName.content}</p>--%>
<%--<p>Time: ${userName.timestamp}</p>--%>
<%--&lt;%&ndash;<p>Avatar: ${userName.avatar}</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;<img src="${userName.avatar}">&ndash;%&gt;--%>
<%--<img src="${userName.avatar}" height="500">--%>
<%--<br>--%>
<%--<a href="${userName.avatar}" target="_blank" title="FULL HD KHUM CHE">FULL HD KHUM CHE</a>--%>
<%--<br>--%>
<%--<p>Content: ${userName.shortdescription}</p>--%>


<%--</body>--%>
<%--</html>--%>
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
            background-color: lightgrey;
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
<script>
    function exit() {

        window.location = "home2.1.jsp"
    }

    let avatar = document.getElementById("avatar");
    let input = document.getElementById("input");

    input.onchange = (e) => {
        if (input.files[0]) avatar.src = URL.createObjectURL(input.files[0]);
    };


    // Lấy URL của bài viết
    var articleUrl = window.location.href;

    // Lấy thẻ button chia sẻ
    var shareButton = document.getElementById("shareButton");

    // Xử lý sự kiện khi người dùng nhấp vào nút chia sẻ
    shareButton.addEventListener("click", function() {
        // Tạo một phần tử input ẩn
        var input = document.createElement("input");
        input.setAttribute("type", "text");
        input.setAttribute("value", articleUrl);
        document.body.appendChild(input);

        // Sao chép nội dung của phần tử input vào clipboard
        input.select();
        document.execCommand("copy");

        // Xoá phần tử input
        document.body.removeChild(input);

        // Thông báo cho người dùng biết rằng URL đã được sao chép
        alert("URL của bài viết đã được sao chép!");
    });

</script>
<body>
<header>
    <div class="logo">
        <img src="https://i.imgur.com/vktfXKe.png" alt="Logo" style="height: 50px;">
        <h1>Trang web Tin tức</h1>
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
        <li><a href="/posts?action=listPosts">Bài đã đăng</a></li>
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
    <!-- Nội dung trang web ở đây -->

    <c:forEach var="userName" items="${userName}">
        <h1>Bài : ${userName.id}</h1>
        <h1>Tiêu đề: ${userName.title}</h1>
        <%--        <button onclick="exit()">exit</button>--%>
        <%--        <p>Nội dung: ${userName.content}</p>--%>
        <p>Time: ${userName.timestamp}</p>
        <p>Avatar: ${userName.avatar}</p>
        <%--    <img src="${userName.avatar}">--%>
        <img src="${userName.avatar}" height="500">

        <br>
        <a href="${userName.avatar}" target="_blank" title="FULL HD KHUM CHE">FULL HD KHUM CHE</a>
        <br>
        <p>Short content: ${userName.shortdescription}</p>
        <a href="/posts?action=show&id=${item.id}">show</a>

    </c:forEach>
    <button id="shareButton">Share</button>

</main>

<footer>
    <!-- Chân trang web ở đây -->
</footer>
</body>
</html>