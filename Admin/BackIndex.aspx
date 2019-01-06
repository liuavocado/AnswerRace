<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackMasterPage.master" AutoEventWireup="true" CodeFile="BackIndex.aspx.cs" Inherits="Admin_BackIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphRight" Runat="Server">
     <div id="nav">
                欢迎<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
               <a href="../Login.aspx" >安全退出</a>
      </div>
     <h1 style="font-family:楷体">欢迎使用后台管理系统!</h1>
</asp:Content>

