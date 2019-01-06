using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Player_Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        KcsDataClassesDataContext kdc = new KcsDataClassesDataContext();
        Result r = new Result();
        foreach (var item in CompetitorCollocation.Competitors)
        {
            r.Players += item.Name+",";
            int c = Convert.ToInt32(item.Total);
            r.Score += c+"分,";
            r.Date = DateTime.Now;
           
        }
        kdc.Result.InsertOnSubmit(r);
        kdc.SubmitChanges();

        string html = "<table class=\"table\"><caption>成绩总结</caption><thead><tr><th>姓名</th><th>总分</th></tr></thead> <tbody>";
        foreach (var item in CompetitorCollocation.Competitors)
        {
            html += "<tr>";
            html += "<td>" + item.Name + "</td>";
            html += "<td>" + item.Total + "分</td>";
            html += "</tr>";
        }
        html += "</tbody></table>";
        Div.InnerHtml = html;
    }
}