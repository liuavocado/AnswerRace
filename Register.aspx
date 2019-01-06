<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="KCS_Register" %>

<!DOCTYPE html>

<html lang="zh-cn">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #reg {
            width:510px;
            height:500px;
            border-style:ridge;
            border-color:#188cb9;
            border-radius:20px;
            text-align:center;
            margin-top:100px;
            margin-left:450px;
        }
        #reg1{
            width:506px;
            height:50px;
            border-style:ridge;
            background-color:#188cb9;
            border-top-left-radius:20px;
            border-top-right-radius:20px;
            text-align:center;
           
        }
        .auto-style1 {
            width: 180px;
        }
        .auto-style2 {
            width: 151px;
        }
        .auto-style3 {
            height: 40px;
            width: 152px;
        }
        .auto-style4 {
            height: 40px;
            width: 136px;
        }
    </style>
</head>
<body>
  <form id="register" runat="server">
    <div id="reg">
        <div id="reg1">
            <h2 style="width: 502px" >参赛者信息注册</h2>
        </div>
            
                     <table  style="width: 510px; height: 268px; margin-top: 50px; ">
                        <tr>
                            <td style="text-align:right" class="auto-style2">
                               用户名：
                            </td>
                            <td  colspan="2" style="text-align:left" class="auto-style3">
                                <asp:TextBox ID="txtName" runat="server" Font-Size="9pt" Width="120px"></asp:TextBox></td>
                            <td style="text-align:left">
                               
                                <asp:RegularExpressionValidator ID="revName" runat="server" ControlToValidate="txtName"
                                    ErrorMessage="用户名格式不正确！" ValidationExpression="^[A-Za-z0-9_]{3,10}"  ForeColor="red"></asp:RegularExpressionValidator>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style2" >
                            </td>
                            <td colspan="2" style="text-align:center" >
                                <asp:Button ID="check" runat="server" CausesValidation="False" Font-Size="10pt"
                                     Text="检测注册" OnClick="check_Click"  />
                               
                            <td style="text-align:left">
                                 <%-- <asp:Label ID="check1" runat="server" Font-Size="9pt" Text="该用户名已存在!" Visible="false" ForeColor="red"></asp:Label><br />--%>
                                <asp:Label ID="check2" runat="server" Font-Size="9pt" Text="无该号,可以注册！" Visible="false" ForeColor="green"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right" class="auto-style2">
                               性别：
                            </td>
                            <td  colspan="2" style="text-align:left">
                                <asp:RadioButton ID="rdoMan" runat="server" GroupName="sex" Text="男" Checked="true" />
                                <asp:RadioButton ID="rdoWomen" runat="server" GroupName="sex" Text="女"/>
                            </td>
                            
                        </tr>
                         <tr>
                            <td style="text-align:right" class="auto-style2">
                               年龄：
                            </td>
                            <td  colspan="2" style="text-align:left">
                                <asp:TextBox ID="txtAge" runat="server" Font-Size="9pt"  Width="120px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RangeValidator ID="rvAge" runat="server" ErrorMessage="年龄1-150岁之间!" ControlToValidate="txtAge"
                                     MinimumValue="1" MaximumValue="150" Type="Integer" ForeColor="red"></asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right" class="auto-style2">
                               电子邮箱：
                            </td>
                            <td  colspan="2" style="text-align:left">
                                <asp:TextBox ID="txtEmail" runat="server" Font-Size="9pt"  Width="120px"></asp:TextBox></td>
                            <td>
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="邮箱格式不正确！" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="red"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right" class="auto-style2">
                               密&nbsp;&nbsp;码：
                            </td>
                            <td  colspan="2" style="text-align:left">
                                <asp:TextBox ID="txtPwd" runat="server" Font-Size="9pt" TextMode="Password" Width="120px"></asp:TextBox></td>
                            <td class="auto-style1">
                                <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd"
                                    ErrorMessage="密码不允许为空"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="text-align:right" class="auto-style2">
                                重复密码：
                            </td>
                            <td colspan="2" style="text-align:left">
                                <asp:TextBox ID="txtRePwd" runat="server" TextMode="Password" Width="120px"></asp:TextBox></td>
                            <td class="auto-style1">
                                <asp:CompareValidator ID="cvPwd" runat="server" ControlToCompare="txtPwd"
                                    ControlToValidate="txtRePwd" ErrorMessage="*密码不一致" ForeColor="red"></asp:CompareValidator></td>
                        </tr>
                       
                       <tr>
                            <td colspan="2" style="width: 154px; height: 40px;text-align:right" >
                                <asp:Button ID="btnRegister" runat="server" Text="注册" OnClick="btnRegister_Click" />
                            </td>
                            <td  style="text-align:center" class="auto-style4" >
                                <input id="Reset" type="reset" value="重置" />
                                <a href="Login.aspx">登录</a>
                            </td>
                           <td>
                               <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                           </td>
                        </tr>
            </table>
          
     </div>
        </form>

   
</body>
</html>
