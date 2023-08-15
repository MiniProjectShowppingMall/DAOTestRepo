<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	
.root{
    margin: auto;
    width: 1300px;
    /* border: 1px dashed purple; */
}
a{
    all: unset;
    color: inherit;
    cursor: pointer;
}
.joinBox{
    /* border: 1px dashed red; */
    max-width: 460px;
    min-width: 290px;
    margin: auto;
    width: auto;
    box-sizing: border-box;
}
.join-logo img{
    box-sizing: border-box;
    width: 100%;
    height: 100px;
}
.flex{
    display: flex;
}
.item-header > h4{
    margin: 22px 10px;
}
.join-form p{
    box-sizing: border-box;
    margin: 10px;
    font-weight: bold;
}
.join-form input{
    all: unset;
}
.join-form input::placeholder{
    color: #bebdbd;
    
}
.join-form .icon{
    /* border: 1px dashed red; */
    box-sizing: border-box;
    margin: left;
    width: 40px;
    text-align: center;
    line-height: 34px;
    font-size: 1.3rem;
    background-color: #f5f6f7;
}
.join-form > div{
    box-sizing: border-box;
    margin: 10px;
    border: 1.5px solid #d2d2d2;
    height: 45px;
}
.line{
    border: 0.5px solid #eeecec;
}
.join-check{
    margin: 10px;

}
.join-check a{
    font-weight: bold;
}
.join-check > p{
    margin: 10px 0;
}
.join-check article{
    box-sizing: border-box;
    margin-left: 15px;
    padding: 0;
    font-size: 0.8rem;
}
.join-check-checkBox{
    border: 0.5px solid #cacaca;
    margin: 10px;
    padding: 10px;
}

.join-check-checkBox a{
    font-size: 0.9rem;
}

.join-check-checkBox  p{
    line-height:25px;
    margin: 8px 0;
    cursor: pointer;
    /* border: 1px dashed green; */
}
.join-check-checkBox > div > button{
    all: unset;
    margin-right: 10px;
    font-weight: bold;
    cursor: pointer;
    
}
.join-button{
    box-sizing: border-box;
    height: 50px;
    line-height: 50px;
    background-color: #3b3bf6;
    color: white;
    font-weight: bold;
    text-align: center;
    box-shadow: 1px 1px 1px black;
    margin: 10px;;
}
footer{
    padding: 10px;;
    text-align: center;
}
footer article{
    font-size: 0.8rem;
    margin: 10px 0;
}
footer > a{
    font-weight: bold;
}
.detail{
    border: 1px dashed red;
    position: absolute;
    width: 400px;
    height: 800px;
    overflow: auto;
    background-color: white;
    top: 50px;
    left: -50px;
}
</style>

</body>
</html>