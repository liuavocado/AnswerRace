<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Regular.aspx.cs" Inherits="Player_Regular" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type='text/javascript'>
        var secs = 6; //倒计时的秒数 
        var URL;
        function Load(url) {
            URL = url;
            for (var i = secs; i >= 0; i--) {
                window.setTimeout('doUpdate(' + i + ')', (secs - i) * 1000);
            }
        }
        function doUpdate(num) {
            document.getElementById('count').innerHTML = '将在' + num + '秒后自动跳转到准备竞赛界面！';
            if (num == 0) { window.location = URL; }
        }
    </script> 


   
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
        #rule{
           border:5px outset  #e2ecf0;
           height:427px;
           margin:20px 150px 20px 150px;
          
        }
         #rule p{
          font-family:KaiTi;
          font-size:150%;
          margin-right: 40px;
          margin-left: 40px;
        }

        h1 {
           text-align:center;      
        }
        #count {
            margin-top:0px auto;
            text-align:right;
            color:#ff0000;
            font-size:110%; 
            height:26px;       
        }

        footer {
            clear:both;
            height:50px;
            text-align:center;
            background-color:#d2d2d2;

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
        <div id="rule">
           
            <h1>请阅读竞赛规则</h1>
            <div id="count">
                <script type="text/javascript">
                    Load(" Prepare.aspx");
                </script>
            </div>
            <p>
            竞赛者登录后，请仔细阅读竞赛规则。<br />
            竞赛者阅读完竞赛规则后，将自动跳到准备竞赛页面，在选手框中输入用户名，点击加入，
            将进入正式竞赛环节，竞赛题目主要是选择题，每道题有30秒的阅读和抢答时间。30秒内抢答按钮每位选手只能提交
            一次，每个选手的抢答情况将会显示在左侧显示框中，最后给“回答正确，第一个回答”的选手加分。
            </p>
            
        </div>
        <footer>
          <hr /> 版权所有
        </footer>
    
  
    </form>
    

</body>
</html>
