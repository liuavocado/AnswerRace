<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackMasterPage.master" AutoEventWireup="true" CodeFile="AddAdmin.aspx.cs" Inherits="Admin_AddAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphRight" Runat="Server">
     <div id="nav"> <a href="../Login.aspx" >安全退出</a></div>
    <div style="margin-left:400px">
         
         <table border="0" >
             <caption style="text-align:left"><h1>&nbsp;&nbsp;管理员注册信息</h1></caption>
             
             <tr>
                 <td style="text-align:right;height:40px">用户名：</td>
                 <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                 <td>
                     <asp:RequiredFieldValidator ID="rfvTitle" runat="server" ControlToValidate="txtName" ErrorMessage="用户名不允许为空！"  ForeColor="red"></asp:RequiredFieldValidator></td>
              </tr>
              <tr>
                 <td style="text-align:right;height:40px">密&nbsp;&nbsp;码： </td>
                 <td><asp:TextBox ID="txtPwd" runat="server"  TextMode="Password" ></asp:TextBox></td>
                 <td><asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd" ErrorMessage="密码不允许为空"></asp:RequiredFieldValidator></td>
              </tr>
              <tr>
                 <td style="text-align:right;height:40px">重复密码：</td>
                 <td><asp:TextBox ID="txtRePwd" runat="server" TextMode="Password" ></asp:TextBox></td>
                 <td><asp:CompareValidator ID="cvPwd" runat="server" ControlToCompare="txtPwd"
                                    ControlToValidate="txtRePwd" ErrorMessage="*密码不一致" ForeColor="red"></asp:CompareValidator></td>
               </tr>
               <tr>
                  <td></td>
                  <td  style="height:40px">
                      <asp:Button ID="btnAdd" runat="server" Text="增加" OnClick="btnAdd_Click"  />
                      &nbsp;&nbsp;&nbsp;&nbsp;
                      <input id="Reset" type="reset" value="重置" />
                  </td>
              </tr>
         </table>
        
    </div>

</asp:Content>

