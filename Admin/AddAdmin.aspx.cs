using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        KcsDataClassesDataContext kdc = new KcsDataClassesDataContext();
        Admin a = new Admin();
        a.admin_name = txtName.Text;
        a.password = txtRePwd.Text;
        kdc.Admin.InsertOnSubmit(a);
        kdc.SubmitChanges();
        this.Response.Redirect("ManageAdmin.aspx");//跳转回列表
    }
}