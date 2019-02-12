<%@ Page Title="" Language="C#" MasterPageFile="~/seller/Home.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="onlineshop.seller.Profile" %>


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

    <div>
        <asp:MultiView ID="MV_profileSeller" runat="server" ActiveViewIndex="0">
            <asp:View ID="V_EditProfileSeller" runat="server">
                <div class="row " style="display: -webkit-inline-box">
                    <div class="col-sm-4 col-sm-offset-2" style="background-color: palegreen; top: 8px; left: 34px; width: 159px;">
                        <asp:Image ID="IMG_userSeller" runat="server" Width="127px" />
                    </div>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                   

                   



                   







                    <div class="col-sm-4" style="display: -webkit-box; top: 10px; left: 29px; height: 221px; width: 427px;">

                        <asp:Label ID="lbl_nameSeller" CssClass="controlStyle" runat="server" Text="Name"></asp:Label>
                        <asp:Label ID="lbl_NameShowSeller" CssClass="controlStyle" runat="server"></asp:Label>

                        <br />

                        <asp:Label ID="lbl_addressSeller" CssClass="controlStyle" runat="server" Text="Address"></asp:Label>
                        <asp:Label ID="lbl_addressShowSeller" CssClass="controlStyle" runat="server"></asp:Label>

                        <br />

                        <asp:Label ID="lbl_emailSeller" CssClass="controlStyle" runat="server" Text="E-mail"></asp:Label>
                        <asp:Label ID="lbl_emailShowSeller" CssClass="controlStyle" runat="server"></asp:Label>

                        <br />

                        <asp:Button ID="btn_editSeller" class="btn btn-primary" runat="server" Text="Edit Profile" />

                    </div>
                </div>

            </asp:View>
            <asp:View ID="View2" runat="server">
            </asp:View>
            <asp:View ID="View3" runat="server">
            </asp:View>
        </asp:MultiView>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
