<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nguyenvanan
  Date: 08/11/2023
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %><html>
<head>
    <title>ListPosts</title>
    <style>
        /* Định dạng cho container chứa các bài viết */
        .post-container {
            display: grid;
            grid-template-columns: 1fr;
            grid-gap: 20px;
        }

        /* Định dạng cho từng bài viết */
        .post {
            background-color: #777777;
            padding: 20px;
            border-radius: 5px;
        }

        /* Định dạng cho tiêu đề bài viết */
        .post h2 {
            color: white;
        }

        /* Định dạng cho liên kết */
        .post a {
            color: white;
            margin-right: 5px;
        }
        .post .avatar img {
            width: 400px;
            height: auto;
        }
        button {
            background-color: brown;
        }
        body{
            background-image: url("https://i.imgur.com/gJES7XF.png");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }

        label {
            display: block;
            margin-top: 10px;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 5px;
            margin-top: 5px;
        }

        select {
            width: 100%;
            padding: 5px;
            margin-top: 5px;
        }

        input[type="submit"] {
            margin-top: 10px;
            padding: 10px 20px;
            background-color: black;
            color: #fff;
            border: none;
            cursor: pointer;

        }

        #title {
            width: 50%;
            background-color: seashell;
            border-radius: 5px;
        }

        #access {
            width: 15%;
            background-color: seashell;
        }

        body {
            background-color: #b3b3b3;
            color: Black;
        }

        #timestamp {
            width: 20%;
        }

        #title {
            font-family: Arial Unicode MS;
        }

        h1 {
            color: black;
        }

        .flex-container {
            display: -webkit-flex;
            display: flex;
            -webkit-flex-flow: row wrap;
            flex-flow: row wrap;
            text-align: center;
        }

        .flex-container>* {
            padding: 15px;
            -webkit-flex: 1 100%;
            flex: 1 100%;
        }

        .article {
            text-align: left;
            height: 200px;
        }

        header {
            background: black;
            color: whitesmoke;
        }

        footer {
            background: black;
            color: white;
            margin-top: 430px;
        }

        .nav {
            background: #eee;
        }

        .nav ul {
            list-style-type: none;
            padding: 0;
        }

        .nav ul a {
            text-decoration: none;
        }

        @media all and (min-width: 768px) {
            .nav {
                text-align: left;
                -webkit-flex: 1 auto;
                flex: 1 auto;
                -webkit-order: 1;
                order: 1;
            }

            .article {
                -webkit-flex: 5 0px;
                flex: 5 0px;
                -webkit-order: 2;
                order: 2;
            }

            footer {
                -webkit-order: 3;
                order: 3;
            }
        }

    </style>
</head>
<body>
<header>
    <button onclick="exit()">exit</button>

</header>
<%--<div align="center">--%>

<%--    <table border="1" cellpadding="5">--%>
<%--<caption><H1>Bài đã tạo</H1></caption>--%>
<%--<tr>--%>
<%--    <th>ID</th>--%>
<%--    <th>Title</th>--%>
<%--    <th>Timestamp</th>--%>
<%--&lt;%&ndash;    <th>Content</th>&ndash;%&gt;--%>

<%--    <th>Avatar</th>--%>
<%--    <th>Shortdescription</th>--%>
<%--&lt;%&ndash;    <th>Access</th>&ndash;%&gt;--%>
<%--</tr>--%>
<%--<c:forEach var="item" items="${listPosts}">--%>
<%--    <tr class="font">--%>
<%--&lt;%&ndash;        <td>${item.id}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <td>${item.title}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <td> ${item.content}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <td>${item.timestamp}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <td>${item.avatar}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <td>${item.shortdescription}</td>&ndash;%&gt;--%>

<%--        <td><c:out value="${item.id}"/></td>--%>
<%--        <td><c:out value="${item.title}"/></td>--%>
<%--&lt;%&ndash;        <td><c:out value="${item.content}"/></td>&ndash;%&gt;--%>
<%--        <td><c:out value="${item.timestamp}"/></td>--%>
<%--        <td><c:out value="${item.avatar}"/></td>--%>
<%--        <td><c:out value="${item.shortdescription}"/></td>--%>
<%--&lt;%&ndash;        <td><c:out value="${item.access}"/></td>&ndash;%&gt;--%>
<%--        <td>--%>
<%--            <a href="/posts?action=edit&id=${item.id}">Edit</a>--%>
<%--            <a href="/posts?action=delete&id=${item.id}">Delete</a>--%>
<%--            <a herf="">Show</a>--%>
<%--        </td>--%>



<%--        <td>--%>
<%--    </tr>--%>
<%--</c:forEach>--%>
<%--</table>--%>
<article class="article">
    <div class="post-container">
        <c:forEach var="item" items="${userName}">
            <div class="post">
                <h2><c:out value="${item.title}"/></h2>
                <p><c:out value="${item.timestamp}"/></p>
                <img src="<c:out value="${item.avatar}"/>">
                <p><c:out value="${item.shortdescription}"/></p>
                <a href="/posts?action=edit&id=${item.id}">Edit</a>
                <a href="/posts?action=delete&id=${item.id}">Delete</a>
                <a href="/posts?action=show&id=${item.id}">Show</a>
            </div>
        </c:forEach>
    </div>
</article>

<script>
    function exit(){
        window.location="home2.jsp"
    }

</script>
<footer>Copyright &copy; nhom1.com</footer>
</body>
</html>
