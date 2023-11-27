<%--
  Created by IntelliJ IDEA.
  User: nguyenvanan
  Date: 12/10/2023
  Time: 09:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <style>


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
            background: #b3b3b3;
            color: black;
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

<div class="flex-container">
    <header>
        <h1>Post your article</h1>

    </header>

    <%--    <nav class="nav">--%>
    <%--        <ul>--%>
    <%--            <li><a href="#">Công nghệ</a></li>--%>
    <%--            <li><a href="#">Lập trình</a></li>--%>
    <%--            <li><a href="#">Video</a></li>--%>
    <%--        </ul>--%>
    <%--    </nav>--%>

    <article class="article">
        <form method="post" action="/posts?action=create">
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" required>

            <label for="content">Content:</label>
            <textarea id="content" name="content" required></textarea>

            <label for="timestamp">Time:</label>
            <input type="text" id="timestamp" name="timestamp" readonly>



            <label for="avatar">Avatar:</label>
            <%--    <textarea id="avatar" name="avatar" required></textarea>--%>
            <%--    <input type="text" id="avatar" name="avatar" readonly>--%>
            <input type="file" id="image-input">
            <img id="preview-image" src="#" alt="Ảnh xem trước">
            <input type="text" id="avatar" name="avatar" required>

            <label for="shortdescription">Shortdescript</label>
            <textarea id="shortdescription" name="shortdescription" required></textarea>

            <label for="access">Access:</label>
            <%--    <td>${post.accessAllowed}</td>--%>
            <select id="access" name="access">
                <option value="true">Public</option>
                <option value="false">Private</option>
            </select>


            <label>
                <input type="submit" value="Create" onclick="showNotification()">
            </labeL>
        </form>
        <script>
            function convertImageToURL(imageFile) {
                return new Promise((resolve, reject) => {
                    const reader = new FileReader();

                    reader.onload = (event) => {
                        resolve(event.target.result);
                    };

                    reader.onerror = (event) => {
                        reject(event.target.error);
                    };

                    reader.readAsDataURL(imageFile);
                });
            }

            const inputElement = document.getElementById('image-input');
            const previewImageElement = document.getElementById('preview-image');
            const imageUrlElement = document.getElementById('avatar');

            inputElement.addEventListener('change', (event) => {
                const imageFile = event.target.files[0];

                convertImageToURL(imageFile)
                    .then((imageUrl) => {
                        previewImageElement.src = imageUrl;
                        imageUrlElement.value = imageUrl;
                    })
                    .catch((error) => {
                        console.error('Lỗi:', error);
                    });
            });






            window.addEventListener('DOMContentLoaded', function() {
                // Lấy thời gian hiện tại
                var currentDate = new Date();

                // Định dạng thời gian
                var timestamp = currentDate.toLocaleString();

                // Gán giá trị cho trường thời gian đăng
                document.getElementById('timestamp').value = timestamp;
            });

            function showNotification() {
                alert("Created a successful post !");

            }


        </script>
    </article>
    <footer>Copyright &copy; nhom1.com</footer>
</div>
</body>

</html>
