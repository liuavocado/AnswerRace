using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Player_Start : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            var comp = CompetitorCollocation.Competitors.Find(c => !c.Open);

            this.Title = comp.Name + "- 参赛者";
            TextBox1.Text = comp.Name;
            comp.Open = true;
//
//           KcsDataClassesDataContext kdc = new KcsDataClassesDataContext();
////           
////            Test t = new Test();
//            var query = (from s in kdc.Test
//                         orderby Guid.NewGuid()
//                        select s).Take(10) ;
//            foreach (var s in query)
//            {
//
//                Console.WriteLine("1");
//                
//                
//            }
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        //try {
        //    lblPlayer1.Text = Application["Msg"].ToString();
        //}
        //catch (Exception ex){
        //    Response.Write(ex.Message);

        //}
    }
    protected void submit_Click(object sender, EventArgs e)
    {

        //Application.Set("Msg", Application["Msg"] + "" + Session["username"].ToString() + "答案：" + cbk.SelectedValue.ToString() + "[" + DateTime.Now.ToString() + "]");
    }

}