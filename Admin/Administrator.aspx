<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackMasterPage.master" AutoEventWireup="true" CodeFile="Administrator.aspx.cs" Inherits="Admin_Administrator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphRight" Runat="Server">




     <div id="nav"> <a href="../Login.aspx" >安全退出</a></div>
       <div style="margin-left:400px">
         
         <table id="table1" border="0" >
             <caption><h1>超级管理员管理</h1></caption>
             <tr>
                 <td style="text-align:right;height:40px">超级管理员账号:</td>
                 <td colspan="2"><asp:TextBox ID="txtNum" runat="server"></asp:TextBox></td>
                 <td><asp:RequiredFieldValidator ID="rfvNum" runat="server" ErrorMessage="*请输入账号！" ControlToValidate="txtNum" ForeColor="red" ></asp:RequiredFieldValidator></td>
              </tr>
              <tr>
                 <td style="text-align:right;height:40px">密码:</td>
                 <td colspan="2"><asp:TextBox ID="Password" runat="server"></asp:TextBox></td>
                 <td><asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="*请输入密码！" ControlToValidate="Password" ForeColor="red"></asp:RequiredFieldValidator></td>
              </tr>
            <tr>
                <td style="text-align:right;height:40px">操作选择:</td>
                <td colspan="2">
                    <asp:DropDownList ID="ddlStatus" runat="server" Height="25px"  Width="144px">
                         <asp:ListItem Selected="True">查看管理员基本信息</asp:ListItem>
                         <asp:ListItem>管理员注册</asp:ListItem>
                    </asp:DropDownList>
                 </td>
                
            </tr>
            <tr style="height:20px">

            </tr>
            <tr>
                <td colspan="2" style=" text-align:center"><asp:Button ID="btnEnsure" runat="server" Text="确定" Width="60px" OnClick="btnEnsure_Click" /></td>
                <td  colspan="2" style=" text-align:center"><input id="Reset1" type="reset" value="重置"  /></td>
                
               
            </tr>
        </table>
     </div>
</asp:Content>

