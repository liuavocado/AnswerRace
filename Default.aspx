<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                 <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick">
                 </asp:Timer>
              <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
            <asp:RadioButtonList ID="cbk" runat="server" ></asp:RadioButtonList><br />  <%--autopostback="true" onselectedindexchanged="cbk_SelectedIndexChanged"--%>
             <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /><br />
             <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </ContentTemplate>
        </asp:UpdatePanel>
       <%-- </asp:Panel>--%>
       
    </form>
</body>
</html>
