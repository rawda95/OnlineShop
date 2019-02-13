<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="onlineshop.Customer.signup" %>

<asp:Content ID="Content4" ContentPlaceHolderID="header" runat="server">
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


    <section id="form">
        <!--form-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4 col-sm-offset-4">
                    <div class="signup-form">
                        <!--sign up form-->
                        <h2>New User Signup!</h2>
                        <div class="form">
                            <%--<input type="text" placeholder="Name"/>--%>
                            <div class="row form-inline " style="display: -webkit-box">
                                <asp:TextBox ID="txt_FirstName" runat="server" classs="col-sm-8 form-control " placeholder="FirstName" ValidationGroup="SignUpSeller" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator Style="flex: auto" ID="RFV_FirstName" runat="server" classs="col-sm-1 form-control " ControlToValidate="txt_FirstName" ErrorMessage="please enter your first name" ForeColor="Red" ValidationGroup="SignUpSeller">*</asp:RequiredFieldValidator>

                            </div>
                            <%--<input type="email" placeholder="Email Address"/>--%>
                            <div class="row form-inline" style="display: -webkit-box">
                                <asp:TextBox ID="txt_LastName" runat="server" classs="col-sm-8 form-control  " placeholder="LastName" MaxLength="50" ValidationGroup="SignUpSeller"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_LastName" Style="flex: auto" classs="col-sm-4 form-control " runat="server" ControlToValidate="txt_LastName" ErrorMessage="please enter your last name" ForeColor="Red" ValidationGroup="SignUpSeller">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="row form-inline" style="display: -webkit-box">
                                <asp:TextBox ID="txt_UserSellerName" runat="server" classs="col-sm-8 form-control  " placeholder="UserName" MaxLength="50" ValidationGroup="SignUpSeller"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RF_userSellerName" Style="flex: auto" classs="col-sm-4 form-control " runat="server" ControlToValidate="txt_UserSellerName" ErrorMessage="please enter user name for login" ForeColor="Red" ValidationGroup="SignUpSeller">*</asp:RequiredFieldValidator>
                            </div>
                            <%--<input type="password" placeholder="Password"/>--%>
                            <div class="row form-inline" style="display: -webkit-box">
                                <asp:TextBox ID="txt_passSellerSignup" runat="server" classs="col-sm-8 form-control " TextMode="Password" MaxLength="20" placeholder="Password" ValidationGroup="SignUpSeller"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_Password" Style="flex: auto" runat="server" classs="col-sm-4 form-control " ErrorMessage="please enter  your password" ForeColor="Red" ControlToValidate="txt_passSellerSignup" ValidationGroup="SignUpSeller">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="row" style="display: -webkit-box">
                                <asp:TextBox ID="txt_confirmPassword" runat="server" TextMode="Password" placeholder="Confirm password" MaxLength="20" ValidationGroup="SignUpSeller"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_confirmpassword" Style="flex: auto" runat="server" ControlToValidate="txt_confirmPassword" Display="Dynamic" ErrorMessage="confirm password" ForeColor="Red" ValidationGroup="SignUpCust">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CV_confirmpassword" runat="server" Style="flex: auto" ControlToCompare="txt_passSellerSignup" ControlToValidate="txt_confirmPassword" Display="Dynamic" ErrorMessage="password not matched" ForeColor="Red" ValidationGroup="SignUpSeller">*</asp:CompareValidator>
                            </div>
                            <div class="row" style="display: -webkit-box">
                                <asp:TextBox ID="Txt_AddressSeller" runat="server" placeholder="Address" MaxLength="50" ValidationGroup="SignUpSeller"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_AdressSeller" Style="flex: auto" runat="server" ControlToValidate="Txt_AddressSeller" ErrorMessage="enter your Address" ForeColor="Red" ValidationGroup="SignUpSeller">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="row" style="display: -webkit-box">
                                <asp:TextBox ID="txt_emailSignupSeller" runat="server" TextMode="Email" placeholder="E-mail" MaxLength="50" ValidationGroup="SignUpSeller"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_emailSeller" Style="flex: auto" runat="server" ControlToValidate="txt_emailSignupSeller" Display="Dynamic" ErrorMessage="please enter your e-mail" ForeColor="Red" ValidationGroup="SignUpSeller">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REV_emaiSellerl" Style="flex: auto" runat="server" Display="Dynamic" ErrorMessage="please enter a valid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_emailSignupSeller" ValidationGroup="SignUpSeller">*</asp:RegularExpressionValidator>
                            </div>
                            <div style="display: -webkit-box">

                                <asp:FileUpload ID="FU_SellerImg" runat="server" ValidationGroup="SignUpSeller" />
                                <asp:RequiredFieldValidator Style="flex: auto" ID="RF_uploadImg" runat="server" classs="col-sm-4 form-control " ControlToValidate="FU_SellerImg" ErrorMessage="please enter your ID Image name" ForeColor="Red" ValidationGroup="SignUpSeller">*</asp:RequiredFieldValidator>
                                <asp:Label ID="lbl_fileCheckSeller" runat="server" Text="" ValidationGroup="SignUpSeller"></asp:Label>
                            </div>
                            <div style="display: -webkit-box">
                                <asp:Button ID="btn_signupSeller" Class="btn btn-primary  " runat="server" Text="SignUp" Height="32px" Width="83px" ValidationGroup="SignUpSeller" OnClick="btn_signup_Click" />
                                <asp:ValidationSummary ID="VS_signupSeller" ValidationGroup="SignUpSeller" runat="server" />
                                <asp:Label ID="lbl_SinCheckSeller" runat="server" Text="" ValidationGroup="SignUpSeller"></asp:Label>
                            </div>
                            <%--<button type="submit" class="btn btn-default">Signup</button>--%>

                            <div>
                                <asp:Button ID="btn_login" OnClick="btn_login_Click" runat="server" Text="login" />
                            </div>
                        </div>
                    </div>
                    <!--/sign up form-->
                </div>
            </div>
        </div>
    </section>
    <!--/form-->

</asp:Content>
