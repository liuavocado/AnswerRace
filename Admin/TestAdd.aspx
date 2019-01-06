<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackMasterPage.master" AutoEventWireup="true" CodeFile="TestAdd.aspx.cs" Inherits="Admin_TestAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
      

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphRight" Runat="Server">
    <div id="nav"> <a href="../Login.aspx" >安全退出</a></div>
    <div style="margin-left:400px">
         
         <table border="0" style="width:600px" >
             <caption style="text-align:left"><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;增加试题</h1></caption>
             
             <tr>
                 <td style="text-align:right;height:40px">试题题目:</td>
                 <td><asp:TextBox ID="txtTestTitle" runat="server" Width="300px"></asp:TextBox></td>
                 <td>
                     <asp:RequiredFieldValidator ID="rfvTitle" runat="server" ControlToValidate="txtTestTitle" ErrorMessage="试题题目不允许为空！"  ForeColor="red"></asp:RequiredFieldValidator></td>
              </tr>
              <tr>
                 <td style="text-align:right;height:40px">选项1:</td>
                 <td><asp:TextBox ID="txtTestAns1" runat="server" Width="300px"></asp:TextBox></td>
              </tr>
              <tr>
                 <td style="text-align:right;height:40px">选项2:</td>
                 <td><asp:TextBox ID="txtTestAns2" runat="server" Width="300px"></asp:TextBox></td>
              </tr>
              <tr>
                 <td style="text-align:right;height:40px">选项3:</td>
                 <td><asp:TextBox ID="txtTestAns3" runat="server" Width="300px"></asp:TextBox></td>
              </tr>
             <tr>
                 <td style="text-align:right;height:40px">选项4:</td>
                 <td><asp:TextBox ID="txtTestAns4" runat="server" Width="300px"></asp:TextBox></td>
             </tr>
             <tr>
                 <td style="text-align:right;height:40px">正确选项:</td>
                 <td><asp:TextBox ID="txtRightAns" runat="server" Width="300px"></asp:TextBox></td>
                 <td><asp:RequiredFieldValidator ID="rfvRightAns" runat="server" ControlToValidate="txtRightAns" ErrorMessage="正确答案不允许为空！"  ForeColor="red"></asp:RequiredFieldValidator></td></td>
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

