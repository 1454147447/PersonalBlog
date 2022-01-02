using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class read : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getday.InnerText = DateTime.Now.Day.ToString();
        getmonth.InnerText = DateTime.Now.Month.ToString();
        getyear.InnerText = DateTime.Now.Year.ToString();



            if (!IsPostBack)
            {
                //登录变为用户名
                if (Request.Cookies["userName"] != null)
                {
                    pagelogin.Text = Server.UrlDecode(Request.Cookies["userName"].Value) + "欢迎你！";
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
        String userName = Server.UrlDecode(Request.Cookies["userName"].Value);
        if (Server.UrlDecode(Request.Cookies["userName"].Value)=="bojack")
        {
            Response.Redirect("manageuser.aspx");
        }
        else
        {
            Response.Write("<script>alert('权限不足');</script>");
        }
    }

    protected void logoff_Click(object sender, EventArgs e)
    {
        this.Request.Cookies["userName"].Expires = DateTime.Now.AddDays(-1);
        Response.Cookies.Add(this.Request.Cookies["userName"]);
        Response.Redirect("article.aspx");
    }
    protected void pagelogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");

    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("updatepassword.aspx");
    }
}