<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackMasterPage.master" AutoEventWireup="true" CodeFile="ManagePlayer.aspx.cs" Inherits="Admin_ManagePlayer" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphRight" Runat="Server">
   <div id="nav"> <a href="../Login.aspx" >安全退出</a></div>
    <div style="margin-top:5px;margin-left:100px">
    <div style ="text-align:center">
    <asp:Label ID="Label1" runat="server" Text="用户名:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Width="74px"></asp:TextBox>&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="性别:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Width="74px"></asp:TextBox>&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="年龄范围:"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" Width="54px"></asp:TextBox>&nbsp;—
    <asp:TextBox ID="TextBox4" runat="server" Width="54px"></asp:TextBox>&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="搜索" />
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="player_id" DataSourceID="ldsPlayer" CellPadding="4" ForeColor="#333333" GridLines="None" Width="950px"  >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="player_id" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="player_id" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>

            <asp:BoundField DataField="player_name" HeaderText="用户名" SortExpression="player_name" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                
            </asp:BoundField>
            <asp:BoundField DataField="password" HeaderText="密码" SortExpression="password" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                
            </asp:BoundField>
            <asp:BoundField DataField="sex" HeaderText="性别" SortExpression="sex" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="age" HeaderText="年龄" SortExpression="age" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:CommandField  ShowEditButton="True" HeaderText="操作" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:CommandField>
             <asp:CommandField ShowDeleteButton="True" DeleteText="&lt;div id=&quot;de&quot;  onclick=&quot;JavaScript:return window.confirm('您确认要删除吗？')&quot;&gt;删除&lt;/div&gt;" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:CommandField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

    <asp:QueryExtender ID="QueryExtender1" runat="server" TargetControlID="ldsPlayer">
        <asp:SearchExpression DataFields="player_name" SearchType="Contains">
            <asp:ControlParameter ControlID="TextBox1" />
        </asp:SearchExpression>
        <asp:SearchExpression DataFields="sex" SearchType="StartsWith">
            <asp:ControlParameter ControlID="TextBox2" />
        </asp:SearchExpression>
       <%-- <asp: DataFields="age" SearchType="StartsWith">
            <asp:ControlParameter ControlID="TextBox3" />
        </asp:>--%>
        <asp:RangeExpression DataField="age" MinType="Inclusive" MaxType="Inclusive">
            <asp:ControlParameter ControlID="TextBox3" />
            <asp:ControlParameter ControlID="TextBox4" />
        </asp:RangeExpression>
    </asp:QueryExtender>
         
    <asp:LinqDataSource ID="ldsPlayer" runat="server" ContextTypeName="KcsDataClassesDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Player">
    </asp:LinqDataSource>
   </div>    
</asp:Content>
