<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="test3.dao.ProductDAO"%>
<%@ include file="../header.jsp"%>
<%@ include file="list-style.jsp"%>

<c:set var="dao" value="${ProductDAO.getInstance() }" />

<!--광고(left)-->
<div class="left">
	<div>
		<a href=""><img
			src="https://static.coupangcdn.com/qa/cmg_paperboy/image/1691544430202/C2-B4.jpg"
			width="95px" height="118px"></a>
	</div>
	<div>
		<a href=""><img
			src="https://static.coupangcdn.com/ja/cmg_paperboy/image/1691544544465/C2-B9.jpg"
			width="95px" height="118px"></a>
	</div>
	<div>
		<a href=""><img
			src="https://static.coupangcdn.com/da/cmg_paperboy/image/1691544485569/C2-B8.jpg"
			width="95px" height="118px"></a>
	</div>
	<div>
		<a href=""><img
			src="https://static.coupangcdn.com/la/cmg_paperboy/image/1691544472395/C2-B6.jpg"
			width="95px" height="118px"></a>
	</div>
	<div>
		<a href=""><img
			src="https://static.coupangcdn.com/sa/cmg_paperboy/image/1691544500014/C2-B3.jpg"
			width="95px" height="118px"></a>
	</div>
</div>

<!--상품리스트(product)-->
<div id="root">
<c:choose>
	<c:when test="${empty param.cateid }">
		<c:forEach var="item" items="${dao.selectAll() }">
				<div class="items">
					<!--상품이미지-->
					<div class="width">
						<img class="image" src="${item.prodimage }" width="200px"
							height="196px">
					</div>
					<!--상품제목 평점, 리뷰수-->
					<div class="title">
						<div>
							<a href="${cpath }/product/productDetail.jsp?prodid=${item.prodid}">${item.prodname }</a>
						</div>
						<div class="score">
							<div>${item.grade }</div>
							<div>${item.quantity }</div>
						</div>
					</div>
					<!--상품가격,할인율-->
					<div class="price width">
						<div>
							<fmt:formatNumber value="${item.price }" />
							원
						</div>
						<div>
							<div>(${item.discount })%할인</div>
							<div>%↓</div>
						</div>
					</div>

					<!--카테고리(뭔지)-->
					<div class="category width">${dao.categoryName(item.cateid) }</div>

				</div>
				<!--end of items-->
			</c:forEach>
	</c:when>
	<c:otherwise>
		<c:forEach var="item" items="${dao.selectAll(param.cateid) }">
				
					<div class="items">
						<!--상품이미지-->
						<div class="width">
							<img class="image" src="${item.prodimage }" width="200px"
								height="196px">
						</div>
						<!--상품제목 평점, 리뷰수-->
						<div class="title">
							<div>
								<a href="">${item.prodname }</a>
							</div>
							<div class="score">
								<div>${item.grade }</div>
								<div>${item.quantity }</div>
							</div>
						</div>
						<!--상품가격,할인율-->
						<div class="price width">
							<div>
								<fmt:formatNumber value="${item.price }" />
								원
							</div>
							<div>
								<div>(${item.discount })%할인</div>
								<div>%↓</div>
							</div>
						</div>
	
						<!--카테고리(뭔지)-->
						<div class="category width">${dao.categoryName(item.cateid) }</div>
	
					</div>
					<!--end of items-->
				
				<!--end of  root-->
				</c:forEach>
		</c:otherwise>
</c:choose>
</div>


<!--광고(right)-->
<div class="right">
	<div class="best">
		<a href="${cpath}/product/list.jsp?cateid=1">베스트</a>
	</div>
	<div class="man">
		<a href="${cpath}/product/list.jsp?cateid=2">남성</a>
	</div>
	<div class="women">
		<a href="${cpath}/product/list.jsp?cateid=3">여성</a>
	</div>
	<div class="etc">
		<a href="${cpath}/product/list.jsp?cateid=4">악세사리</a>
	</div>
	<div class="basket">
		<a href="${cpath }/basket/basket.jsp">장바구니</a>
	</div>
</div>

</body>
</html>
