using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using  SignalRChar;

public partial class Player_Prepare : System.Web.UI.Page
{

    private bool ImIn;

    private Timer Timer;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["username"] = "Test";
        Label1.Text = Session["username"].ToString();
        ImIn = false;
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Start.aspx",true);
    }



    protected void Button1_Click1(object sender, EventArgs e)
    {
        if(ImIn) return;
        ImIn = true;
        Button1.Enabled = false;
        string competitor = TextBox1.Text;
        string competitor1 = TextBox2.Text;
        string competitor2 = TextBox3.Text;
        string competitor3 = TextBox4.Text;

        if(competitor != "" && competitor != null)
        {
            Session["competitor"] = competitor;
            CompetitorCollocation.Competitors.Add(new Competitor
            {
                Name = competitor,

            });
            Response.Write("<script>window.open('Start.aspx');</script>");
        
        }
        if (competitor1 != "" && competitor1 != null)
        {
            Session["competitor"] = competitor1;
            CompetitorCollocation.Competitors.Add(new Competitor
            {
                Name = competitor1,

            });
            Response.Write("<script>window.open('Start.aspx');</script>");
        }
        if (competitor2 != "" && competitor2 != null)
        {
            Session["competitor"] = competitor2;
            CompetitorCollocation.Competitors.Add(new Competitor
            {
                Name = competitor2,

            });
            Response.Write("<script>window.open('Start.aspx');</script>");
        }
        if (competitor3 != "" && competitor3 != null)
        {
            Session["competitor"] = competitor3;
            CompetitorCollocation.Competitors.Add(new Competitor
            {
                Name = competitor3,

            });
            Response.Write("<script>window.open('Start.aspx');</script>");
        }

        KcsDataClassesDataContext kdc = new KcsDataClassesDataContext();
         var query = (from s in kdc.Test
                         orderby s.TestID
                        select s).Take(5) ;

    //    var mockDate = new MockTestDate();

         foreach (var item in query)
        {
            TitleCollocation.MyTestViewModles.Add(new TestViewModle()
            {
                MyTest = item
            });
        }

        TitleCollocation.StartSend();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Result.aspx");
    }
}