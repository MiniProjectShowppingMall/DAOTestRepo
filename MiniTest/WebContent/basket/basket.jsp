<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test3.*"%>
    <%@ include file="basketCss.jsp" %>
    <%@ include file="../header.jsp" %>
    
<c:set var="dao" value="${userDAO.getInstance()}" />
<c:set var="list" value="${dao.selectList()}"/>

	
    <div id="title">
        <table>
            <thead id="bascket-thead">
                <tr id="bascket-head">
                    <th scope="col"><label>
                        <input type="checkbox" checked class="all-select">전체선택
                    </label>
                    </th>
                    <th scope="colgroup" id="th-product-box">상품정보</th>
                    <th scope="col" id="th-price">상품금액</th>
                    <th scope="col"  id="th-delecery-fee">삭제</th>
                </tr>
            </thead>
            <tbody>
             <tr>
                    <td colspan="4" id="bascket-bundle">판매자배송상품</td>
                </tr>
            <c:forEach var="dto" items="${list}">
                <tr class="bascket-list">
                    <td class="bascket-checkbox">
                        <label>
                            <input type="checkbox" checked class="bascket-checkbox">
                        </label>
                    </td>
                    <td  class="product-box">
                        <a href=""><img src="${dto.prodimage}" alt="" class="bascket-img"></a>
                        <div class="product-info">
                        <div class="product-name">[${dto.category}]${dto.prodname }</div>
                        <div class="product-count">
                        	<select class="product-select">
                        		<option id="quantity" value="${dto.quantity}">수량 : ${dto.quantity}</option>
                        		<c:forEach begin="2" end="10"  var="i">
                        			<option value="${i}">수량:${i}</option>
                        		</c:forEach>
                        	</select>
                 				
                        </div>
                        <div id="totalPrice"></div>
                        </div>
                    </td>
                    <td class="product-price"><fmt:formatNumber pattern="#,###">${dto.price}</fmt:formatNumber>원</td>
                    <td class="product-deleteBtn"><a href=""><button>×</button></a></td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
        		<div id="bascket-bottomBtn">
        		<a href="" ><button class="keep-shopping">쇼핑계속하기</button></a>
        		<a href="" ><button class="buy-product">상품 결제하기</button></a>
        		</div>
    </div>

</body>

</html>