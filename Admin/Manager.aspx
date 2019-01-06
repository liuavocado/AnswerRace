<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Admin_Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    

    <style type="text/css">
        .aaa{
    background-color:#188cb9;
          border-style:solid;
          border-color:#188cb9;
          border-radius:5px;
          text-align:center;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TreeView ID="TreeView1" runat="server" ImageSet="Simple" RootNodeStyle-CssClass="aaa">
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD"  />
            <Nodes>
                <asp:TreeNode  Text="管理系统" Value="管理系统" >
                    <asp:TreeNode Text="企业管理" Value="企业管理"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="业务管理" Value="业务管理">
                    <asp:TreeNode Text="查询业务" Value="查询业务"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
    </div>
    </form>
</body>
</html>
