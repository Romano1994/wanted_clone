<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
    <link rel="stylesheet" href="../css/styles.css" />
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <section class="jobboard">
      <div class="jobboard__all-content">
        <div class="jobboard__all-content__information">
          <img src="../img/job/${jobDTO.img}" />
          <div class="jobboard__all-content__information__subject">
            ${jobDTO.subject}
          </div>
          <div class="jobboard__all-content__information__detail">
            <span>${jobDTO.company}</span>
            <span class="jobboard__all-content__information__detail__location"
              > ${jobDTO.location}</span
            >
          </div>
          <div class="jobboard__all-content__content">
            <pre>${jobDTO.content}</pre>
          </div>
          <div class="jobboard__all-content__date-location">
            <div>마감일</div>
            <div>상시</div>
          </div>
          <div class="jobboard__all-content__date-location"">
            <div>근무지역</div>
            <div>${jobDTO.companylocation}</div>
          </div>
          <div>지도</div>
        </div>
        <div class="jobboard__apply">
          <h4>채용보상금</h4>
          <div class="jobboard__apply__reward">
            <div>
              <span>추천인</span>
              <p>${jobDTO.reward}</p>
            </div>
            <div>
              <span>지원자</span>
              <p>${jobDTO.reward}</p>
            </div>
          </div>
          <input type="button" value="지원하기" />
        </div>
      </div>
    </section>
  </body>
</html>
