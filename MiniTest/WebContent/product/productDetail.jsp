<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="test3.dao.ProductDAO"%>
<%@ include file="../header.jsp" %>
<%@ include file="productcss.jsp"%>
<c:set var="dao" value="${dao.getInstance() }"/>
	<main>
	<div class="container">
		<div id="prodImg">
			<img
				src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/9909210d-48ba-459e-96f4-faab32a41ce7/%EC%97%90%EC%96%B4-%EC%A1%B0%EB%8D%98-1-%EB%A1%9C%EC%9A%B0-%EC%97%AC%EC%84%B1-%EC%8B%A0%EB%B0%9C-FBbeey7u.png" />
		</div>
		<div id="prodInfo">
			<div id="prodCompany">나이키</div>
			<div id="prodName">
				<h3>에어 조던 1 로우</h3>
			</div>
			<div id="prodRank">
				<span class="rating-star"></span>19개 상품평
			</div>
			<div id="prodCategory">여성 신발</div>
			<div id="prodPrice">
				<div>
					20%,
					<del>139,000원</del>
				</div>
				<div>
					<h3>111,200원</h3>
				</div>
				<div class="circle">
					<img
						src="https://image6.coupangcdn.com/image/badges/cashback/web/list-cash-icon@2x.png" />
					최대 11,120원 적립
				</div>
			</div>
			<div id="prodShipping">
				<h4>무료배송</h4>
				<label><input type="radio"
					name="ship" checked /> 내일(화) 8/15 도착
					보장 (9시간 38분 내 주문 시 / 서울⋅경기 기준)</label><br /> <label><input
					type="radio" name="ship" /> 내일(화) 8/15 새벽 7시 전 도착 보장 (오후 8시 50분 전
					주문 시 / 서울⋅경기 기준)</label>
			</div>
			<div id="prodOption">
				<h3>사이즈(mm)</h3>
				<select name="size" id="prodsize">
					<option value="275"><span>265</span></option>
					<option value="275"><span>260</span></option>
					<option value="275"><span>255</span></option>
					<option value="275"><span>250</span></option>
					<option value="275"><span>245</span></option>
				</select>
				<h3>컬러</h3>
				<select name="color" id="prodcolor">
					<option value="white"><span>white</span></option>
					<option value="dark"><span>dark</span></option>
					<option value="grey"><span>grey</span></option>
					<option value="pink"><span>pink</span></option>
					<option value="ivory"><span>ivory</span></option>
				</select>

				<div class="flex">
					<h4>사이즈 :</h4>
					<span> 265</span>
				</div>
				<div class="flex">
					<h4>컬러 :</h4>
					<span> white</span>
				</div>
			</div>
			<div id="payment" class="flex">
				<input type="number" value="1" class="productnum" maxlength="6"
					autocomplete="off" /> <a href="#"><button
						class="bgblue">결제하기</button></a> <a href="#"><button
						class="bgwhite">장바구니에 담기</button></a>
			</div>
		</div>
		<div id="prodDetails">
			<ul class="detail" class="flex">
				<a id="detailmenu1" href="#"><li>상세정보</li></a>
				<a id="detailmenu2" href="#"><li>리뷰(100)</li></a>
				<a id="detailmenu3" href="#"><li>문의하기</li></a>
			</ul>
		</div>
	</div>
	<!-- 제품 상세 설명 -->
	<div id="prodExplain">
		<table>
			<tr>
				<th>제품의 주소재(운동화인 경우에는 겉감,안감을 구분하여 표시)</th>
				<td>상품 상세페이지 참조</td>
				<th>색상</th>
				<td>상품 상세페이지 참조</td>
			</tr>
			<tr>
				<th>치수</th>
				<td>상품 상세페이지 참조</td>
				<th>제조자(수입자)</th>
				<td>상품 상세페이지 참조</td>
			</tr>
			<tr>
				<th>제조국</th>
				<td>상품 상세페이지 참조</td>
				<th>취급시 주의사항</th>
				<td>상품 상세페이지 참조</td>
			</tr>
		</table>
		<img
			src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/9909210d-48ba-459e-96f4-faab32a41ce7/%EC%97%90%EC%96%B4-%EC%A1%B0%EB%8D%98-1-%EB%A1%9C%EC%9A%B0-%EC%97%AC%EC%84%B1-%EC%8B%A0%EB%B0%9C-FBbeey7u.png" />
		<img
			src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/e6c4e7fb-8221-405d-bb21-d7b07504269a/%EC%97%90%EC%96%B4-%EC%A1%B0%EB%8D%98-1-%EB%A1%9C%EC%9A%B0-%EC%97%AC%EC%84%B1-%EC%8B%A0%EB%B0%9C-FBbeey7u.png" />
	</div>
	<div id="Reviewform" class="hidden">
		<div class="review">
			<div class="review-title flex">
				<div class="comment-img">
					<img
						src="https://d3ha2047wt6x28.cloudfront.net/Hy-JwVDyTJo/pr:MEMBER_PROFILE/czM6Ly9pbWcuYS1ibHkuY29tL21lbWJlci9wcm9maWxlL2ltYWdlcy9kZWZhdWx0X3Byb2ZpbGVfaW1hZ2VfaW5fcmV2aWV3LnBuZw" />
				</div>
				<div class="comment-text">
					<div class="text-title">만족해요</div>
					<div class="text-detail flex">
						<div class="text-writer">김**</div>
						<div class="text-date">2023.05.26</div>
						<div class="text-views">👁️‍🗨️5</div>
					</div>
				</div>
				<div class="comment-like">👍105</div>
			</div>
			<div class="review-content">
				<div class="content-img">
					<img
						src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/9909210d-48ba-459e-96f4-faab32a41ce7/%EC%97%90%EC%96%B4-%EC%A1%B0%EB%8D%98-1-%EB%A1%9C%EC%9A%B0-%EC%97%AC%EC%84%B1-%EC%8B%A0%EB%B0%9C-FBbeey7u.png"
						alt="" />
				</div>
				<div class="content-text">
					상품오배송이 있었지만, 신속히 처리된 덕분에 빠른시일 내 상품 수령함!!<br /> 색감도좋고 착용감도좋고 두께감도 좋고
					빠지는게 없음!!
				</div>
			</div>
			<div class="review-reply">
				<div class="reply flex">
					<form method="post">
						<input type="text" name="reply" /> <input type="submit"
							value="댓글작성" />
					</form>
				</div>
				<div class="reply-comment flex">
					<div class="reply-img">
						<img
							src="https://d3ha2047wt6x28.cloudfront.net/Hy-JwVDyTJo/pr:MEMBER_PROFILE/czM6Ly9pbWcuYS1ibHkuY29tL21lbWJlci9wcm9maWxlL2ltYWdlcy9kZWZhdWx0X3Byb2ZpbGVfaW1hZ2VfaW5fcmV2aWV3LnBuZw" />
					</div>
					<div>
						<div class="reply-text">혹시 신발 어디껀가요?</div>
						<div class="reply-detail flex">
							<div class="reply-writer">김지훈입니다</div>
							<div class="reply-date">2022.09.14</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="review">
			<div class="review-title flex">
				<div class="comment-img">
					<img
						src="https://d3ha2047wt6x28.cloudfront.net/Hy-JwVDyTJo/pr:MEMBER_PROFILE/czM6Ly9pbWcuYS1ibHkuY29tL21lbWJlci9wcm9maWxlL2ltYWdlcy9kZWZhdWx0X3Byb2ZpbGVfaW1hZ2VfaW5fcmV2aWV3LnBuZw" />
				</div>
				<div class="comment-text">
					<div class="text-title">만족해요</div>
					<div class="text-detail flex">
						<div class="text-writer">김**</div>
						<div class="text-date">2023.05.26</div>
						<div class="text-views">👁️‍🗨️5</div>
					</div>
				</div>
				<div class="comment-like">👍105</div>
			</div>
			<div class="review-content">
				<div class="content-img">
					<img
						src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/9909210d-48ba-459e-96f4-faab32a41ce7/%EC%97%90%EC%96%B4-%EC%A1%B0%EB%8D%98-1-%EB%A1%9C%EC%9A%B0-%EC%97%AC%EC%84%B1-%EC%8B%A0%EB%B0%9C-FBbeey7u.png"
						alt="" />
				</div>
				<div class="content-text">
					상품오배송이 있었지만, 신속히 처리된 덕분에 빠른시일 내 상품 수령함!!<br /> 색감도좋고 착용감도좋고 두께감도 좋고
					빠지는게 없음!!
				</div>
			</div>
			<div class="review-reply">
				<div class="reply flex">
					<form method="post">
						<input type="text" name="reply" /> <input type="submit"
							value="댓글작성" />
					</form>
				</div>
				<div class="reply-comment flex">
					<div class="reply-img">
						<img
							src="https://d3ha2047wt6x28.cloudfront.net/Hy-JwVDyTJo/pr:MEMBER_PROFILE/czM6Ly9pbWcuYS1ibHkuY29tL21lbWJlci9wcm9maWxlL2ltYWdlcy9kZWZhdWx0X3Byb2ZpbGVfaW1hZ2VfaW5fcmV2aWV3LnBuZw" />
					</div>
					<div>
						<div class="reply-text">혹시 신발 어디껀가요?</div>
						<div class="reply-detail flex">
							<div class="reply-writer">김지훈입니다</div>
							<div class="reply-date">2022.09.14</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="review">
			<div class="review-title flex">
				<div class="comment-img">
					<img
						src="https://d3ha2047wt6x28.cloudfront.net/Hy-JwVDyTJo/pr:MEMBER_PROFILE/czM6Ly9pbWcuYS1ibHkuY29tL21lbWJlci9wcm9maWxlL2ltYWdlcy9kZWZhdWx0X3Byb2ZpbGVfaW1hZ2VfaW5fcmV2aWV3LnBuZw" />
				</div>
				<div class="comment-text">
					<div class="text-title">만족해요</div>
					<div class="text-detail flex">
						<div class="text-writer">김**</div>
						<div class="text-date">2023.05.26</div>
						<div class="text-views">👁️‍🗨️5</div>
					</div>
				</div>
				<div class="comment-like">👍105</div>
			</div>
			<div class="review-content">
				<div class="content-img">
					<img
						src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/9909210d-48ba-459e-96f4-faab32a41ce7/%EC%97%90%EC%96%B4-%EC%A1%B0%EB%8D%98-1-%EB%A1%9C%EC%9A%B0-%EC%97%AC%EC%84%B1-%EC%8B%A0%EB%B0%9C-FBbeey7u.png"
						alt="" />
				</div>
				<div class="content-text">
					상품오배송이 있었지만, 신속히 처리된 덕분에 빠른시일 내 상품 수령함!!<br /> 색감도좋고 착용감도좋고 두께감도 좋고
					빠지는게 없음!!
				</div>
			</div>
			<div class="review-reply">
				<div class="reply flex">
					<form method="post">
						<input type="text" name="reply" /> <input type="submit"
							value="댓글작성" />
					</form>
				</div>
				<div class="reply-comment flex">
					<div class="reply-img">
						<img
							src="https://d3ha2047wt6x28.cloudfront.net/Hy-JwVDyTJo/pr:MEMBER_PROFILE/czM6Ly9pbWcuYS1ibHkuY29tL21lbWJlci9wcm9maWxlL2ltYWdlcy9kZWZhdWx0X3Byb2ZpbGVfaW1hZ2VfaW5fcmV2aWV3LnBuZw" />
					</div>
					<div>
						<div class="reply-text">혹시 신발 어디껀가요?</div>
						<div class="reply-detail flex">
							<div class="reply-writer">김지훈입니다</div>
							<div class="reply-date">2022.09.14</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="question">
		<table>
			<tr>
				<th>작성자</th>
				<th>내용</th>
				<th>작성일</th>
			</tr>
			<tr>
				<td>김**</td>
				<td>아니 월요일날 시켰는데 언제 오나요??</td>
				<td>2023-08-12</td>
			</tr>
			<tr>
				<td>박**</td>
				<td>배송문의</td>
				<td>2023-08-12</td>
			</tr>
			<tr>
				<td>윤**</td>
				<td>택배 박스가 찢어지고 제품에 흠집이 많은 상태로 왔네요....</td>
				<td>2023-08-11</td>
			</tr>
		</table>
		<br />
		<br />
		<br />
		<br />
		<br />
		<br /> <br />
		<br />
		<br />
		<br />
		<br />
		<br /> <br />
		<br />
		<br />
		<br />
		<br />
		<br />
	</div>
	</main>
	<script>
            const open1 = () => {
                document
                    .getElementById("prodExplain")
                    .classList.remove("hidden");
                document.getElementById("Reviewform").classList.add("hidden");
                document.getElementById("question").classList.add("hidden");
            };

            const open2 = () => {
                document
                    .getElementById("Reviewform")
                    .classList.remove("hidden");
                document.getElementById("prodExplain").classList.add("hidden");
                document.getElementById("question").classList.add("hidden");
            };

            const open3 = () => {
                document.getElementById("question").classList.remove("hidden");
                document.getElementById("prodExplain").classList.add("hidden");
                document.getElementById("Reviewform").classList.add("hidden");
            };

            document
                .getElementById("detailmenu1")
                .addEventListener("click", open1);
            document
                .getElementById("detailmenu2")
                .addEventListener("click", open2);

            document
                .getElementById("detailmenu3")
                .addEventListener("click", open3);
        </script>
</body>
</html>