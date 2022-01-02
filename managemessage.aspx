<%@ Page Language="C#" AutoEventWireup="true" CodeFile="managemessage.aspx.cs" Inherits="managemessage" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width" />
    <meta name="author" content="www.yanshisan.cn" />
    <meta name="robots" content="all" />
    <title>管理员留言板</title>
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="layui/css/layui.css" />
    <link rel="stylesheet" href="css/master.css" />
    <link rel="stylesheet" href="css/gloable.css" />
    <link rel="stylesheet" href="css/nprogress.css" />
    <link rel="stylesheet" href="css/message.css" />
    <style>
        .button {
            cursor: pointer;
            width: 100px;
            height: 38px;
            border: 0;
            background-color: rgb(0, 150, 136);
            color: rgb(255, 255, 255);
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .tbselect {
            border-bottom: 1px solid rgb(0, 150, 136);
            margin-left: 850px;
            bottom: -20px;
            height: 37px;
        }

        .btselect {
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
                    <a href="javascript:void(0)" class="header-logo" id="logo">BoJack</a>
                    <nav class="nav" id="nav">
                        <ul>
                            <li><a href="index.aspx">首页</a></li>
                            <li><a href="article.aspx">博客</a></li>
                            <li><a href="message.aspx">留言</a></li>
                            <li><a>
                                <asp:Button ID="pagelogin" runat="server" Text="登陆" BackColor="White" ForeColor="Black" OnClick="pagelogin_Click" Style="cursor: pointer;"></asp:Button></a></li>
                            <li id="pageuser" runat="server"><a href="userinformation.aspx">个人中心</a></li>
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebConnectionString %>" SelectCommand="SELECT username, ctent, day FROM message WHERE (username = @username) ORDER BY day DESC" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [message] WHERE [ctent] = @original_ctent" InsertCommand="INSERT INTO [message] ([username], [ctent], [day]) VALUES (@username, @ctent, @day)" UpdateCommand="UPDATE [message] SET [username] = @username, [day] = @day WHERE [ctent] = @original_ctent">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_ctent" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="username" Type="String" />
                                    <asp:Parameter Name="ctent" Type="String" />
                                    <asp:Parameter Name="day" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="tbselect" Name="username" PropertyName="Text" Type="String" DefaultValue="" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="username" Type="String" />
                                    <asp:Parameter Name="day" Type="String" />
                                    <asp:Parameter Name="original_ctent" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebConnectionString2 %>" SelectCommand="SELECT * FROM [message] ORDER BY [day] DESC" DeleteCommand="DELETE FROM [message] WHERE [ctent] = @ctent" InsertCommand="INSERT INTO [message] ([username], [ctent], [day]) VALUES (@username, @ctent, @day)" UpdateCommand="UPDATE [message] SET [username] = @username, [day] = @day WHERE [ctent] = @ctent">
                                <DeleteParameters>
                                    <asp:Parameter Name="ctent" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="username" Type="String" />
                                    <asp:Parameter Name="ctent" Type="String" />
                                    <asp:Parameter Name="day" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="username" Type="String" />
                                    <asp:Parameter Name="day" Type="String" />
                                    <asp:Parameter Name="ctent" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>

                            <asp:Button ID="Button1" class="layui-btn" lay-submit="formLeaveMessage" lay-filter="formLeaveMessage" runat="server" Text="提交" OnClick="Button1_Click" />


                            <div>

                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="用户信息管理" CssClass="button" />
                                <asp:TextBox ID="tbselect" CssClass="tbselect" runat="server"></asp:TextBox>
                                <asp:Button ID="Button3" CssClass="btselect" runat="server" OnClick="Button3_Click" Text="查询用户评论" />
                            </div>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="1243px" DataKeyNames="ctent">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True">
                                        <HeaderStyle Width="100px" />
                                    </asp:CommandField>
                                    <asp:BoundField DataField="username" HeaderText="用户" SortExpression="username">
                                        <HeaderStyle Height="50px" />
                                        <ItemStyle Height="50px" Width="200px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ctent" HeaderText="评论" SortExpression="ctent" ReadOnly="True"></asp:BoundField>
                                    <asp:BoundField DataField="day" HeaderText="日期" SortExpression="day">
                                        <ItemStyle Width="100px" />
                                    </asp:BoundField>
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
                            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ctent" DataSourceID="SqlDataSource2" Height="274px" Width="1241px">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True">
                                        <HeaderStyle Height="50px" Width="100px" />
                                    </asp:CommandField>
                                    <asp:BoundField DataField="username" HeaderText="用户" SortExpression="username">
                                        <HeaderStyle Width="200px" />
                                        <ItemStyle Height="50px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ctent" HeaderText="评论" ReadOnly="True" SortExpression="ctent" />
                                    <asp:BoundField DataField="day" HeaderText="日期" SortExpression="day">
                                        <HeaderStyle Width="100px" />
                                    </asp:BoundField>
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
                        </div>
                    </div>
                </div>
                <div class="f-cb"></div>
                <div class="mt20">
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
