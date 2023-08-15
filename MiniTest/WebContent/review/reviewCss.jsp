<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
div{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-size: 12px;
}
#form{
    width: 1300px;
    margin: auto;
    border: 1px dashed red;
}
a{
    all: unset;
}
#review-nav > #review-ul {
    display: flex;
    list-style: none;
    padding-left: 0;
    margin: 0;
    padding: 0;
}
#review-nav > #review-ul > li {
    flex: 1;
    height: 50px;
    line-height: 50px;
    text-align: center;
    font-size: 14px;
    color: #777777;
    border-bottom: 1px solid #dddddd;
    margin-bottom: -1px;
}
nav > ul > li:hover{
    border-bottom: 2px solid black;
    margin-bottom: -2px;
}
.flex{
    display: flex;
}
.review{
    width: 1000px;
    margin: auto;
    margin-bottom: -1px;
    border: 1px solid #dddddd;
    padding-bottom: 15px;
}
.review-title{
    margin: 15px;
    /* border: 1px dashed pink; */
}
.review-content, .review-product, .review-reply{
    margin: 10px 50px;
    /* border: 1px dashed pink; */
}

.comment-img{
    height: 42px;
}
.comment-img > img{
    margin-top: 5px;
    width: 32px;
    border-radius: 100%;
}
.comment-text{
    flex: 9;
}
.text-title{
    font-size: 14px;
    font-weight: bold;
    margin-left: 5px;
}
.text-detail > div{
    color: #AAAAAA;
    margin: 5px;
    padding-right: 7px;
    border-right: 1px solid #AAAAAA;
}
.text-detail > div:last-child{
    border: none;
}
.comment-like{
    flex: 0.5;
    line-height: 42px;
}
.review-content{
    padding: 15px 0;
    font-size: 15px;
    color: #000000;
}
.review-product  .reviewProduct-img > img{
    width: 45px;
    margin-bottom: 10px;
}
.review-product  .reviewProduct-text{
    margin-left: 8px;
    line-height: 23px;
}
.review-product  .reviewProduct-text > span{
    color: #AAAAAA;
}
.review-content > .content-img > img{
    width: 144px;
    margin-bottom: 10px;
}
.reply{
    border: 1px solid #dddddd;
    background-color: #f3f3f3;
    padding: 10px 15px;
    margin-bottom: -1px;
}
.review-reply> .reply  input{
    all: unset;
    box-sizing: border-box;
    height: 34px;
    padding: 5px 10px;
    border: 1px solid #dddddd;
    background-color: white;
    color: #b2b2b2;
}
.review-reply> .reply  input:first-child{
    width: 785px;
    margin-right: 5px;
}
.reply-comment{
    padding: 15px 10px;
    border: 1px solid #dddddd;
}
.reply-img{
    height: 79px;
    margin-right: 8px;
}
.reply-img > img{
    width: 79px;
    border-radius: 100%;
}
.reply-detail > div{
    color: #666666;
    margin: 10px 7px 10px 0;
    padding-right: 7px;
    border-right: 1px solid #AAAAAA;
}
.reply-detail > div:last-child{
    border: none;
}

</style>
</body>
</html>
