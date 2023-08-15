<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
     
        div{
            padding: 0px;
            box-sizing: border-box;
        }
        .width{
            width: 200px;
        }
        #root {
        	border-bottom: 0.5px solid #dadada;
        	margin: auto;
        	padding-bottom: 20px;
        	width: 1350px;
        }
        .items{
            margin: auto;
            margin-top: 20px;   

            width: 1300px;
            height: 200px;
            display: flex;
        }
        .image{
            border: 0.5px solid #dadada;
        }

        .image:hover {
            /* 마우스 올렸을때 크기. */
            transform:scale(105%);
            /*  시간 0.5초 */
            transition-duration: 0.5s;
        }
       

        hr {
            margin-top: 20px;
            width: 1200px;
            color: #dadada;
        }
      
         /* title   */
        .title{   
            width: 700px;
            padding: 10px;
        }
        .title > div:nth-child(1){
            height: 150px;
            color: grey;
            font-weight: bold;
        }
        a{
            all: unset;
        }

        .title > div:nth-child(1):hover{
            cursor: pointer;
            text-decoration: underline;
        }
        .title > .score {
            display: flex;
        }
        .title > .score > div:nth-child(1){
            font-size: 10px;
        }
        .title > .score > div:nth-child(2){
            font-weight: bold;
            font-size: 12px;
            color: gray;
        }
        .title > .score > div {
            margin-right: 20px;
        }


        /* price  */
        .price {
            border-left: 0.5px solid #dadada;
            padding: 10px;
        }
        .price >div {
            margin-bottom: 5px;
        }
        .price > div:nth-child(1){
            font-weight: bold;
            font-size: 17px;
        }
        .price > div:nth-child(2){
            color: gray;
            font-size: 13px;
            display: flex;
        }
        .price > div:nth-child(2) > div:nth-child(2) {
            margin-left: 3px;
            color: red;
            font-weight: bold;
            font-size: 15px;
        }
        /* score */
        .score > div:nth-child(2) {
            font-weight: bold;
            font-size: 13px;
            color: rgb(53, 53, 53);
        }
         /* category  */
        .category {
            border-left: 0.5px solid #dadada;
            padding: 10px;
        }

        /* left */
        .left{
            border: 1px solid #dadada;
            width: 100px;
            height: 610px;
            position: fixed;
            left: 0;
            top: 80%;   
            transform: translate(0, -50%);
        }
        /* left */
        .left > div:hover {
            cursor: pointer;
            transform:scale(110%);
            transition-duration: 0.5s;
        }
        /* right */
        .right{
            width: 70px;
            height: 250px;
            position: fixed;
            top: 70%;   
            transform: translate(0, -50%);
            right: 0; 
        }
        .right > div {
            border-radius:10px;
            height: 50px;
            font-size: 15px;
            color: white;
            font-weight: bold;
            text-align: center;
            background-color: pink;
            padding-top: 20px;
        }
        .right > div:hover{
            border-radius: 40px;
            cursor: pointer;
            transform:scale(110%);
            transition-duration: 0.5s;
        }
     
    </style>
