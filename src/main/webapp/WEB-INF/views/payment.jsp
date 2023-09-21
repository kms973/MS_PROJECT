<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<button onclick="requestPay()">결제하기</button>

<script>
const userCode = "imp14397622";
IMP.init(userCode);

function requestPay() {
  IMP.request_pay({
    pg: "html5_inicis",
    pay_method: "card",
    merchant_uid: "test_lmsshfh5",
    name: "테스트 결제",
    amount: 100,
    buyer_tel: "010-0000-0000",
    m_redirect_url: "http://localhost:8008",
  });
}
</script>

<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />

