<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Player_Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title ></title>
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
        <div runat="server"  id="Div" class="container" style="text-align:center"></div>
    
    </form>
</body>
</html>
