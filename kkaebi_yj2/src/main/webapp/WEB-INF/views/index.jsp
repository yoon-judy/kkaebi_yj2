<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인 홈페이지</title>
    <!-- Bootstrap CSS 링크 (CDN 사용) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
        }

        h1 {
            color: #FAA303;
            font-size: 3em;
            font-weight: bold;
        }

        .navbar {
            margin-bottom: 20px; /* 네비게이션 바와 콘텐츠 사이에 여백 추가 */
        }

        .content {
            padding: 50px 0;
        }

        /* 추가적인 스타일링 (필요시 추가) */
    </style>
</head>
<body>

    <!-- 상단바 (네비게이션 바) -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="/">홈</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/notice/list">관리자</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/noticeus/list">사용자</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- 본문 콘텐츠 -->
    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                <br>
                    <h1>메인 홈페이지</h1>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS 및 Popper.js (CDN 사용) -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
