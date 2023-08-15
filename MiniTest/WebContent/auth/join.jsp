<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="joinCss.jsp" %>

	
    <div class="root">
        <div class="joinBox">
                <h1 class="join-logo">
                    <a href=""><img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FcBOzBQ%2FbtsrgVxv3dI%2F8Pk1uIVIhSQNvBZJJeqkXK%2Fimg.jpg" alt="logo"></a>
                </h1>        
            <main>
                <div class="join-main">
                    <div class="item-header">
                        <h4>회원정보를 입력해주세요</h4>
                    </div>
                    <div class="join-form">
                        <div class="id flex">
                            <div class="icon">✉️</div>
                            <p><input type="text" name="id" placeholder="아이디(이메일)" autofocus required></p>
                        </div>
                        <div class="pw flex">
                            <div class="icon">🔒</div>
                            <p><input type="password" name="pw" placeholder="비밀번호" required></p>
                        </div>
                        <div class="pw_check flex">
                            <div class="icon">🔐</div>
                            <p><input type="password" name="pw_check" placeholder="비밀번호 확인" required></p>
                        </div>
                        <div class="name flex">
                            <div class="icon">👤</div>
                            <p><input type="text" name="name" placeholder="이름" required></p>
                        </div>
                        <div class="phone flex">
                            <div class="icon">📱</div>
                            <p><input type="text" name="phone" placeholder="휴대폰 번호" required></p>
                        </div>
                    </div>
                    <div class="line"></div>
                    <div class="join-check">
                        <p>
                            <label><input type="checkbox">모두 확인하였으며 동의합니다.</label>
                        </p>
                        <article>
                            전체 동의에는 필수 및 선택 정보에 대한 동의가 포함되어 있으며, 개별적으로 동의를 선택 하실 수 있습니다. 선택 항목에 대한 동의를 거부하시는 경우에도 서비스 이용이 가능합니다.
                        </article>
                    </div>

                    <div class="join-check-checkBox">
                        <div class="checkList flex"><label style="width: 400px;">
                        <p><input type="checkbox" required>[필수] 만 14세 이상입니다.</p></label>
                        </div>
                        <div class="checkList flex"><label style="width: 395px;">
                        <p><input type="checkbox" required>[필수] 이용약관 동의</p></label>
                            <button>></button>
                        </div>
                        <div class="checkList flex"><label style="width: 395px;"><p><input type="checkbox" required>[필수] 전자금융거래 이용약관 동의</p></label>
                            <button>></button>
                        </div>
                        <div class="checkList flex"><label style="width: 395px;"><p><input type="checkbox" required>[필수] 개인정보 수집 및 이용 동의</p></label>
                            <button>></button>
                        </div>
                        <div class="checkList flex"><label style="width: 395px;"><p><input type="checkbox" required>[필수] 개인정보 제3자 제공 동의</p></label>
                            <button>> </button>
                        </div>
                        <div class="checkList flex"><label style="width: 395px;"><p><input type="checkbox">[선택] 마케팅 목적의 개인정보 수집 및 이용 동의</p></label>
                            <button>></button>
                        </div>
                        <div class="checkList flex"><label style="width: 395px;"><p><input type="checkbox">[선택] 광고성 정보 수신 동의</p></label>
                            <button>></button>
                        </div>
                        <div class="checkList flex"><label style="width: 400px;"><p><input type="checkbox" style="margin-left: 20px;">[선택] 이메일 수신 동의</p></label></div>
                        <div class="checkList flex"><label style="width: 400px;"><p><input type="checkbox" style="margin-left: 20px;">[선택] SMS, SNS 수신 동의</p></label></div>
                        <div class="checkList flex"><label style="width: 400px;"><p><input type="checkbox" style="margin-left: 20px;">[선택] 앱 푸시 수신 동의</p></label></div>
                    </div>
                </div>
                <div class="join-button">
                    <label>
                        <a href="">
                        동의하고 계속하기
                        </a>
                </label>
			</div>
            </main>
            <footer>
                 <!-- <article>
                     법인 고객이신가요?<br>
                     사업자 회원으로 전용 특가 해택을 누려보세요.
                 </article>
                 <a href="">쿠팡비즈 간편 가입 ></a> -->
                 <h6>©Mini Shop. All rights reserved.</h6>
            </footer>
                
        </div>
    </div>


</body>
</html>