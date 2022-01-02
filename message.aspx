<%@ Page Language="C#" AutoEventWireup="true" CodeFile="message.aspx.cs" Inherits="message" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width" />
    <meta name="author" content="www.yanshisan.cn" />
    <meta name="robots" content="all" />
    <title>留言板</title>
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="layui/css/layui.css" />
    <link rel="stylesheet" href="css/master.css" />
    <link rel="stylesheet" href="css/gloable.css" />
    <link rel="stylesheet" href="css/nprogress.css" />
    <link rel="stylesheet" href="css/message.css" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
        </div>
        <header class="gird-header">
            <div class="header-fixed">
                <div class="header-inner">
                    <a href="javascript:void(0)" class="header-logo" id="logo">BoJack</a>
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
                <div class="container-inner">
                    <section class="msg-remark">
                        <h1>留言板</h1>
                        <p>
                            沟通交流，拉近你我！
                        </p>
                    </section>
                    <div class="textarea-wrap message" id="textarea-wrap">
                        <div class="layui-form-item">
                            <textarea name="editorContent" lay-verify="content" id="remarkEditor" placeholder="请输入内容" class="layui-textarea layui-hide" runat="server"></textarea>
                        </div>
                        <div class="layui-form-item">
                            <asp:Button ID="Button1" class="layui-btn" lay-submit="formLeaveMessage" lay-filter="formLeaveMessage" runat="server" Text="提交" OnClick="Button1_Click" />
                        </div>
                    
                    <div class="mt20">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ctent" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="1249px" PageSize="5">
                            <Columns>
                                <asp:BoundField DataField="username" HeaderText="用户" SortExpression="username">
                                    <FooterStyle HorizontalAlign="Left" />
                                    <HeaderStyle Width="200px" />
                                    <ItemStyle Height="50px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ctent" HeaderText="评论" ReadOnly="True" SortExpression="ctent">
                                    <FooterStyle Font-Size="X-Large" />
                                    <HeaderStyle Height="50px" Width="1500px" />
                                    <ItemStyle Height="25px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="day" HeaderText="日期" SortExpression="day">
                                    <FooterStyle Height="100px" />
                                    <HeaderStyle Width="100px" />
                                </asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                            <PagerStyle BackColor="White" ForeColor="#3333FF" HorizontalAlign="Center" BorderStyle="Solid" Font-Size="Large" VerticalAlign="Middle" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebConnectionString2 %>" SelectCommand="SELECT * FROM [message] ORDER BY [day] DESC"></asp:SqlDataSource>
                    </div>
                    </div>
                    <div class="f-cb"></div>
                </div>
            </div>
        </div>

        <script src="layui/layui.js"></script>
        <script src="js/yss/gloable.js"></script>
        <script src="js/plugins/nprogress.js"></script>
        <script>NProgress.start();</script>
        <script src="js/pagemessage.js"></script>
        <script>NProgress.start();</script>
        <script> 
            window.onload = function () {
                NProgress.done();
            };
        </script>
    </form>
</body>
</html>
