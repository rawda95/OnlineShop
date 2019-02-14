<%@ Page Title="" Language="C#" MasterPageFile="~/seller/Home.Master" AutoEventWireup="true" CodeBehind="productDetials.aspx.cs" Inherits="onlineshop.seller.productDetials" %>



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
    <asp:Content ID="Content5" ContentPlaceHolderID="Content" runat="server">
        <div class="row " style="display: -webkit-inline-box">
            <table class="table table-bordered table-hover">
                <tr>
                    <td>
                        <%-- <div class="col-sm-4 col-sm-offset-4" style="top: 8px; left: 34px; width: 159px;" > --%>
                                                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                                                       
                        <asp:Image ID="IMG_Product" runat="server" Width="127px" />
                    </td>
                    <td>
                        <table class="table table-hover">
                            <%--  <div class="col-sm-4 col-sm-offset-4" style="display:-webkit-box; top: 10px; left: 29px; height: 221px; width: 427px;" >--%>
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_Productname" CssClass="controlStyle" runat="server" Text="Product Name: "></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_ProductShowName" CssClass="controlStyle" runat="server"></asp:Label>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_description" CssClass="controlStyle" runat="server" Text="Description:  "></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_desc" CssClass="controlStyle" runat="server"></asp:Label>
                                </td>

                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="lbl_price" CssClass="controlStyle" runat="server" Text="Price: "></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_priceshow" CssClass="controlStyle" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_category" CssClass="controlStyle" runat="server" Text="Category:"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbl_categoryShow" CssClass="controlStyle" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                            </tr>



                            <%--</div>--%>
                        </table>
                    </td>

                </tr>

                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                </tr>

            </table>
        </div>

    </asp:Content>
    <asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    </asp:Content>
