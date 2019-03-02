<%@ Page Title="" Language="C#" MasterPageFile="~/adminSite/admin.Master" AutoEventWireup="true" CodeBehind="AdminSearchProduct.aspx.cs" Inherits="onlineshop.adminSite.AdminSearchProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="aside" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
    <p>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="185px" placeholder="Search for product By Name"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-success my-2 my-sm-0" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Cancel" class="btn btn-danger my-2 my-sm-0" OnClick="Button2_Click" />
    </p>
    <br />
    <br />
    <br /> 
    <p>
        <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="100px" placeholder="Price from"></asp:TextBox>

     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="100px" placeholder="Price To"></asp:TextBox>

     </p>
    <p>
        <asp:Button ID="Button3" runat="server" Text="Search" class="btn btn-success my-2 my-sm-0" OnClick="Button3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Cancel" class="btn btn-danger my-2 my-sm-0" OnClick="Button4_Click" />
    </p>
    <p>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
