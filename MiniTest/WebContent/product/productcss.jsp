<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
* {
	padding: 0;
	margin: 0;
}

main {
	width: 1300px;
	border: 1px solid black;
	margin: 0 auto;
}

ul {
	display: flex;
	list-style: none;
}

a {
	text-decoration: none;
}

.flex {
	display: flex;
}

.container {
	width: 100%;
	display: flex;
	flex-wrap: wrap;
}

#prodImg {
	width: 535px;
	margin-right: 20px;
}

#prodImg>img {
	width: 100%;
	border-radius: 10px;
	height: auto;
}

#prodInfo {
	width: 740px;
}

#prodInfo>div {
	padding-top: 10px;
	margin-bottom: 10px;
}

#prodCompany {
	color: blue;
}

.rating-star {
	background-position-y: 0.5px;
	width: 75px;
	height: 14px;
	content: "";
	display: block;
	background-size: 15px;
	background-image:
		url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyMSIgdmlld0JveD0iMCAwIDIzIDIxIj4KICAgIDxwYXRoIGZpbGw9IiNGRjk2MDAiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTExLjg0My40OTZMMTUgNi4zNjhsNi42OTQgMS4xMTljLjc1NC4xMjUuOTMyLjY2LjM5OCAxLjE5N2wtNC43NDQgNC43NDguOTgxIDYuNTYyYy4xMS43NC0uMzU3IDEuMDcyLTEuMDQyLjc0bC02LjA4Ny0yLjk0LTYuMDg3IDIuOTRjLS42ODUuMzMyLTEuMTUyIDAtMS4wNDItLjc0bC45OC02LjU2MkwuMzA4IDguNjg0Yy0uNTM0LS41MzYtLjM1Ni0xLjA3Mi4zOTgtMS4xOTdMNy40IDYuMzY4IDEwLjU1Ny40OTZjLjM1NS0uNjYxLjkzMS0uNjYxIDEuMjg2IDAiLz4KPC9zdmc+Cg==");
}

#prodRank {
	font-size: 13px;
	display: flex;
	color: blue;
	margin-bottom: 10px;
}

#prodCategory {
	border-top: 1px solid #eee;
	padding-top: 10px;
}

#prodPrice h3 {
	color: crimson;
}

#prodPrice>div {
	margin: 5px 0;
}

.circle {
	font-size: 14px;
	display: inline-block;
	box-sizing: content-box;
	border: 1px solid #eee;
	border-radius: 10px;
	padding: 5px 10px;
}

.circle>img {
	display: inline-block;
	width: 14px;
	margin-top: 2px;
	vertical-align: top;
}

#prodShipping {
	padding-top: 10px;
	border-top: 1px solid grey;
	font-size: 16px;
}

#prodShipping>label>input {
	margin: 10px 10px;
}

#prodOption {
	border-top: 1px solid #eee;
	padding-top: 10px;
}

#prodOption>select {
	font-weight: normal;
	width: 100px;
	padding: 5px 10px;
}

#prodsize>option {
	font-weight: normal;
	font-size: 16px;
}

#prodcolor>option {
	font-weight: normal;
	font-size: 16px;
}

#payment {
	border-top: 1px solid #eee;
	padding-top: 30px;
	height: 60px;
	justify-content: space-around;
}

#payment>input[type="number"] {
	width: 80px;
	height: 60px;
	outline: none;
	font-size: 24px;
}

#payment>a>button {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 250px;
	height: 60px;
	padding: 20px 10px;
	font-weight: 700;
	font-size: 20px;
	outline: none;
	cursor: pointer;
}

.bgblue {
	background-color: #4167f1;
	color: white;
	border: none;
}

.bgwhite {
	background-color: white;
	color: #4167f1;
	border: 1px solid grey;
}

#prodDetails {
	width: 998px;
	margin: 0 auto;
	margin-top: 20px;
	border-top: 2px solid black;
}

.detail {
	justify-content: space-between;
}

.detail li {
	font-weight: 700;
	border: 1px solid black;
	width: 300px;
	text-align: center;
	padding: 30px 15px;
}

.detail li:active {
	border-bottom: none;
}

#prodExplain {
	width: 100%;
}

#prodExplain>img {
	width: 100%;
	height: auto;
}

#prodExplain>table {
	width: 100%;
	margin: 0 auto;
	margin-top: 30px;
	border-collapse: collapse;
}

table {
	border-collapse: collapse;
}

th, td {
	padding: 10px;
	border: 1px solid grey;
}

th {
	background-color: #f1f1f1;
}

td {
	width: 500px;
}

div {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

#Reviewform {
	width: 1300px;
	margin: auto;
}

a {
	all: unset;
}

#review-nav>#review-ul {
	display: flex;
	list-style: none;
	padding-left: 0;
	margin: 0;
	padding: 0;
}

#review-nav>#review-ul>li {
	flex: 1;
	height: 50px;
	line-height: 50px;
	text-align: center;
	font-size: 14px;
	color: #777777;
	border-bottom: 1px solid #dddddd;
	margin-bottom: -1px;
}

nav>ul>li:hover {
	border-bottom: 2px solid black;
	margin-bottom: -2px;
}

.flex {
	display: flex;
}

.review {
	width: 1000px;
	margin: auto;
	margin-bottom: -1px;
	border: 1px solid #dddddd;
	padding-bottom: 15px;
}

.review-title {
	margin: 15px;
	/* border: 1px dashed pink; */
}

.review-content {
	margin: 10px 50px;
	/* border: 1px dashed pink; */
}

.review-reply {
	margin: 10px 50px;
	/* border: 1px dashed pink; */
}

.comment-img {
	height: 42px;
}

.comment-img>img {
	margin-top: 5px;
	width: 32px;
	border-radius: 100%;
}

.comment-text {
	flex: 9;
}

.text-title {
	font-size: 14px;
	font-weight: bold;
	margin-left: 5px;
}

.text-detail>div {
	color: #aaaaaa;
	margin: 5px;
	padding-right: 7px;
	border-right: 1px solid #aaaaaa;
}

.text-detail>div:last-child {
	border: none;
}

.comment-like {
	flex: 0.5;
	line-height: 42px;
}

.review-content {
	padding: 15px 0;
	font-size: 15px;
	color: #000000;
}

.review-content>.content-img>img {
	width: 144px;
	margin-bottom: 10px;
}

.reply {
	border: 1px solid #dddddd;
	background-color: #f3f3f3;
	padding: 10px 15px;
	margin-bottom: -1px;
}

.review-reply>.reply input {
	all: unset;
	box-sizing: border-box;
	height: 34px;
	padding: 5px 10px;
	border: 1px solid #dddddd;
	background-color: white;
	color: #b2b2b2;
}

.review-reply>.reply input:first-child {
	width: 785px;
	margin-right: 5px;
}

.reply-comment {
	padding: 15px 10px;
	border: 1px solid #dddddd;
}

.reply-img {
	height: 79px;
	margin-right: 8px;
}

.reply-img>img {
	width: 79px;
	border-radius: 100%;
}

.reply-detail>div {
	color: #666666;
	margin: 10px 7px 10px 0;
	padding-right: 7px;
	border-right: 1px solid #aaaaaa;
}

.reply-detail>div:last-child {
	border: none;
}

.hidden {
	display: none;
}

#question {
	width: 100%;
	margin: 20px auto;
}

#question>table {
	width: 1000px;
	margin: 0 auto;
	text-align: center;
}

#question>table {
	border-collapse: collapse;
}

#question th, td {
	font-weight: 700;
	padding: 10px;
	border: 1px solid grey;
}

#question th {
	background-color: #4167f1;
	color: white;
}

#question td {
	width: 500px;
}
</style>
</body>
</html>