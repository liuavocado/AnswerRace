<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Prepare.aspx.cs" Inherits="Player_Prepare" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <style type="text/css">
        
        header {
            height:60px;
            text-align: center;
            background-color: #188cb9;
            font: 15px kaiti;
            color: #e2ecf0;
            margin-bottom:0px auto;
        }
        #group {
           height:22px;
           background-color:#e2ecf0;
           margin:0px;
           text-align:right;
           
        }
        #content{
           border:5px outset  #e2ecf0;
           height:428px;
           margin:20px 150px 20px 150px;
          
        }
        h1 {
           text-align:center;      
        }
         table {
         margin:50px 300px 50px 300px;
         width:400px;
         height :300px;
        
         }

        footer {
            clear:both;
            height:50px;
            text-align:center;
            background-color:#d2d2d2;

        }
         #Button3 {
            float:right;
            margin-right:50px;
          
           
         }
    </style>

   
</head>
<body>
    <form id="form1" runat="server">
     <header> 
           <h1>知识竞赛抢答计分网</h1>
        </header>
        <div id="group">
             欢迎<asp:Label ID="Label1" runat="server" Text="" ></asp:Label>&nbsp;&nbsp;
             <a href="../Login.aspx" >安全退出</a>
        </div>
        <div id="content">
            <table border="0">
                <tr>
                    <td style="text-align:right">选手一：</td>
                    <td style="text-align:left"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td style="text-align:right">选手二：</td>
                    <td style="text-align:left"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td style="text-align:right">选手三：</td>
                    <td style="text-align:left"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td style="text-align:right">选手四：</td>
                    <td style="text-align:left"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center"><asp:Button ID="Button1" runat="server" Text="加入" OnClick="Button1_Click1" />&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="退出" /></td>
                </tr>

            </table>
            <asp:Button ID="Button3" runat="server" Text="查看结果" onclick="Button3_Click"/>

        </div>
         <footer>
          <hr /> 版权所有
        </footer>
    </form>
</body>
</html>
