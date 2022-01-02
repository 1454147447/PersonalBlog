﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="diary.aspx.vb" Inherits="diary" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width" />
    <meta name="author" content="www.yanshisan.cn" />
    <meta name="robots" content="all" />
    <title>日记</title>
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="layui/css/layui.css" />
    <link rel="stylesheet" href="css/master.css" />
    <link rel="stylesheet" href="css/gloable.css" />
    <link rel="stylesheet" href="css/nprogress.css" />
    <link rel="stylesheet" href="css/timeline.css" /> 
</head>
<body>
    <div class="header">
    </div>
    <header class="gird-header">
        <div class="header-fixed">
            <div class="header-inner">
                <a href="javascript:void(0)" class="header-logo" id="logo">Mr.Yss</a>
                <nav class="nav" id="nav">
                    <ul>
                        <li><a href="index.aspx">首页</a></li>
                        <li><a href="article.aspx">博客</a></li>
                        <li><a href="message.aspx">留言</a></li>
                        <li><a href="link.aspx">友链</a></li>
                    </ul>
                </nav>
                <a href="#" class="blog-user">
                    <i class="fa fa-qq"></i>
                </a>
                <a class="phone-menu">
                    <i></i>
                    <i></i>
                    <i></i>
                </a>
            </div>
        </div>
    </header>
    <div class="doc-container" id="doc-container">
         <div class="container-fixed">
            <div class="timeline-box shadow">
                <div class="timeline-main">
                    <h1><i class="fa fa-clock-o"></i>日记</h1>
                    <div class="timeline-line"></div>
                        <div class="timeline-year">
                            <h2><a class="yearToggle">2018 年</a><i class="fa fa-caret-down fa-fw"></i></h2>
                            <div class="timeline-month">
                                <ul>
                                                <li>
                                                    <div class="h4 animated fadeInLeft">
                                                        <p class="date">10月16日</p>
                                                    </div>
                                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                                    <div class="content animated fadeInRight">江湖路远，有缘再见。</div>
                                                    <div class="clear"></div>
                                                </li>
                                                <li>
                                                    <div class="h4 animated fadeInLeft">
                                                        <p class="date">08月12日</p>
                                                    </div>
                                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                                    <div class="content animated fadeInRight">花光所有运气遇见你。</div>
                                                    <div class="clear"></div>
                                                </li>
                                                <li>
                                                    <div class="h4 animated fadeInLeft">
                                                        <p class="date">08月10日</p>
                                                    </div>
                                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                                    <div class="content animated fadeInRight"><p><span>没人在乎你怎样在深夜痛哭，也没人在乎你辗转反侧的要熬几个秋。外人只看结果，自己要独撑过程。等我们都明白了这个道理，便不会再在人前矫情，四处诉说以求宽慰。</span></p></div>
                                                    <div class="clear"></div>
                                                </li>
                                                <li>
                                                    <div class="h4 animated fadeInLeft">
                                                        <p class="date">06月28日</p>
                                                    </div>
                                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                                    <div class="content animated fadeInRight"><p><span>当你的才华还撑不起你的野心时，那你就应该静下心来学习。</span></p></div>
                                                    <div class="clear"></div>
                                                </li>
                                                <li>
                                                    <div class="h4 animated fadeInLeft">
                                                        <p class="date">06月26日</p>
                                                    </div>
                                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                                    <div class="content animated fadeInRight"><p>6.29 江湖再见</p></div>
                                                    <div class="clear"></div>
                                                </li>
                                                <li>
                                                    <div class="h4 animated fadeInLeft">
                                                        <p class="date">05月24日</p>
                                                    </div>
                                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                                    <div class="content animated fadeInRight"><p><span>林花谢了春红，太匆匆，无奈朝来寒雨晚来风。</span><span>胭脂泪，相留醉，几时重？自是人生长恨水长东。&nbsp; &nbsp;&nbsp;</span><span>——李煜《相见欢》</span></p></div>
                                                    <div class="clear"></div>
                                                </li>
                                                <li>
                                                    <div class="h4 animated fadeInLeft">
                                                        <p class="date">05月04日</p>
                                                    </div>
                                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                                    <div class="content animated fadeInRight"><p style="text-align: left;"><span>今生今世，我们所走的路都错了，时间不对，地点也不对&nbsp; &nbsp; &nbsp;</span>来生，我们再会，来生，我会等你&nbsp; &nbsp;&nbsp;<span style="text-align: right;">——</span>爱有来生</p></div>
                                                    <div class="clear"></div>
                                                </li>
                                                <li>
                                                    <div class="h4 animated fadeInLeft">
                                                        <p class="date">05月03日</p>
                                                    </div>
                                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                                    <div class="content animated fadeInRight"><p><span>人面不知何处去，桃花依旧笑春风。</span><span class="c-gray c-gap-left-small op-imprecise-author">&nbsp;——</span>崔护《题都城南庄》</p></div>
                                                    <div class="clear"></div>
                                                </li>
                                                <li>
                                                    <div class="h4 animated fadeInLeft">
                                                        <p class="date">04月15日</p>
                                                    </div>
                                                    <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>
                                                    <div class="content animated fadeInRight"><p>博客正式上线，这也是我第一个网站。&nbsp; &nbsp;--2018年4月15号</p></div>
                                                    <div class="clear"></div>
                                                </li>
                                    
                                </ul>
                            </div>
                        </div>
                    <h1 style="padding-top:4px;padding-bottom:2px;margin-top:40px;"><i class="fa fa-hourglass-end"></i>THE END</h1>
                </div>
            </div>
        </div>
    </div>
    <footer class="grid-footer">
        <div class="footer-fixed">
            <div class="copyright">
                <div class="info">
                    <div class="contact">
                        <a href="javascript:void(0)" class="github" target="_blank"><i class="fa fa-github"></i></a>
                        <a href="#" class="qq" target="_blank" ><i class="fa fa-qq"></i></a>
                        <a href="#" class="email" target="_blank" ><i class="fa fa-envelope"></i></a>
                        <a href="javascript:void(0)" class="weixin"><i class="fa fa-weixin"></i></a>
                    </div>
                    <p class="mt05">
                        Copyright &copy; 2018-2018 燕十三 All Rights Reserved V.3.1.3 蜀ICP备18008600号
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <script src="layui/layui.js"></script>
    <script src="js/yss/gloable.js"></script>
    <script src="js/plugins/nprogress.js"></script>
    <script>NProgress.start();</script>
    <script src="js/pagediary.js"></script>
    <script> 
        window.onload = function () {
            NProgress.done();
        };
    </script>
</body>
</html>
