using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        KcsDataClassesDataContext kdc = new KcsDataClassesDataContext();
        //string tai = txtAdminName.Text.Trim().ToString();
        string name = txtAdminName.Text;
        string opw=txtOldPsw.Text.Trim().ToString ();
        //int id = Convert.ToInt32(tai);
        var result = from s in kdc.Admin
                     where s.admin_name == name&&s.password==opw
                     select s;
        foreach (Admin s in result) {
            if (s.admin_id != null) {
                s.password = txtNewPsw.Text;
                kdc.SubmitChanges();
                Response.Write("<script>alert('密码修改成功!');history.back()</script>");
            }

        }
        Response.Write("<script>alert('管理员账号或旧密码不正确!');history.back()</script>");
    }
}