using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class article : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        pageuser.Visible = false;

        if (!IsPostBack)
        {
            //登录变为用户名
            if (Request.Cookies["userName"] != null)
            {
                pagelogin.Text = Server.UrlDecode(Request.Cookies["userName"].Value) + "欢迎你！";
                pageuser.Visible = true;
                pagelogin.Enabled = false;
            }

        }
    }
    protected void pagelogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}