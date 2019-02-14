<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="onlineshop.Customer.signup" %>

<asp:Content ID="Content4" ContentPlaceHolderID="ph_header" runat="server">

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
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">


    <section id="form">
        <!--form-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4 col-sm-offset-4 ">
                    <div class="signup-form">
                        <!--sign up form-->
                        <h2>New User Signup!</h2>
                        <div class="form">
                            <%--<input type="text" placeholder="Name"/>--%>
                            <div class="row form-inline " style="display: -webkit-box">
                                <asp:TextBox ID="txt_CustFName" runat="server" classs="col-sm-8 form-control " placeholder="FirstName" ValidationGroup="SignUp" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator Style="flex: auto" ID="RFV_CustFName" runat="server" classs="col-sm-1 form-control " ControlToValidate="txt_CustFName" ErrorMessage="please enter your first name" ForeColor="Red" ValidationGroup="SignUp">*</asp:RequiredFieldValidator>
                            </div>
                            <%--<input type="email" placeholder="Email Address"/>--%>
                            <div class="row form-inline" style="display: -webkit-box">
                                <asp:TextBox ID="txt_CustLName" runat="server" classs="col-sm-8 form-control  " placeholder="LastName" MaxLength="50" ValidationGroup="SignUp"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_CustLName" Style="flex: auto" classs="col-sm-4 form-control " runat="server" ControlToValidate="txt_CustLName" ErrorMessage="please enter your last name" ForeColor="Red" ValidationGroup="SignUp">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="row form-inline" style="display: -webkit-box">
                                <asp:TextBox ID="txt_CustUserName" runat="server" classs="col-sm-8 form-control  " placeholder="UserName" MaxLength="50" ValidationGroup="SignUp"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RF_CustuserName" Style="flex: auto" classs="col-sm-4 form-control " runat="server" ControlToValidate="txt_CustUserName" ErrorMessage="please enter user name for login" ForeColor="Red" ValidationGroup="SignUp">*</asp:RequiredFieldValidator>
                            </div>
                            <%--<input type="password" placeholder="Password"/>--%>
                            <div class="row form-inline" style="display: -webkit-box">
                                <asp:TextBox ID="txt_CustpassSignup" runat="server" classs="col-sm-8 form-control " TextMode="Password" MaxLength="20" placeholder="Password" ValidationGroup="SignUp"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_CustPass" Style="flex: auto" runat="server" classs="col-sm-4 form-control " ErrorMessage="please enter  your password" ForeColor="Red" ControlToValidate="txt_CustpassSignup" ValidationGroup="SignUp">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="row" style="display: -webkit-box">
                                <asp:TextBox ID="txt_CustconfirmPass" runat="server" TextMode="Password" placeholder="Confirm password" MaxLength="20" ValidationGroup="SignUp"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_Custconfirmpass" Style="flex: auto" runat="server" ControlToValidate="txt_CustconfirmPass" Display="Dynamic" ErrorMessage="confirm password" ForeColor="Red" ValidationGroup="SignUp">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CV_Custconfirmpass" runat="server" Style="flex: auto" ControlToCompare="txt_CustpassSignup" ControlToValidate="txt_CustconfirmPass" Display="Dynamic" ErrorMessage="password not matched" ForeColor="Red" ValidationGroup="SignUp">*</asp:CompareValidator>
                            </div>
                            <div class="row" style="display: -webkit-box">
                                <asp:TextBox ID="Txt_CustAddress" runat="server" placeholder="Address" MaxLength="50" ValidationGroup="SignUp"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_CustAdress" Style="flex: auto" runat="server" ControlToValidate="Txt_CustAddress" ErrorMessage="enter your Address" ForeColor="Red" ValidationGroup="SignUp">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="row" style="display: -webkit-box">
                                <asp:TextBox ID="txt_CustemailSignup" runat="server" TextMode="Email" placeholder="E-mail" MaxLength="50" ValidationGroup="SignUp"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_Custemail" Style="flex: auto" runat="server" ControlToValidate="txt_CustemailSignup" Display="Dynamic" ErrorMessage="please enter your e-mail" ForeColor="Red" ValidationGroup="SignUp">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REV_Custemail" Style="flex: auto" runat="server" Display="Dynamic" ErrorMessage="please enter a valid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_CustemailSignup" ValidationGroup="SignUp">*</asp:RegularExpressionValidator>
                            </div>
                            <%--  
                            <div style="display:-webkit-box" >
                                <span>
                                    <h2>Shop Info</h2>
                                </span>
                               
                              </div>--%>
                            <%--<div style="display:-webkit-box">
                                 <asp:TextBox ID="txt_shop_Name" placeholder="Shop Name" runat="server"  MaxLength="50"  ValidationGroup="SignUp"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RFV_shopName" Style="flex:auto" runat="server" ControlToValidate="txt_shop_Name" ErrorMessage="please enter shop name" ForeColor="Red"  ValidationGroup="SignUp">*</asp:RequiredFieldValidator>
                             </div>
                            <div style="display:-webkit-box">
                                <asp:TextBox ID="txt_shopLocation" placeholder="Shop Location" runat="server"  MaxLength="50" ValidationGroup="SignUp"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_shopLocation"  Style="flex:auto" runat="server" ControlToValidate="txt_shopLocation" ErrorMessage="please enter shop location" ForeColor="Red"  ValidationGroup="SignUp">*</asp:RequiredFieldValidator>
                           </div>--%>
                            <div style="display: -webkit-box">
                                <asp:FileUpload ID="FU_CustomerImage" runat="server" ValidationGroup="SignUp" />
                                <asp:RequiredFieldValidator Style="flex: auto" ID="RF_Custupload" runat="server" classs="col-sm-4 form-control " ControlToValidate="FU_CustomerImage" ErrorMessage="please enter your ID Image name" ForeColor="Red" ValidationGroup="SignUp">*</asp:RequiredFieldValidator>
                            </div>
                            <div style="display: -webkit-box">
                                <asp:Button ID="btn_CustomerSignup" Class="btn btn-primary  " runat="server" Text="SignUp" Height="32px" Width="83px" ValidationGroup="SignUp" OnClick="btn_signup_Click" />
                                <asp:ValidationSummary ID="VS_Custsignup" ValidationGroup="SignUp" runat="server" />
                                <asp:Label ID="lbl_CustSinCheck" runat="server" Text="" ValidationGroup="SignUp"></asp:Label>
                            </div>
                            <%--<button type="submit" class="btn btn-default">Signup</button>--%>
                        </div>
                    </div>
                    <!--/sign up form-->
                </div>
            </div>
        </div>
    </section>
    <!--/form-->

</asp:Content>
