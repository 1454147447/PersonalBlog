<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录</title>
    <link href="css/login_Style.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="login">
            <h1>LOGIN</h1>
            <div class="form">
                <div class="inputBox">
                        <svg t="1606478530713" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="8514" width="200" height="200">
                            <path d="M512 1024C229.205 1024 0 794.795 0 512S229.205 0 512 0s512 229.205 512 512-229.205 512-512 512z m0-496.47a170.667 170.667 0 1 0 0-341.333 170.667 170.667 0 0 0 0 341.334z m263.765 263.723a263.765 263.765 0 1 0-527.53 0h527.53z" p-id="8515"></path></svg>
                        <asp:TextBox ID="tbusename" runat="server" placeholder="Username" class="input"></asp:TextBox>
                        <br />
                        <svg t="1606478266377" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1913" width="200" height="200">
                            <path d="M512 1024C229.205333 1024 0 794.794667 0 512S229.205333 0 512 0s512 229.205333 512 512-229.205333 512-512 512z m208.170667-589.824h-59.306667V359.253333s13.056-149.632-145.365333-149.632c0 0-143.658667 0-143.658667 150.528v73.984H310.869333a30.506667 30.506667 0 0 0-29.909333 30.848v310.869334c0 16.981333 13.44 30.890667 29.909333 30.890666h409.301334a30.506667 30.506667 0 0 0 29.909333-30.890666v-310.869334a30.506667 30.506667 0 0 0-29.909333-30.848z m-294.613334 0V360.192s-1.109333-94.506667 92.8-94.506667c0 0 88.533333-2.944 88.533334 93.312v75.178667h-181.333334z" p-id="1914"></path></svg>
                        <asp:TextBox ID="tbpassword" runat="server" placeholder="Password" TextMode="Password" class="input"></asp:TextBox>
                </div>
                <div >
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#CC99FF">没有账号？点击注册</asp:HyperLink>
                </div>

            </div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" BackColor="White"  CssClass="button"  />
        </div>
    </form>
    <script src="js/iconfont.js"></script>
    <script src="js/jquery-3.5.1.js"></script>
</body>
</html>
