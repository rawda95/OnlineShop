<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="onlineshop.Customer.login" %>

<asp:Content ID="Content4" ContentPlaceHolderID="ph_header" runat="server">

    <ul class="nav navbar-nav">
        <li>
            <asp:LinkButton runat="server" ID="LinkButton1" OnClick="btn_Sele_With_Us_Click">
                                            <i class="fa fa-user"></i>Sale With Us </asp:LinkButton></li>

        <li><a href="login.html">
            <asp:LinkButton runat="server" ID="LinkButton2" OnClick="lb_signup_Click1">
            <i class="fa fa-user-md"></i>Sign Up
            </asp:LinkButton></a></li>

    </ul>


</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="search" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-4">
                <div class="login-form">
                    <h2 class="text-center">Sign in</h2>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <asp:TextBox ID="txt_NameLoginSeller" runat="server" MaxLength="50" ValidationGroup="LogInSeller" class="col-sm-6 form-control" placeholder=" Enter Your Name"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RV_NameLoginSeller" Style="flex: auto" classs="col-sm-6 form-control" runat="server" ControlToValidate="txt_NameLoginSeller" ErrorMessage="please enter your name" ForeColor="Red" ValidationGroup="LogInSeller">*</asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            <asp:TextBox ID="txt_LoginPassSeller" runat="server" class="form-control" TextMode="Password" placeholder="Password" MaxLength="20" ValidationGroup="LogInSeller"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RF_passLoginSeller" Style="flex: auto" runat="server" classs="col-sm-4 form-control " ErrorMessage="please enter  your password" ForeColor="Red" ControlToValidate="txt_LoginPassSeller" ValidationGroup="LogInsSeller">*</asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group">
                        <asp:CheckBox ID="CB_rememberMeSeller" runat="server" Class="checkbox" ValidationGroup="LogInSeller" Width="22px" Height="20px" />Keep me signed in

                   
                   
                    </div>
                    <div class="clearfix  form-group">

                        <asp:Button ID="btn_LogInSeller" class="btn btn-primary login-btn btn-block" runat="server" Text="Login" ValidationGroup="LogInSeller" OnClick="btn_LogInSeller_Click" />
                        <asp:Label ID="lbl_checkSeller" runat="server" Text="" ValidationGroup="LogInSeller"></asp:Label>
                    </div>
                    <div class="form-group">
                        <p class="text-center text-muted small">
                            <asp:LinkButton runat="server" ID="lb_forget_pass" OnClick="lb_forget_pass_Click"> Forget password?</asp:LinkButton>
                        </p>
                    </div>

                    <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="LogInSeller" runat="server" Height="55px" />

                </div>

            </div>
        </div>
    </div>

</asp:Content>
