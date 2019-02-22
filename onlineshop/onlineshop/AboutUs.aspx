<%@ Page Title="" Language="C#" MasterPageFile="~/gust/gust.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="onlineshop.AboutUs" Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ph_header" runat="server">
    <ul class="nav navbar-nav">
        <li>
            <asp:LinkButton runat="server" ID="btnSaleWithUs" Text="<%$ Resources: ResHome,btnSaleWithUs %>" OnClick="btnSaleWithUs_Click1">
                                            <i class="fa fa-user"></i>Sale With Us </asp:LinkButton></li>

        <li>
            <asp:LinkButton runat="server" Text="<%$ Resources: ResHome,btnLog%>" ID="btn_login" OnClick="btn_login_Click">
                                            <i class="fa fa-lock"></i>Login
            </asp:LinkButton>

        </li>
        <li>
            <asp:LinkButton runat="server" Text="<%$ Resources: ResHome,btnSign%>" ID="lb_signup" OnClick="lb_signup_Click">
            <i class="fa fa-user-md"></i>Sign Up
            </asp:LinkButton></li>





    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="search" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">

    <div class="container" runat="server" id="parafirst">

        <div class="bg">

            <div class="row">
                <div class="col-sm-8 contact-info">

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
        </div>

    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
