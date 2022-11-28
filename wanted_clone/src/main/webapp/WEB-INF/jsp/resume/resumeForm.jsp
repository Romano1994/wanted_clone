<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="../css/styles.css">
    </head>
    <body>
	<!--  header -->
	<div>
		<jsp:include page="../../jsp/component/header.jsp"></jsp:include>
	</div>
        <div class="resume-form-wrapper">
            <div class="resume-form-cotainer">
                <div class="resumeForm-language-and-download">
                    <select class="resumeForm-language-select">
                         <option value="KR">한국어</option>
                         <option value="EN">English</option>
                         <option value="JP">日本語</option>
                         <option value="CH">繁體中文</option>
                    </select>
                    
                    <div class="resumeForm-download">
                    다운로드 로고
                        <i class="fa-sharp fa-solid fa-down-to-bracket"></i>
                    </div>
                </div>
                
                <form name="resumeForm" class="resume-form">
                    <div class="resume-form__wrapper">
                       <input type="text" class="formName" name="formName" value=${param.formName} ><br>
                       <input type="text" class="id" name="id" value=${id } ><br>
                       <input type="text" class="name" name="name" value=${name }><br>
                       <input type="text" class="tel" name="tel" value=${tel } ><br>
                       
                       <!-- 간단 소개글 -->
                       <div class="intorduce__txt">
                            간단 소개글
                        </div>
                        <div class="border"></div>
                        <div class="resume-form__introduce">
                            <div class="resume-form__describe">
                                <ul>
                                    <li>• 본인의 업무 경험을 기반으로 핵심역량과 업무 스킬을 간단히 작성해주세요.</li>
                                    <li>• 3~5줄로 요약하여 작성하는 것을 추천합니다!
                                </ul>
                            </div>
                            <div class="introduce-div">
                                   <textarea class="introduce" name="introduce" value=${param.introduce} ></textarea><br>
                              </div>
                        </div>
                        
                        <!-- 경력 -->
                        <div class="introduce-wrapper">
                            <div class="intorduce__txt">
                                경력
                            </div>
                            <div class="border"></div>
                            <div class="resume-form__describe">
                                <ul>
                                    <li>• 담당하신 업무 중 우선순위가 높은 업무를 선별하여 최신순으로 작성해주세요.</li>
                                    <li>• 신입의 경우, 직무와 관련된 대외활동, 인턴, 계약직 경력 등이 있다면 작성해주세요. </li>
                                    <li>• 업무 또는 활동 시 담당했던 역할과 과정, 성과에 대해 자세히 작성해주세요. </li>
                                    <li>• 업무 성과는 되도록 구체적인 숫자 혹은 [%]로 표현해주세요! </li>
                                    <li>• 커리어 조회 후 기업명이 실제와 다른 경우, 부서명/직책 란에 원하시는 기업명을 작성해주세요. </li>
                                </ul>
                            </div>
                        <input type="text" class="career" name="career" value=${career} ><br>
                        
                            <!-- 경력 추가 버튼 -->
                            <div class="add-btn-wrapper">
                                <button class="add__btn">
                                    <img alt="" src="/controller/img/resume/plus-solid.svg">
                                    <div class="add__btn__txt">
                                        추가
                                    </div>
                                </button>
                            </div>
                            <!-- 경력 추가 폼-->
                            <div class="add-career">
                                <div class="add-career__date">
                                    <input type="text" name="startYear" class="year" maxlength="4" placeholder="YYYY">
                                    .
                                    <input type="text" name="startMonth" class="month" maxlength="2" placeholder="MM">
                                    -
                                    <input type="text" name="endYear" class="year" maxlength="4" placeholder="YYYY">
                                    .
                                    <input type="text" name="endMonth" class="month" maxlength="2" placeholder="MM">
                                </div>
    
                                <div class="company-name">
                                    <input type="text" name="companyName" class="company-name__input" placeholder="회사명">
                                    <button class="close-btn">
                                        X
                                    </button>
                                </div>
                                <div class="department-name">
                                    <input type="text" name="department" class="department__input" placeholder="부서/직책">
                                </div>
                                <!-- 주요 성과 추가 버튼 -->
                                <div class="add-detail-btn-wrapper">
                                    <button class="add-career__btn">
                                        <img alt="" src="/controller/img/resume/plus-solid.svg">
                                        <div class="add__btn__txt">
                                            주요 성과 추가
                                        </div>
                                    </button>
                                </div>
                                <!-- 주요 성과 폼 -->
                                <div class="detail-name">
                                    <input type="text" name="outcome" class="detail-name__input" placeholder="중요 성과">
                                </div>
                                <div class="detail-date">
                                    <input type="text" name="startYear" class="year" maxlength="4" placeholder="YYYY">
                                    .
                                    <input type="text" name="startMonth" class="month" maxlength="2" placeholder="MM">
                                    -
                                    <input type="text" name="endYear" class="year" maxlength="4" placeholder="YYYY">
                                    .
                                    <input type="text" name="endMonth" class="month" maxlength="2" placeholder="MM">
                                </div>
                                <div class="detail-content">
                                    <input type="text" name="outcomeContent" class="detail-content__input" placeholder="상세 업무 내용과 성과를 기입해주세요">
                                </div>
                            </div>
                        </div>
    
                       <!-- 학력 -->
                       <div class="education-wrapper">
                            <div class="intorduce__txt">
                                학력
                            </div>
                            <div class="border"></div>
                            <div class="resume-form__describe">
                                <ul>
                                    <li>• 최신순으로 작성해주세요.</li>
                                </ul>
                            </div>
                            <input type="text" class="education" name="education" value=${education} ><br>
                            <!-- 경력 추가 버튼 -->
                            <div class="add-btn-wrapper">
                                <button class="add__btn">
                                    <img alt="" src="/controller/img/resume/plus-solid.svg">
                                    <div class="add__btn__txt">
                                        추가
                                    </div>
                                </button>
                            </div>
                            <!-- 경력 추가 폼-->
                            <div class="add-career">
                                <div class="add-career__date">
                                    <input type="text" name="startYear" class="year" maxlength="4" placeholder="YYYY">
                                    .
                                    <input type="text" name="startMonth" class="month" maxlength="2" placeholder="MM">
                                    -
                                    <input type="text" name="endYear" class="year" maxlength="4" placeholder="YYYY">
                                    .
                                    <input type="text" name="endMonth" class="month" maxlength="2" placeholder="MM">
                                </div>
    
                                <div class="company-name">
                                    <input type="text" name="schoolName" class="company-name__input" placeholder="학교명">
                                    <button class="close-btn">
                                        X
                                    </button>
                                </div>
                                <div class="department-name">
                                    <input type="text" name="major" class="department__input" placeholder="전공 및 학위 (ex: 경영학과 학사)">
                                </div>
                                <div class="department-name">
                                    <input type="text" name="content" class="department__input" placeholder="이수 과목 또는 연구 내용">
                                </div>
                            </div>
                        </div>  
    
                       <!-- 수상 -->
                        <div class="intorduce__txt">
                            수상
                        </div>
                        <div class="border"></div>
                        <div class="resume-form__describe">
                            <ul>
                                <li>• 수상 이력, 직무 관련 자격증, 수료한 교육이나 참석한 외부활동 등이 있다면 간략히 작성해주세요.</li>
                                <li>• 지원하는 회사에서 요구하는 경우가 아니라면 운전면허증과 같은 자격증은 생략하는 것이 좋습니다!</li>
                            </ul>
                        </div>
                       <input type="text" class="award" name="award" value=${award} ><br>
                       <!-- 수상 추가 버튼 -->
                       <div class="add-btn-wrapper">
                        <button class="add__btn">
                            <img alt="" src="/controller/img/resume/plus-solid.svg">
                            <div class="add__btn__txt">
                                추가
                            </div>
                        </button>
                      </div>
                    <!-- 수상 추가 폼-->
                        <div class="add-career">
                            <div class="add-career__date">
                            <input type="text" name="startYear" class="year" maxlength="4" placeholder="YYYY">
                            .
                            <input type="text" name="startMonth" class="month" maxlength="2" placeholder="MM">
                            -
                            <input type="text" name="endYear" class="year" maxlength="4" placeholder="YYYY">
                            .
                            <input type="text" name="endMonth" class="month" maxlength="2" placeholder="MM">
                        </div>
    
                        <div class="company-name">
                            <input type="text" name="activityName" class="company-name__input" placeholder="활동명">
                            <button class="close-btn">
                                X
                            </button>
                        </div>
                        <div class="department-name">
                            <input type="text" name="datail" class="department__input" placeholder="세부사항">
                        </div>
                    </div>
                        <!-- 외국어 -->
                        <div class="intorduce__txt">
                            외국어
                        </div>
                        <div class="border"></div>
                        <div class="resume-form__describe">
                            <ul>
                                <li>• 외국어 자격증을 보유한 경우 작성해주세요. </li>
                                <li>• 활용 가능한 외국어가 있다면, 어느정도 수준인지 레벨을 선택해주세요.</li>
                            </ul>
                        </div>
                        <input type="text" class="language" name="language" value=${language} ><br>
                            <div class="add-btn-wrapper">
                                <button button class="add__btn">
                                    <img alt="" src="/controller/img/resume/plus-solid.svg">
                                    <div class="add__btn__txt">
                                        추가
                                    </div>
                                </button>
                            </div>
                            <!-- 외국어 추가 폼-->
                            <div class="add-career">
                                <div class="add-career__date"></div>
    
                                <div class="company-name">
                                    <select name="languageName" class="language-name">
                                        <option value="Korean">한국어</option>
                                        <option value="English">영어</option>
                                        <option value="German">독일어</option>
                                        <option value="Spanish">스페인어</option>
                                        <option value="French">프랑스어</option>
                                    </select>
                                    <button class="close-btn" style="margin-left: 600px;">
                                        X
                                    </button>
                                </div>
    
                                <div class="department-name">
                                    <select name="standard" class="language-standard">
                                        <option value="">수준</option>
                                        <option value="fluent">유창함</option>
                                        <option value="businessConversation">비즈니스 회화</option>
                                        <option value="dailyConversation">일상 회화</option>
                                    </select>
                                </div>
                            </div>
                            <div class="link_txt">
                                링크
                            </div>
                            <div class="border"></div>
                            <div class="resume-form__describe">
                                <ul>
                                    <li>• 깃헙, 노션으로 작성한 포트폴리오, 구글 드라이브 파일 등 업무 성과를 보여줄 수 있는 링크가 있다면 작성해주세요. </li>
                                </ul>
                            </div>
                            <!-- 링크 추가 버튼 -->
                            <div class="add-btn-wrapper">
                                <button class="add__btn">
                                    <img alt="" src="/controller/img/resume/plus-solid.svg">
                                    <div class="add__btn__txt">
                                        추가
                                    </div>
                                </button>
                            </div>
                            <!-- 링크 추가 폼-->
                            <div class="company-name" style="padding-bottom: 80px;">
                                <input type="text" name="schoolName" class="company-name__input" placeholder="http://">
                                <button class="close-btn" style="margin-left: 180px;">
                                    X
                                </button>
                            </div>
    
                       <input type="text" class="writing" name="writing" ><br>
                       <input type="button" value="test" id="test">
                    </div>
                </form>
            </div>
        </div> <!-- resume-form-cotainer -->
        <footer class="resume-form-footer">
            <button class="tempSave">임시 저장</button>
            <button class="save">작성 완료</button>
        </footer>
    
        <script src="https://code.jquery.com/jquery-latest.min.js"></script>
        <script src="https://kit.fontawesome.com/1f61694686.js"
            crossorigin="anonymous"></script>
            
            <script type="text/javascript">
                $(".tempSave").click(function(){
                    $.ajax({
                        url: "resumeWrite",
                        type: "post",
                        data: $("#resumeForm").serialize(),
                        success: function(){
                            alert("등록완료")
                        },
                        error: function(request, status, error){
                            console.log("code: " + request.status)
                            console.log("message: " + request.responseText)
                            console.log("error: " + error);
                          }
                    });
                });
    
                //작성중인 이력서 블러오기
                $(function(){
                    $.ajax({
                        url: "/controller/resume/getWritingResume",
                        type: "post",
                        data: "formName=" + $(".formName").val(),
                        dataType: "json",
                        success: function(data){
                            $(".introduce").val(data.introduce);
                            $(".career").val(data.career);
                            $(".education").val(data.education);
                            $(".award").val(data.award);
                            $(".language").val(data.language);
                            $(".portfolio").val(data.fileName);
                            $(".writing").val(data.writing);
                        },
                        error: function(request, status, error, textStatus){
                            console.log("code: " + request.status);
                            console.log("message: " + request.responseText);
                            console.log("error: " + error);
                            console.log("textStatus: "+textStatus);
                        }
                    });
                });
            
            </script>
    </body>
    </html>