<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackMasterPage.master" AutoEventWireup="true" CodeFile="ManageAdmin.aspx.cs" Inherits="Admin_ManageAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphRight" Runat="Server">
     <div id="nav"> <a href="../Login.aspx" >安全退出</a></div>
     <div style="margin-top:5px;margin-left:300px">
         <div style ="text-align:center"><h1>管理员信息维护</h1></div>
         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="admin_id" DataSourceID="ldsAdmin" ForeColor="#333333" GridLines="None" Width="565px">
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
             <Columns>
                 <asp:BoundField DataField="admin_id" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="admin_id" >
                 <HeaderStyle HorizontalAlign="Left" />
                 </asp:BoundField>
                 <asp:BoundField DataField="admin_name" HeaderText="管理员账号" SortExpression="admin_name" >
                 <HeaderStyle HorizontalAlign="Left" />
                 </asp:BoundField>
                 
                  <asp:BoundField DataField="password" HeaderText="密码" SortExpression="password" >
                   <HeaderStyle HorizontalAlign="Left" />
                 </asp:BoundField>

                  <asp:CommandField  ShowEditButton="True" HeaderText="操作" >
                 <HeaderStyle HorizontalAlign="Left" />
                 </asp:CommandField>
                  <asp:CommandField ShowDeleteButton="True" DeleteText="&lt;div id=&quot;de&quot;  onclick=&quot;JavaScript:return window.confirm('您确认要删除吗？')&quot;&gt;删除&lt;/div&gt;" >
                   <HeaderStyle HorizontalAlign="Left"  />
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


         <asp:LinqDataSource ID="ldsAdmin" runat="server" ContextTypeName="KcsDataClassesDataContext" EnableUpdate="True" EntityTypeName="" TableName="Admin">
         </asp:LinqDataSource>


     </div>

</asp:Content>

