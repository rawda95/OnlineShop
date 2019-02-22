<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="onlineshop.Customer.signup" %>

<asp:Content ID="Content4" ContentPlaceHolderID="ph_header" runat="server">

    <ul class="nav navbar-nav">
        <li>
            <asp:LinkButton runat="server" ID="btn_Sele_With_Us" OnClick="btn_Sele_With_Us_Click">
                                            <i class="fa fa-user"></i>Sale With Us </asp:LinkButton></li>

        <li><a href="login.html">
            <asp:LinkButton runat="server" ID="btn_login" OnClick="btn_login_Click">
                                            <i class="fa fa-unlock"></i>Login
            </asp:LinkButton>

        </a></li>
        <li><a href="login.html">
            <asp:LinkButton runat="server" ID="lb_signup" OnClick="lb_signup_Click">
            <i class="fa fa-user"></i>Sign Up
            </asp:LinkButton></a></li>





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
                    <div class="signup-form ">
                        <!--sign up form-->
                        <h2>New User Signup!</h2>
                        <div class="form-group col-sm-12">
                            <%--<input type="text" placeholder="Name"/>--%>
                            <div class="row form-inline">
                                &nbsp;<asp:TextBox ID="txt_CustLName" runat="server" class="col-sm-8 form-control" placeholder="FirstName" ValidationGroup="SignUpSeller" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator Style="flex: auto" ID="RFV_FirstName" runat="server" classs="col-sm-1 form-control " ControlToValidate="txt_CustLName" ErrorMessage="please enter your first name" ForeColor="Red" ValidationGroup="SignUpSeller">*</asp:RequiredFieldValidator>
                            </div>
                            <br />
                            <%--<input type="email" placeholder="Email Address"/>--%>

                            <div class="row form-inline" style="display: -webkit-box">
                                <asp:TextBox ID="txt_CustUserName" runat="server" class="col-sm-8 form-control" placeholder="UserName" MaxLength="50" ValidationGroup="SignUpSeller"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RF_userSellerName" class="col-sm-4 form-control " runat="server" ControlToValidate="txt_CustUserName" ErrorMessage="please enter user name for login" ForeColor="Red" ValidationGroup="SignUpSeller" Style="left: 0px; top: 0px; width: 1%">*</asp:RequiredFieldValidator>
                            </div>
                            <br />
                            <div class="row form-inline" style="display: -webkit-box">
                                <asp:TextBox ID="txt_CustpassSignup" runat="server" class="col-sm-8 form-control " TextMode="Password" MaxLength="20" placeholder="Password" ValidationGroup="SignUpSeller"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_Password" runat="server" class="col-sm-4 form-control " ErrorMessage="please enter  your password" ForeColor="Red" ControlToValidate="txt_CustpassSignup" ValidationGroup="SignUpSeller" Style="left: 0px; top: 0px; width: 1%">*</asp:RequiredFieldValidator>
                                <br />
                            </div>
                            <br />
                            <div class="row" style="display: -webkit-box">
                                <asp:TextBox ID="txt_CustconfirmPass" runat="server" TextMode="Password" class="col-sm-8 form-control" placeholder="Confirm password" MaxLength="20" ValidationGroup="SignUpSeller"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_confirmpassword" Style="flex: auto" runat="server" ControlToValidate="txt_CustconfirmPass" Display="Dynamic" ErrorMessage="confirm password" ForeColor="Red" ValidationGroup="SignUpCust">*</asp:RequiredFieldValidator>
                                <br />
                            </div>
                            <br />
                            <div class="row" style="display: -webkit-box;">
                                <asp:TextBox ID="Txt_CustAddress" runat="server" class="col-sm-8 form-control" placeholder="Address" MaxLength="50" ValidationGroup="SignUpSeller"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_AdressSeller" Style="flex: auto" runat="server" ControlToValidate="Txt_CustAddress" ErrorMessage="enter your Address" ForeColor="Red" ValidationGroup="SignUpSeller">*</asp:RequiredFieldValidator>
                                <br />
                            </div>
                            <br />
                            <div class="row" style="display: -webkit-box">
                                <asp:TextBox ID="txt_CustemailSignup" runat="server" TextMode="Email" class="col-sm-8 form-control" placeholder="E-mail" MaxLength="50" ValidationGroup="SignUpSeller"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_emailSeller" Style="flex: auto" runat="server" ControlToValidate="txt_CustemailSignup" Display="Dynamic" ErrorMessage="please enter your e-mail" ForeColor="Red" ValidationGroup="SignUpSeller">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Style="flex: auto" runat="server" Display="Dynamic" ErrorMessage="please enter a valid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_CustemailSignup" ValidationGroup="SignUp">*</asp:RegularExpressionValidator>

                                <br />
                            </div>
                            <br />
                            <div style="display: -webkit-box" class="row">

                                <asp:FileUpload ID="FU_CustomerImage" runat="server" class="col-sm-8 form-control" ValidationGroup="SignUpSeller" />
                                <asp:RequiredFieldValidator Style="flex: auto" ID="RF_uploadImg" runat="server" classs="col-sm-8 form-control " ControlToValidate="FU_CustomerImage" ErrorMessage="please enter your ID Image name" ForeColor="Red" ValidationGroup="SignUpSeller">*</asp:RequiredFieldValidator>
                                <asp:Label ID="lbl_fileCheckSeller" runat="server" ValidationGroup="SignUpSeller"></asp:Label>
                            </div>
                            <br>

                            <div class="row nav-justified">


                                <div class=" col-sm-12 col-md-6">
                                    <asp:Button ID="btn_CustomerSignup" Class="btn btn-success login-btn" runat="server" Text="SignUp" ValidationGroup="SignUpSeller" OnClick="btn_signup_Click" Style="margin-bottom: 3px" Width="100%" />

                                </div>
                                <div class=" col-sm-12 col-md-6">
                                    <asp:Button ID="btn_login_form" OnClick="btn_login_Click" runat="server" class="form-control btn-danger"
                                        Text="login" Height="30px" Width="100%" />

                                </div>
                                <asp:ValidationSummary ID="VS_signupSeller" ValidationGroup="SignUpSeller" runat="server" Width="204px" />
                                <asp:Label ID="lbl_CustSinCheck" runat="server" Text="" ValidationGroup="SignUpSeller"></asp:Label>


                            </div>
                            <%--<button type="submit" class="btn btn-default">Signup</button>--%>

                            <div class="input-group">
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


<asp:Content ContentPlaceHolderID="script" ID="conteant2" runat="server">
</asp:Content>
