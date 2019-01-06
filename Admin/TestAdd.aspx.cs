using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_TestAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        KcsDataClassesDataContext kdc = new KcsDataClassesDataContext();
        Test t = new Test();
       
        t.TestTitle = txtTestTitle.Text;
        t.TestAns1 = txtTestAns1.Text;
        t.TestAns2 = txtTestAns2.Text;
        t.TestAns3 = txtTestAns3.Text;
        t.TestAns4 = txtTestAns4.Text;
        t.RightAns = txtRightAns.Text;
        t.Time = DateTime.Now;
        kdc.Test.InsertOnSubmit(t);
        kdc.SubmitChanges();
        this.Response.Redirect("ManageTest.aspx");//跳转回列表
        
    }
}