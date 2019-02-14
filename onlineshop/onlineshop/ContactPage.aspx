<%@ Page Title="" Language="C#" MasterPageFile="~/gust/gust.Master" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="perfume.ContactPage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="search" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" runat="server">

    <div id="contact-page" class="container">
        <div class="bg">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="title text-center">Contact <strong>Us</strong></h2>
                    <div id="gmap" class="contact-map">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-8">
                    <div class="contact-form">
                        <h2 class="title text-center">Get In Touch</h2>
                        <div class="status alert alert-success" style="display: none"></div>
                        <form id="main-contact-form" class="contact-form row" name="contact-form" method="post">
                            <div class="form-group col-md-6">
                                <asp:TextBox runat="server" class="form-control" placeholder="Name" ID="txt_name"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="v1" runat="server" ControlToValidate="txt_name" ErrorMessage="Please Enter Ur Name" ForeColor="Red">*</asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group col-md-6">
                                <asp:TextBox runat="server" class="form-control" placeholder="Email" ID="txt_mail"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="v2" runat="server" ControlToValidate="txt_mail" ErrorMessage="Enter A Valid Mail" ForeColor="Red">*</asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group col-md-12">
                                <asp:TextBox runat="server" class="form-control" placeholder="Subject" ID="txt_sub"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="v3" runat="server" ControlToValidate="txt_sub" ErrorMessage="Enter Ur Subject" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-12">
                                <asp:TextBox runat="server" class="form-control" placeholder="Your Message Here" ID="txt_msg" Rows="5" TextMode="MultiLine"></asp:TextBox>

                            </div>
                            <asp:RequiredFieldValidator ID="v4" runat="server" ControlToValidate="txt_msg" ErrorMessage="Enter Ur Message" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <asp:ValidationSummary ID="s1" runat="server" ForeColor="Red" HeaderText="Please fix the following errors" />
                            <div class="form-group col-md-12">
                                <br />
                                <asp:Label ID="lbl_finish" runat="server"></asp:Label>
                                <asp:Button runat="server" Text="Submit" ID="btn_submit" class="btn btn-primary pull-right" OnClick="btn_submit_Click" />

                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="contact-info">
                        <h2 class="title text-center">Contact Info</h2>
                        <address>
                            <p>E-Shopper Inc.</p>
                            <p>935 W. Webster Ave New Streets Chicago, IL 60614, NY</p>
                            <p>Newyork USA</p>
                            <p>Mobile: +2346 17 38 93</p>
                            <p>Fax: 1-714-252-0026</p>
                            <p>Email: info@e-shopper.com</p>
                        </address>
                        <div class="social-networks">
                            <h2 class="title text-center">Social Networking</h2>
                            <ul>
                                <li>
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-youtube"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/#contact-page-->
</asp:Content>
