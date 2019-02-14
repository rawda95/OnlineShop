<%@ Page Title="" Language="C#" MasterPageFile="~/gust/gust.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="onlineshop.AboutUs" Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    <ul class="nav navbar-nav">
        <li>
            <asp:LinkButton runat="server" ID="btn_Sele_With_Us" Text="<%$ Resources: ResHome,btnSign%>" OnClick="btn_Sele_With_Us_Click">
                                            <i class="fa fa-user"></i>Sale With Us </asp:LinkButton></li>

        <li>
            <asp:LinkButton runat="server" Text="<%$ Resources: ResHome,btnLog%>" ID="btn_login" OnClick="btn_login_Click">
                                            <i class="fa fa-lock"></i>Login
            </asp:LinkButton>

        </li>
        <li>
            <asp:LinkButton runat="server" Text="<%$ Resources: ResHome,btnSaleWithUs%>" ID="lb_signup" OnClick="lb_signup_Click">
            <i class="fa fa-user-md"></i>Sign Up
            </asp:LinkButton></li>





    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="search" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">

    <div class="container" runat="server" id="parafirst">
        <div class="row">

            <asp:Label ID="Label1" runat="server" Text=" Welcome to OnlineShop.com – the Middle East’s online marketplace." meta:resourcekey="Label1Resource1"></asp:Label>

            <br />

            <asp:Label ID="Label2" runat="server" Text="  We connect people and products – opening up a world of possibility." meta:resourcekey="Label2Resource1"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text=" we give you access to everything you need and want." meta:resourcekey="Label3Resource1"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="  We’re trusted by millions, because we don’t just deliver to your doorstep," meta:resourcekey="Label4Resource1"></asp:Label>
            <asp:Label ID="Label5" runat="server" Text=" we were born here." meta:resourcekey="Label5Resource1"></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" Text=" This is OnlineShoping.com – the power is in your hands." meta:resourcekey="Label6Resource1"></asp:Label>



        </div>
        <br />
        <br />
    </div>
    </asp>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
