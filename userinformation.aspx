<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userinformation.aspx.cs" Inherits="read" Debug="true"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width" />
    <title>用户信息</title>
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="layui/css/layui.css" />
    <link rel="stylesheet" href="css/master.css" />
    <link rel="stylesheet" href="css/gloable.css" />
    <link rel="stylesheet" href="css/nprogress.css" />
    <link rel="stylesheet" href="css/blog.css" />
    <style>
        .button {
            cursor: pointer;
            width: 100px;
            height: 38px;
            border: 0;
            background-color: rgb(0, 150, 136);
            color: rgb(255, 255, 255);
            margin-left:-10px;
        }
        .auto-style1 {
            border-style: none;
            border-color: inherit;
            border-width: 0;
            cursor: pointer;
            width: 100px;
            height: 38px;
            background-color: rgb(0, 150, 136);
            color: rgb(255, 255, 255);
            margin-left: 1px;
            margin-top: 12;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
        </div>
        <header class="gird-header">
            <div class="header-fixed">
                <div class="header-inner">
                    <a href="javascript:void(0)" class="header-logo" id="logo">Bojack</a>
                    <nav class="nav" id="nav">
                        <ul>
                            <li><a href="index.aspx">首页</a></li>
                            <li><a href="article.aspx">博客</a></li>
                            <li><a href="message.aspx">留言</a></li>
                            <li><a><asp:Button ID="pagelogin" runat="server" Text="登陆" BackColor="White" ForeColor="Black" OnClick="pagelogin_Click" style="cursor: pointer;" ></asp:Button></a></li>
                            <li><a>
                                <asp:Button ID="logoff" runat="server" Text="注销" BackColor="White" ForeColor="Black" OnClick="logoff_Click" style="cursor: pointer;"/></a></li>
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
                <div class="col-content" style="width: 100%">
                    <div class="inner">
                        <article class="article-list">
                            <input type="hidden" value="@Model.BlogTypeID" id="blogtypeid" />
                            <section class="article-item">
                                <br />
                            <div class="time mt10" style="padding-bottom: 0;">
                                
                                <span class="day" id="getday" runat="server">日</span>
                                <span class="month fs-18" id="getmonth" runat="server">月</span><span><small class="fs-14">月</small></span>
                                <span class="year fs-18" id="getyear" runat="server">年</span>
                                
                            </div>
                                <div class="content artiledetail" style="border-bottom: 1px solid #e1e2e0; padding-bottom: 20px;">
                                    <h3>我的信息</h3>

                                <div id="aplayer" style="margin: 5px 0">
                                    
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebConnectionString %>" SelectCommand="select * from users where username= @username">
                                        <SelectParameters>
                                            <asp:CookieParameter CookieName="userName" Name="username" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                                    <ol class="b-relation">
                                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" ViewStateMode="Enabled" EnableTheming="True">
                                            <HeaderTemplate>
                                                <table border="1" width="50%">
                                                    <tr>
                                                        <th>用户名</th>
                                                        <th>密码</th>
                                                        <th>邮箱</th>
                                                        <th>联系方式</th>
                                                        <th>性别</th>
                                                    </tr>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("username") %></td>
                                                    <td><%#Eval("password") %></td>
                                                    <td><%#Eval("email") %></td>
                                                    <td><%#Eval("phone") %></td>
                                                    <td><%#Eval("sex") %></td>
                                                </tr>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                </table>
                                            </FooterTemplate>
                                        </asp:Repeater>
                                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="修改密码" CssClass="auto-style1" />
                                    </ol>
                                </div>
                                &nbsp;
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="管理员模式" CssClass="button" />
                            </section>
                        </article>
                    </div>
                </div>
            </div>
        </div>

        <script src="layui/layui.js"></script>
        <script src="js/yss/gloable.js"></script>
        <script src="js/plugins/nprogress.js"></script>
        <script src="js/pagecomment.js"></script>
        <script>NProgress.start();</script>
        <script> 
            window.onload = function () {
                NProgress.done();
            };
        </script>
    </form>
</body>
</html>
