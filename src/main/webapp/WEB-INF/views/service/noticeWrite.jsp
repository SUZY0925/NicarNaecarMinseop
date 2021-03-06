<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/service/sidebar.jsp"></jsp:include>
<script>
$(function() {
	$("#writeOK").on("click", function() {
		$("#noticeForm").attr("action","/service/noticeWrite").submit();
	})
})
</script>
<div class="col-md-9">
<h2>Notice</h2>
   <div class="card">
    <div class="card-body">
        <!--Table-->
        <form:form id="noticeForm" method="post">
        <table class="table table-responsive-md table-fixed">
            <tbody>
                <tr>
                    <td>글 제목</td>
                    <td colspan="4"><input type="text" name="ntitle" class="form-control"/></td>
                </tr>
                <tr>
                    <td>글 내용</td>
                    <td colspan="4"><textarea rows="5" id="ncontent" name="ncontent" class="form-control">${view.ncontent }</textarea></td>
                </tr>
                <tr>
                    <td>작성자 이메일</td>
                    <td colspan="4"><input type="text" name="eemail" value="${user.username }" readOnly class="form-control"/></td>
                </tr>
                <tr>
                	<td><button id="writeOK" class="btn btn-primary">작성하기</button></td>
                	
                	<td colspan="4" align="right"><a href="/service/notice" class="btn btn-primary">목록으로</a></td>
                </tr>
            </tbody>
        </table>
        </form:form>
        <!--Table-->
    </div>
</div>

</div>

</div>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>