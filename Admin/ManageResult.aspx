<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackMasterPage.master" AutoEventWireup="true" CodeFile="ManageResult.aspx.cs" Inherits="Admin_ManageResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphRight" Runat="Server">
     <div id="nav"> <a href="../Login.aspx" >安全退出</a></div>
   
    
    
     <div style="margin-top:5px;margin-left:200px">
     <div style ="text-align:center">
    <asp:Label ID="Label1" runat="server" Text="编号范围:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Width="74px"></asp:TextBox>&nbsp;—
    <asp:TextBox ID="TextBox2" runat="server" Width="74px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="竞赛人员:"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" Width="114px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="搜索" />
    </div>
     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Result_id" DataSourceID="LinqDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="700px">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Result_id" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="Result_id" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>

            <asp:BoundField DataField="Players" HeaderText="竞赛人员" SortExpression="Players" >
             <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>

            <asp:BoundField DataField="Score" HeaderText="对应成绩" SortExpression="Score" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="Date" HeaderText="添加时间" SortExpression="Date"  DataFormatString="{0:yyyy-MM-dd}">
             <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>

            <asp:CommandField  ShowEditButton="True" HeaderText="操作" ></asp:CommandField>
            <asp:CommandField ShowDeleteButton="True" DeleteText="&lt;div id=&quot;de&quot;  onclick=&quot;JavaScript:return window.confirm('您确认要删除吗？')&quot;&gt;删除&lt;/div&gt;" >
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






     <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="KcsDataClassesDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Result">
     </asp:LinqDataSource>


     <asp:QueryExtender ID="QueryExtender1" runat="server" TargetControlID="LinqDataSource1">
     <asp:RangeExpression DataField="Result_id" MinType="Inclusive" MaxType="Inclusive">
         <asp:ControlParameter ControlID="TextBox1" />
         <asp:ControlParameter ControlID="TextBox2" />
     </asp:RangeExpression>
     <asp:SearchExpression DataFields="Players" SearchType="Contains">
        <asp:ControlParameter ControlID="TextBox3" />
     </asp:SearchExpression>
        <%--<asp:SearchExpression DataFields="" SearchType="StartsWith" >
            <asp:ControlParameter ControlID="TextBox3" DbType="DateTime" />
        </asp:SearchExpression>--%>
    </asp:QueryExtender>




    </div>










</asp:Content>

