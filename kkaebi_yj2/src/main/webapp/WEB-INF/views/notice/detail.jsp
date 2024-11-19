<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공지사항 상세보기</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        background-color: #f8f9fa;
    }
    .container {
        background-color: #ffffff;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
        color: #007bff;
        margin-bottom: 30px;
    }
    .form-group label {
        font-weight: bold;
    }
    .form-control {
        background-color: #f1f1f1;
        border-radius: 5px;
        border: 1px solid #ddd;
    }
    .btn-custom {
        padding: 10px 20px;
        font-size: 16px;
        border-radius: 5px;
    }
    .btn-custom-secondary {
        background-color: #6c757d;
        color: white;
        border: none;
    }
    .btn-custom-secondary:hover {
        background-color: #5a6268;
    }
    .btn-custom-info {
        background-color: #17a2b8;
        color: white;
        border: none;
    }
    .btn-custom-info:hover {
        background-color: #138496;
    }
</style>
</head>
<body>
    <div class="container mt-5">
        <h2>공지사항 상세보기</h2>
        <form action="${pageContext.request.contextPath}/notice/update" method="post">
            <!-- 공지사항 제목 -->
            <div class="form-group">
                <label for="notice_title">공지사항 제목</label>
                <input type="text" class="form-control" id="notice_title" name="notice_title" value="${notice.notice_title}" readonly>
            </div>

            <!-- 공지사항 내용 -->
            <div class="form-group">
                <label for="notice_content">공지사항 내용</label>
                <textarea class="form-control" id="notice_content" name="notice_content" rows="5" readonly>${notice.notice_content}</textarea>
            </div>

            <!-- 상태와 공지 대상 -->
            <div class="form-group form-row">
                <div class="col">
                    <label for="status">상태</label>
                    <select class="form-control" id="status" name="status" disabled>
                        <option value="1" ${notice.status == 1 ? 'selected' : ''}>1=활성화</option>
                        <option value="9" ${notice.status == 9 ? 'selected' : ''}>9=비활성화</option>
                    </select>
                </div>
                <div class="col">
                    <label for="notice_target">공지 대상</label>
                    <select class="form-control" id="notice_target" name="notice_target" disabled>
                        <option value="1" ${notice.notice_target == 1 ? 'selected' : ''}>전체</option>
                        <option value="2" ${notice.notice_target == 2 ? 'selected' : ''}>관리자</option>
                        <option value="3" ${notice.notice_target == 3 ? 'selected' : ''}>고객</option>
                    </select>
                </div>
            </div>

            <!-- 공지 시작일과 등록일 -->
            <div class="form-group form-row">
                <div class="col">
                    <label for="notice_st_date">공지 시작일</label>
                    <input type="date" class="form-control" id="notice_st_date" name="notice_st_date" value="${notice.notice_st_date}" readonly>
                </div>
                <div class="col">
                    <label for="regist_date">등록일자</label>
                    <input type="date" class="form-control" id="regist_date" name="regist_date" value="${notice.regist_date}" readonly>
                </div>
            </div>

            <!-- 공지 종료일과 만료일자 -->
            <div class="form-group form-row">
                <div class="col">
                    <label for="notice_end_date">공지 종료일</label>
                    <input type="date" class="form-control" id="notice_end_date" name="notice_end_date" value="${notice.notice_end_date}" readonly>
                </div>
                <div class="col">
                    <label for="expire_date">만료일자</label>
                    <input type="date" class="form-control" id="expire_date" name="expire_date" value="${notice.expire_date}" readonly>
                </div>
            </div>

            <!-- 등록자와 해제자 -->
            <div class="form-group form-row">
                <div class="col">
                    <label for="regist_id">등록자</label>
                    <input type="text" class="form-control" id="regist_id" name="regist_id" value="${notice.regist_id}" readonly>
                </div>
                <div class="col">
                    <label for="expire_id">해제자</label>
                    <input type="text" class="form-control" id="expire_id" name="expire_id" value="${notice.expire_id}" readonly>
                </div>
            </div>

            <!-- 최종 수정자 및 수정일자 -->
            <div class="form-group form-row">
                <div class="col">
                    <label for="last_chg_id">최종 수정자</label>
                    <input type="text" class="form-control" id="last_chg_id" name="last_chg_id" value="${notice.last_chg_id}" readonly>
                </div>
                <div class="col">
                    <label for="last_chg_date">최종 수정일자</label>
                    <input type="date" class="form-control" id="last_chg_date" name="last_chg_date" value="${notice.last_chg_date}" readonly>
                </div>
            </div>

            <!-- 수정 및 삭제 버튼 -->
            <div class="form-group text-center">
                <a href="${pageContext.request.contextPath}/notice/list" class="btn btn-custom-secondary">목록</a>
            </div>
        </form>
    </div>
</body>
</html>
