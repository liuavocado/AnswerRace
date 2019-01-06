<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackMasterPage.master" AutoEventWireup="true" CodeFile="ManageTest.aspx.cs" Inherits="Admin_ManageTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        function show() {
            document.getElementById("Calendar1").style.display = 'block';
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphRight" Runat="Server">
    <div id="nav"><a href="../Login.aspx" >安全退出</a>
    </div>
    <div style="margin-top:5px;margin-left:5px">
    <div style ="margin-left:250px">
    <asp:Label ID="Label1" runat="server" Text="编号范围:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Width="74px"></asp:TextBox>&nbsp;—
    <asp:TextBox ID="TextBox4" runat="server" Width="74px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="题目:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Width="114px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="搜索" />
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TestID" DataSourceID="ldsTest" Width="1140px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                  <asp:HyperLinkField Text="修改" DataNavigateUrlFields="TestID" DataNavigateUrlFormatString="TestUpdate.aspx?TestID={0}" />
                <asp:CommandField ShowDeleteButton="True" DeleteText="&lt;div id=&quot;de&quot;  onclick=&quot;JavaScript:return window.confirm('您确认要删除吗？')&quot;&gt;删除&lt;/div&gt;" />
                <asp:BoundField DataField="TestID" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="TestID">
                <ItemStyle Width="40px" />
                </asp:BoundField>
                <asp:BoundField DataField="TestTitle" HeaderText="题目" SortExpression="TestTitle">
                <ItemStyle Width="350px" />
                </asp:BoundField>
                <asp:BoundField DataField="TestAns1" HeaderText="选项1" SortExpression="TestAns1">
                <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="TestAns2" HeaderText="选项2" SortExpression="TestAns2">
                <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="TestAns3" HeaderText="选项3" SortExpression="TestAns3">
                <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="TestAns4" HeaderText="选项4" SortExpression="TestAns4">
                <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="RightAns" HeaderText="正确选项" SortExpression="RightAns">
                <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="Time" HeaderText="添加时间" SortExpression="Time" DataFormatString="{0:yyyy-MM-dd}" >
                <ItemStyle Width="90px" />
                </asp:BoundField>
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
      

       
                
      

        <asp:LinqDataSource ID="ldsTest" runat="server" ContextTypeName="KcsDataClassesDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" OrderBy="TestID desc" TableName="Test">
        </asp:LinqDataSource>
      

       
                
      

    <asp:QueryExtender ID="QueryExtender1" runat="server" TargetControlID="ldsTest">
        <%--<asp:SearchExpression DataFields="TestID" SearchType="StartsWith">
            <asp:ControlParameter ControlID="TextBox1" />
        </asp:SearchExpression>--%>
         <asp:RangeExpression DataField="TestID" MinType="Inclusive" MaxType="Inclusive">
            <asp:ControlParameter ControlID="TextBox1" />
            <asp:ControlParameter ControlID="TextBox4" />
        </asp:RangeExpression>
        <asp:SearchExpression DataFields="TestTitle" SearchType="Contains">
            <asp:ControlParameter ControlID="TextBox2" />
        </asp:SearchExpression>
    </asp:QueryExtender>
         
    
   </div>    


</asp:Content>

