<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackMasterPage.master" AutoEventWireup="true" CodeFile="AdminUpdate.aspx.cs" Inherits="Admin_AdminUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphRight" Runat="Server">
    <div id="nav"> <a href="../Login.aspx" >安全退出</a></div>
     <div style="margin-left:400px">
         
         <table id="table1" border="0" >
             <caption><h1>管理员修改密码</h1></caption>
             <tr>
                 <td style="text-align:right;height:40px">管理员账号:</td>
                 <td><asp:TextBox ID="txtAdminName" runat="server"></asp:TextBox></td>
                
              </tr>
              <tr>
                 <td style="text-align:right;height:40px">旧密码:</td>
                 <td><asp:TextBox ID="txtOldPsw" runat="server"></asp:TextBox></td>
              </tr>
              <tr>
                 <td style="text-align:right;height:40px">新密码:</td>
                 <td><asp:TextBox ID="txtNewPsw" runat="server"></asp:TextBox></td>
              </tr>
              <tr>
                  <td></td>
                  <td><asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" /></td>
              </tr>
             </table>
         </div>


</asp:Content>

