using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Administrator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnEnsure_Click(object sender, EventArgs e)
    {
        KcsDataClassesDataContext kdc = new KcsDataClassesDataContext();
        if (this.ddlStatus.SelectedValue == "查看管理员基本信息")
        {
            string name = txtNum.Text.Trim().ToString();
            string psword = Password.Text.Trim().ToString();
            if (name == "admin")
            {
                var result1 = from a in kdc.Admin
                              where a.password == psword
                              select a;
                foreach (var a in result1)
                {
                    if (a.admin_name != null)
                    {
                        Response.Redirect("ManageAdmin.aspx", true);
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('不是超级管理员，或密码错误!');history.back()</script>");
            }
        }
        if (this.ddlStatus.SelectedValue == "管理员注册")
        {
            string name = txtNum.Text.Trim().ToString();
            string psword = Password.Text.Trim().ToString();
            if (name == "admin")
            {
                var result2 = from a in kdc.Admin
                              where a.password == psword
                              select a;
                foreach (var a in result2)
                {
                    if (a.admin_name != null)
                    {
                        Response.Redirect("AddAdmin.aspx", true);
                    }
                }
            }
            else 
            {
                Response.Write("<script>alert('不是超级管理员，或密码错误!');history.back()</script>");
            }
        }
    }
   
}
