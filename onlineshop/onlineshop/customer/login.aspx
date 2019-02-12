<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="onlineshop.Customer.login" %>

<asp:Content ID="Content4" ContentPlaceHolderID="ph_header" runat="server">
    <ul class="nav navbar-nav">
        <li><a href="#"><i class="fa fa-user"></i>Sale With Us</a></li>
        <li><a href="#"><i class="fa fa-star"></i>Wishlist</a></li>
        <li><a href="checkout.html"><i class="fa fa-crosshairs"></i>Checkout</a></li>
        <li><a href="cart.html"><i class="fa fa-shopping-cart"></i>Cart</a></li>
        <li><a href="login.html"><i class="fa fa-lock"></i>Login</a></li>
        <li><a href="login.html"><i class="fa fa-user-md"></i>Sign Up</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="search" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-4 ">
                <div class="login-form">
                    <!--login form-->
                    <h2>Login to your account</h2>
                    <div class="form">
                        <%--<input type="text" placeholder="Name" />--%>
                        <div class="row form-inline" style="display: -webkit-box">

                            <asp:TextBox ID="txt_NameLoginSeller" runat="server" classs="col-sm-8 form-control " MaxLength="50" ValidationGroup="LogInSeller" placeholder="Name"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RV_NameLoginSeller" Style="flex: auto" classs="col-sm-4 form-control " runat="server" ControlToValidate="txt_NameLoginSeller" ErrorMessage="please enter your name" ForeColor="Red" ValidationGroup="LogInSeller">*</asp:RequiredFieldValidator>
                        </div>
                        <%--<input type="email" placeholder="Email Address" />--%>
                        <div class="row form-inline" style="display: -webkit-box">

                            <asp:TextBox ID="txt_LoginPassSeller" runat="server" Class=" col-sm-8 form-control" TextMode="Password" placeholder="Password" MaxLength="20" ValidationGroup="LogInSeller"></asp:TextBox>

                            <%--  <asp:TextBox ID="Txt_passLogin" runat="server" classs="col-sm-8 form-control " TextMode="Password"  MaxLength="20" placeholder="Password" ValidationGroup="LogIn"></asp:TextBox>--%>
                            <asp:RequiredFieldValidator ID="RF_passLoginSeller" Style="flex: auto" runat="server" classs="col-sm-4 form-control " ErrorMessage="please enter  your password" ForeColor="Red" ControlToValidate="txt_LoginPassSeller" ValidationGroup="LogInsSeller">*</asp:RequiredFieldValidator>
                        </div>
                        <%--<span>--%>
                        <%--<input type="checkbox" class="checkbox"/>--%>
                        <div class="row form-inline" style="display: -webkit-box">
                            <%--<asp:CheckBox ID="CB_rememberMe" runat="server" Class="checkbox" ValidationGroup="LogIn"  />--%>

                            <asp:CheckBox ID="CB_rememberMeSeller" runat="server" Class="checkbox" ValidationGroup="LogInSeller" />

                            Keep me signed in
                       
                       
                       
                       
                       
                       
                       
                        </div>
                        <asp:Button runat="server" ID="btn_signup" OnClick="btn_signup_Click" Text="signup" />

                        <%--</span>--%>
                        <div style="display: -webkit-box">

                            <%-- <asp:Button ID="btn_login" Class="btn btn-primary  "  runat="server" Text="Login" Height="32px" Width="83px"   ValidationGroup="LogIn" OnClick="btn_login_Click" />--%>
                            <asp:Button ID="btn_LogInSeller" Class="btn btn-primary" runat="server" Text="Login" Height="32px" Width="83px" ValidationGroup="LogInSeller" OnClick="btn_LogInSeller_Click" />
                            <%-- <asp:Label ID="Lbl_check" runat="server" ValidationGroup="LogIn"></asp:Label>--%>
                            <asp:Label ID="lbl_checkSeller" runat="server" Text="" ValidationGroup="LogInSeller"></asp:Label>
                            <asp:ValidationSummary ID="VS_loginSeller" ValidationGroup="LogInSeller" runat="server" />
                        </div>
                        <%--<button type="submit" class="btn btn-default" >Login</button>--%>
                    </div>
                </div>
                <!--/login form-->
            </div>



        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
