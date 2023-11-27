<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nguyenvanan
  Date: 12/10/2023
  Time: 09:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Management Application</title>
    <style>
        body{
            /*background-image: url("https://png.pngtree.com/thumb_back/fw800/background/20210707/pngtree-cute-cartoon-black-and-white-cosmic-lineart-astronaut-background-image_736760.jpg");*/
            /*  background-size: cover;*/
            /*  background-repeat: no-repeat;*/
            /*  background-position: center;*/
            background-color: #b3b3b3;

        }
        a{
            color: brown;
        }
        .submit{
            background-color: brown;
        }
        button{
            background-color:blanchedalmond;
            width: auto;
            height: auto;
        }

        .font{
            font-family: Arial, sans-serif;

        }
        table{
            background-color: whitesmoke;
        }
        .article {
            text-align: left;
            height: 200px;
        }

        header {
            background: whitesmoke;
            color: black;
            height: 50px;
        }

        footer {
            background: whitesmoke;
            color: white;
            margin-top: 580px;
            height: 50px;
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
<script>


</script>
<center>
    <header>

    </header>


</center>
<article class="article">

    <div align="center" class="font">
        <form method="post">
            <table border="1" cellpadding="5">
                <caption>
                    <h2>
                        Edit Posts
                    </h2>
                </caption>
                <c:if test="${userName != null}">
                    <input type="hidden" name="id" value="<c:out value='${userName.id}' />" />
                </c:if>
                <tr>
                    <th>Title:</th>
                    <td>
                        <input type="text" name="title" size="45"
                               value="${userName != null ? userName.title : ''}"
                               required/>
                    </td>
                </tr>
                <tr>
                    <th>Content:</th>
                    <td>
                        <input type="text" name="content" size="45"
                               value="${userName != null ? userName.content : ''}"
                               required />
                    </td>
                </tr>
                <tr>
                    <th>Avatar:</th>
                    <td>
                        <%--          <input type="text" name="avatar" size="45"--%>
                        <%--                 value="${userName != null ? ravatar : ''}"--%>
                        <%--                 required />--%>
                        <label for="avatar">Avatar:</label>
                        <%--    <textarea id="avatar" name="avatar" required></textarea>--%>
                        <%--    <input type="text" id="avatar" name="avatar" readonly>--%>
                        <input type="file" id="image-input">
                        <img id="preview-image" src="#" alt="Ảnh xem trước">
                        <input type="text" id="avatar" name="avatar" value="${userName != null ? userName.avatar : ''}" required>

                    </td>
                </tr>
                <tr>
                    <th>Short description:</th>
                    <td>
                        <input type="text" name="shortdescription" size="45"
                               value="${userName != null ? userName.shortdescription : ''}"
                               required />
                    </td>
                </tr>
                <tr>
                    <th>Access:</th>
                    <td>
                        <select id="access" name="access">
                            <option value="true" ${userName != null && userName.access ? 'selected' : ''}>Public</option>
                            <option value="false" ${userName != null && !userName.access ? 'selected' : ''}>Private</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" class="submit" value="Save" onclick="alert1()" />
                    </td>
                </tr>
                <%--          <a href="posts?action=listPosts">exit</a>--%>
                <%--        <button onclick="listPosts">exit</button>--%>
                </td>
                </tr>
            </table>
        </form>
    </div>
</article>
<script>
    // function listPosts(){
    //     window.location="posts/list.jsp"
    // }

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
</script>

<footer>Copyright &copy; nhom1.com</footer>
</div>
</body>
</html>