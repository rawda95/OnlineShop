<%@ Page Title="" Language="C#" MasterPageFile="~/seller/Home.Master" AutoEventWireup="true" CodeBehind="reoveryPassword.aspx.cs" Inherits="onlineshop.seller.reoveryPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ph_header" runat="server">
    <ul class="nav navbar-nav">
        <li>
            <asp:LinkButton runat="server" ID="lb_seller" OnClick="lb_seller_Click"> <i class="fa fa-user"></i>Sale With Us</asp:LinkButton></li>

        <li>
            <asp:LinkButton runat="server" ID="signup" OnClick="signup_Click"><i class="fa fa-user-md"></i>signup</asp:LinkButton></li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="search" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">


    <div class="login-form" style="width: 414px">
        <h2 class="text-center">Sign in</h2>
        <div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <asp:TextBox ID="txt_email" runat="server" MaxLength="50" ValidationGroup="LogInSeller" class="col-sm-6 form-control" placeholder=" Enter Your Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RV_NameLoginSeller" Style="flex: auto" classs="col-sm-6 form-control" runat="server" ControlToValidate="txt_email" ErrorMessage="please enter your Email" ForeColor="Red" ValidationGroup="LogInSeller">*</asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
        </div>

        <asp:Button ID="btn_resat_pass" class="btn btn-primary login-btn btn-block" runat="server" Text="resate password" ValidationGroup="LogInSeller" OnClick="btn_reset_Click" />
        <asp:Label ID="lbl_error" runat="server" Text="" ValidationGroup="LogInSeller"></asp:Label>


    </div>



</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
