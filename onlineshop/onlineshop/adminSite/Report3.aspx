<%@ Page Title="" Language="C#" MasterPageFile="~/adminSite/admin.Master" AutoEventWireup="true" CodeBehind="Report3.aspx.cs" Inherits="onlineshop.adminSite.Report3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="aside" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" CssClass="active active" Text="Shop and Selller Information "></asp:Label>
        <br />
        <asp:GridView ID="grd_ShopSellerinfo" runat="server">
        </asp:GridView>
    </p>
    <p>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/adminSite/reports.aspx">Back To Admin Reports</asp:LinkButton>
    </p>
    <p>
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
