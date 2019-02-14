<%@ Page Title="" Language="C#" MasterPageFile="~/adminSite/admin.Master" AutoEventWireup="true" CodeBehind="Report4.aspx.cs" Inherits="onlineshop.adminSite.Report4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="aside" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Search User By Name"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btn_search" runat="server" OnClick="btn_search_Click" Text="Search" />
    </p>
    <p>
        <asp:GridView ID="grd_users" runat="server">
        </asp:GridView>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
