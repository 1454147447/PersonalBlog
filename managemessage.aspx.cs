using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class managemessage : System.Web.UI.Page
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
            else
            {

                Page.ClientScript.RegisterStartupScript(this.GetType(), "error", "alert('请先登录登录。');window.location.href='login.aspx';", true);
            }

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("manageuser.aspx");
    }
    protected void pagelogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        
    }
}