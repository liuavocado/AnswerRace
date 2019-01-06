using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_TestUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) { 
        KcsDataClassesDataContext kdc = new KcsDataClassesDataContext();
        Test t = new Test();
         string id = this.Request["TestId"];
        int testid = Convert.ToInt32(id);
        var result = from s in kdc.Test
                   where s.TestID==testid
                   select s;
        foreach (Test s in result) {
            txtTestTitle.Text = s.TestTitle;
            txtTestAns1.Text = s.TestAns1;
            txtTestAns2.Text = s.TestAns2;
            txtTestAns3.Text = s.TestAns3;
            txtTestAns4.Text = s.TestAns4;
            txtRightAns.Text = s.RightAns;

        }
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        KcsDataClassesDataContext kdc = new KcsDataClassesDataContext();
        Test t = new Test();

        string id = this.Request["TestId"];
        int testid = Convert.ToInt32(id);
        var result = from s in kdc.Test
                     where s.TestID == testid
                     select s;
        foreach (Test s in result) { 
        s.TestTitle = txtTestTitle.Text;
        s.TestAns1 = txtTestAns1.Text;
        s.TestAns2 = txtTestAns2.Text;
        s.TestAns3 = txtTestAns3.Text;
        s.TestAns4 = txtTestAns4.Text;
        s.RightAns = txtRightAns.Text;
        s.Time = DateTime.Now;
        }
        kdc.SubmitChanges();
        this.Response.Redirect("ManageTest.aspx");//跳转回列表
        
    }
}