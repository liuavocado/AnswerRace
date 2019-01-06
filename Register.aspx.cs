using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KCS_Register : System.Web.UI.Page
{
    private bool isCheckedName = false;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void check_Click(object sender, EventArgs e)
    {
        KcsDataClassesDataContext kdc = new KcsDataClassesDataContext();
        string name = txtName.Text;
        var result = from n in kdc.Player
                     where n.player_name == txtName.Text
                     select n;
        if (result.ToList().Count != 0)
        {
            //isCheckedName = true;
            //check1.Visible = true; check2.Visible = false;
            Response.Write("<script>alert('用户名已存在!');history.back()</script>");
        }
        else
        {
            //isCheckedName = false;
            check2.Visible = true; 
        }
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
       
       
        
            KcsDataClassesDataContext kdc = new KcsDataClassesDataContext();
            Player p = new Player();
            p.player_name = txtName.Text;
            p.sex = rdoMan.Checked ? "男" : "女";
            p.age = Convert.ToInt32(txtAge.Text);
            p.email = txtEmail.Text;
            p.password = txtPwd.Text;
            kdc.Player.InsertOnSubmit(p);
            kdc.SubmitChanges();
            Label1.Text = "注册成功！";
        
    }
   
       
}
