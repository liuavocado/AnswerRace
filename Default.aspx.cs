using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack) {
//            KcsDataClassesDataContext kdc = new KcsDataClassesDataContext();
//            Test t = new Test();
//            var query = (from s in kdc.Test
//                         orderby Guid.NewGuid()
//                         select s).Take(4).First();
            //foreach (var s in query)
            //{
            //    lblTitle.Text = s.TestTitle;
            //    cbk.Items.Add("A、" + s.TestAns1);
            //    cbk.Items.Add("B、" + s.TestAns2);
            //    cbk.Items.Add("C、" + s.TestAns3);
            //    cbk.Items.Add("D、" + s.TestAns4);
            //}
        
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        //String answer = this.Request["cbk"];
//        Label1.Text = cbk.SelectedValue.ToString();
    }
    //protected void cbk_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    Label1.Text = cbk.SelectedValue.ToString();
    //}
   
}