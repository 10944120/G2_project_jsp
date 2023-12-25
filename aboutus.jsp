<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>關於我們</title>
    <style>
         @import"../assets/css/aboutus.css";
    </style>
</head>
<body>
    <nav>
        <a href="cart.jsp"><img src="../assets/images/cart.png" class="cart"></a>
        <a href="member.jsp"><img src="../assets/images/teamwork.png" class="teamwork"></a>
        <div>
            <img src="../assets/images/search.png" class="search">
            <input type="search" placeholder="請輸入關鍵字" style="height: 40px;" class="search-txt">
        </div>
        <a href="back.jsp" class="back">後台登入</a>
        <a href="login.jsp" class="member">登入註冊</a>
        <a href="aboutus.jsp" class="about">關於我們</a>
        <a href="allproduct.jsp" class="product">商品總覽</a>
        <a href="index.jsp">
        <div class="title">
            <span style="animation-delay: 0s;">整</span>
            <span style="animation-delay: 0.2s;">人</span>
            <span style="animation-delay: 0.4s;">專</span>
            <span style="animation-delay: 0.6s;">家</span>
        </div>
        </a>
    </nav>
    <section>
        <table>
            <tr>
                <td>
                    <div class="bord">
                        <h1>網頁前端</h1>
                        <p>
                            王妤真<br>
                            資管二乙<br>
                            10944214
                        </p>
                        <p>
                            這次的期末專題，<br>
                            我覺得跟後端完全不是同個概念的東西，<br>
                            但我很慶幸我有確實地掌握所學的技巧，應用在專題上的內容看起來也很漂亮。<br>
                            雖然我一直不是個很有美感的人，<br>
                            很感謝我的組員跟朋友的審美觀，<br>
                            讓我能有這麼好一個作品呈現，<br>
                            也感謝後端的組員們有完美的製作！<br>
                        </p>
                        <div class="bord-photo">
                            <a href="https://www.facebook.com/profile.php?id=100004164316344" target="_blank"><img src="../assets/images/fb.png" class="bord-img"></a>
                            <a href="https://www.instagram.com/lillian08100/" target="_blank"><img src="../assets/images/ig.png" class="bord-img"></a>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="bord">
                        <div class="bord-col"><img src="../assets/images/fish.jpg" class="pic"></div>
                    </div>
                </td>
                <td>
                    <div class="bord">
                        <div class="bord-col"><img src="../assets/images/yunyu.jpg" class="pic"></div>
                    </div>
                </td>
                <td>
                    <div class="bord">
                        <h1>網頁前端</h1>
                        <p>
                            歐芸妤<br>
                            資管二乙<br>
                            10944218
                        </p>
                        <p>
                            我覺得這次做前端雖然比後端簡單很多，<br>
                            但美感的部分真的是一大難題，<br>
                            配色永遠配不出好看的顏色，<br>
                            整個版面的配置也調配很多次，<br>
                            才能調出好看的頁面，<br>
                            經過了這次的前端設計，<br>
                            我還是覺得如果當初先學前端再學後端，<br>
                            整個流程會順超級多，<br>
                            也謝謝這次的隊友們，大家都很讚<br>
                        </p>
                            <a href="https://www.facebook.com/Grace.ou.89/" target="_blank"><img src="../assets/images/fb.png" class="bord-img"></a>
                            <a href="https://www.instagram.com/yunyu_0105/" target="_blank"><img src="../assets/images/ig.png" class="bord-img"></a>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                <div class="bord">
                    <h1>網頁後端</h1>
                    <p>
                        江詠媛<br>
                        資管二甲<br>
                        10944120
                    </p>
                    <p>
                        這學期做後端才發現它不只是jsp，<br>
                        還需要結合資料庫的應用，<br>
                        雖然在過程中一直跑錯，<br>
                        真的很崩潰qq，<br>
                        組員們效率超讚也很好溝通，<br>
                        前端做的網頁真的是創意十足，<br>
                        很幸運能遇見這個團隊！<br>
                    </p>
                        <a href="https://www.facebook.com/profile.php?id=100004909891612" target="_blank"><img src="../assets/images/fb.png" class="bord-img"></a>
                        <a href="https://www.instagram.com/yung_yuan0331" target="_blank"><img src="../assets/images/ig.png" class="bord-img"></a>
                </div>
                </td>
                <td>
                    <div class="bord">
                        <div class="bord-col"><img src="../assets/images/circle.jpg" class="pic"></div>
                    </div>
                </td>
                <td>
                    <div class="bord">
                        <div class="bord-col"><img src="../assets/images/pa.jpg" class="pic"></div>
                    </div>
                </td>
                <td>
                    <div class="bord">
                        <h1>網頁後端</h1>
                        <p>
                            應賢霈<br>
                            資管二甲<br>
                            10944130
                        </p>
                        <p>
                            組員寫的網頁很有趣很漂亮，<br>
                            希望我們可以成功的讓網頁動起來，<br>
                            才剛開始便苦惱了很久，<br>
                            光是一個老師給的config檔就問題百出，<br>
                            放進去怎麼跑都是500，<br>
                            希望可以盡快解決，<br>
                            我想快點finished mission🤯🤯<br>
                        </p>
                            <a href="https://www.facebook.com/apple.24680/" target="_blank"><img src="../assets/images/fb.png" class="bord-img"></a>
                            <a href="https://www.instagram.com/lsabelpei/" target="_blank"><img src="../assets/images/ig.png" class="bord-img"></a>
                    </div>
                </td>
            </tr>
        </table>
    </section>
</body>
</html>