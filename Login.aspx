<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="KCS_Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta charset="utf-8">
    <title>login</title>
    <style type="text/css">
         #lg {
            width:500px;
            height:450px;
            border-style:ridge;
            border-color:#188cb9;
            border-radius:20px;
            text-align:center;
            margin-top:100px;
            margin-left:450px;
        }
          #lg1{
            width:495px;
            height:50px;
            border-style:ridge;
            background-color:#188cb9;
            border-top-left-radius:20px;
            border-top-right-radius:20px;
            text-align:center;
           
        }
            table td {
            text-align:right  ;
             height:50px;
            
            }
        #login {
            height: 25px;
            width: 54px;
        }
       
        #Reset1 {
            width: 60px;
        }
       
    </style>
</head>
<body>
    <form id="Login" runat="server">
     <div id="lg">
         <div id="lg1">
            <h2 >欢迎登录知识竞赛抢答系统</h2>
        </div>
        
         <br />
         
        <table border="0" align="center"  style="height: 234px;  width: 382px; margin-top: 10px;margin-left:100px">
            <tr>
                <td colspan="3">

                </td>
                <td><asp:HyperLink ID="hplRegister" runat="server" NavigateUrl="~/Register.aspx" style="text-align:right;" >竞赛者注册</asp:HyperLink></td>
            </tr>
            <tr>
                <td>账号：</td>
                <td colspan="2">
                    <asp:TextBox ID="txtNum" runat="server" Height="16px" Width="143px"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvNum" runat="server" ErrorMessage="*请输入账号！" ControlToValidate="txtNum" ForeColor="red" ></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td colspan="2"><asp:TextBox ID="Password" runat="server" TextMode="Password" Height="16px" Width="144px"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="*请输入密码！" ControlToValidate="Password" ForeColor="red"></asp:RequiredFieldValidator></td></td>
            </tr>
            <tr>
                <td>身份：</td>
                <td colspan="2">
                    <asp:DropDownList ID="ddlStatus" runat="server" Height="25px"  Width="144px">
                         <asp:ListItem Selected="True">竞赛者</asp:ListItem>
                         <asp:ListItem>管理员</asp:ListItem>
                    </asp:DropDownList>
                 </td>
                
            </tr>
            <tr>
                <td colspan="2"><asp:Button ID="btnlogin" runat="server" Text="登录" Width="60px" OnClick="btnlogin_Click" /></td>
                <td  colspan="2" style=" text-align:center"><input id="Reset1" type="reset" value="重置"  /></td>
                
               
            </tr>
        </table>
       </div>
      </form>
   
</body>
</html>
