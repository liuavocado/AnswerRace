using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KCS_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        KcsDataClassesDataContext kdc = new KcsDataClassesDataContext();
        if (this.ddlStatus.SelectedValue == "竞赛者")
        {
            string pid = txtNum.Text.Trim().ToString();
            string pwd = Password.Text.Trim().ToString();
            var result1 = from p in kdc.Player
                          where p.player_name == pid && p.password == pwd
                          select p;
            foreach (var p in result1) {
                if (p.player_name != null) {
                    Session["username"] = pid;
                    Response.Redirect("Player/Regular.aspx", true);
                }
            }
            Response.Write("<script>alert('用户名或密码错误，请重新输入!');history.back()</script>");
        }
        if (this.ddlStatus.SelectedValue == "管理员")
        {
            string aid = txtNum.Text.Trim().ToString();
            string awd = Password.Text.Trim().ToString();
            var result2 = from a in kdc.Admin
                          where a.admin_name == aid && a.password == awd
                          select a;
            foreach (var a in result2)
            {
                if (a.admin_name != null)
                {
                    Session["username"] = aid;
                    Response.Redirect("Admin/BackIndex.aspx", true);
                }
            }
            Response.Write("<script>alert('用户名或密码错误，请重新输入!');history.back()</script>");
        }
    }
   
}