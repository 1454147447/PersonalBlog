<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manageuser.aspx.cs" Inherits="manager" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width" />
    <title>管理员用户</title>
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
                            <li id="pageuser" runat="server" ><a href="userinformation.aspx">个人中心</a></li>
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
                                    <span class="day" id="getday" runat="server">day</span>
                                    <span class="month fs-18" id="getmonth" runat="server">月</span><span><small class="fs-14">月</small></span>
                                    <span class="year fs-18" id="getyear" runat="server">2020</span>
                                </div>
                                <div class="content artiledetail" style="border-bottom: 1px solid #e1e2e0; padding-bottom: 20px;">
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="评论管理" CssClass="button"/>
                                    &nbsp;<div id="aplayer" style="margin: 5px 0">
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebConnectionString %>" DeleteCommand="DELETE FROM [users] WHERE [username] = @username" InsertCommand="INSERT INTO [users] ([username], [password], [email], [phone], [sex]) VALUES (@username, @password, @email, @phone, @sex)" SelectCommand="SELECT * FROM [users] ORDER BY [username] DESC" UpdateCommand="UPDATE [users] SET [password] = @password, [email] = @email, [phone] = @phone, [sex] = @sex WHERE [username] = @username">
                                            <DeleteParameters>
                                                <asp:Parameter Name="username" Type="String" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="username" Type="String" />
                                                <asp:Parameter Name="password" Type="String" />
                                                <asp:Parameter Name="email" Type="String" />
                                                <asp:Parameter Name="phone" Type="String" />
                                                <asp:Parameter Name="sex" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="password" Type="String" />
                                                <asp:Parameter Name="email" Type="String" />
                                                <asp:Parameter Name="phone" Type="String" />
                                                <asp:Parameter Name="sex" Type="String" />
                                                <asp:Parameter Name="username" Type="String" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource1" OnRowDataBound="Page_Load" Width="1177px">
                                            <Columns>
                                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                                <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                                                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                                                <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>

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
