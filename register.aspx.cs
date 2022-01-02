using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class register : System.Web.UI.Page
{
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //新建连接对象
            SqlConnection connection = new SqlConnection();
            //指定连接参数
            connection.ConnectionString = "Data Source =.; Initial Catalog = Web; Integrated Security = SSPI; ";

            Console.WriteLine("数据库打开");    //正常打印说明没问题，否则会抛出异常

            string username = tbusername.Text;
            string password = tbpassword.Text;
            string email = tbemail.Text;
            string phone = tbphone.Text;
            string sex = DropDownList1.SelectedValue;

            string insert = "insert into users values('" + username + "', '" + password + "', '" + email + "', '" + phone + "', '" + sex + "')";

            SqlCommand command = new SqlCommand(insert, connection); //定义对象并连接数据库

            connection.Open();//打开数据库

            command.ExecuteNonQuery();                           //执行插入语句

            connection.Close();                //关闭对象并释放所占内存空间    

            //  myConnection.Dispose();

        Page.ClientScript.RegisterStartupScript(this.GetType(), "error", "alert('注册成功，请前往登录界面登录！');window.location.href='login.aspx';", true);


        //  Test f2 = new Test();
        //  this.Close();
        //  f2.Show();


    }



    }


