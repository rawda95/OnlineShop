<%@ Page Title="" Language="C#" MasterPageFile="~/gust/gust.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="onlineshop.gust.index" %>



<asp:Content ID="Content3" ContentPlaceHolderID="header" runat="server">

    <ul class="nav navbar-nav">
        <li>
            <asp:LinkButton runat="server" ID="btn_Sele_With_Us" OnClick="btn_Sele_With_Us_Click">
                                            <i class="fa fa-user"></i>Sale With Us </asp:LinkButton></li>

        <li><a href="login.html">
            <asp:LinkButton runat="server" ID="btn_login" OnClick="btn_login_Click">
                                            <i class="fa fa-lock"></i>Login
            </asp:LinkButton>

        </a></li>
        <li><a href="login.html">
            <asp:LinkButton runat="server" ID="lb_signup" OnClick="lb_signup_Click">
            <i class="fa fa-user-md"></i>Sign Up
            </asp:LinkButton></a></li>





    </ul>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="search" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
</asp:Content>
