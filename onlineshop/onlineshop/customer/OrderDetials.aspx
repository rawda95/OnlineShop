<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.Master" AutoEventWireup="true" CodeBehind="OrderDetials.aspx.cs" Inherits="onlineshop.Customer.OrderDetials" %>

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
    <asp:ScriptManager ID="ScriptManager2" runat="server">
    </asp:ScriptManager>


    <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">

        <ContentTemplate>

            <asp:Label ID="error" runat="server"></asp:Label>
            <asp:TextBox ID="search" class="search" runat="server" AutoPostBack="True" autocomplete="on" OnTextChanged="search_TextChanged"></asp:TextBox>

        </ContentTemplate>

    </asp:UpdatePanel>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <section>
        <div class="container">
            <div class="row">

                <div class="col-sm-9 padding-left">

                    <div>
                        <asp:Label ID="status" runat="server"></asp:Label>
                    </div>
                    <div class="features_items">
                        <!--features_items-->
                        <h2 class="title text-center"></h2>

                        <asp:UpdatePanel ID="UpdatePanel_product" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <asp:DataList AutoPostBack="false" CellPadding="2" DataKeyField="id" CellSpacing="20" ID="dl_product" runat="server" CssClass="row" RepeatColumns="4" OnItemCommand="dl_product_ItemCommand">
                                    <ItemTemplate>

                                        <%-- <div>
                                            <div class="product-image-wrapper col-12">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <%--<img  src='<%#Eval("image")%>' alt="" />--%>
                                        <!--       <img alt="" width="250" height="100" src='<%# SafeEval(Container.DataItem, "photo")%>' />
                                                        <p><%# SafeEval(Container.DataItem, "name")%> </p>
                                                        <h2><%# SafeEval(Container.DataItem, "description") %> </h2>

                                                        <h7> <%#SafeEval(Container.DataItem, "price")%> </h7>
                                                        <br />


                                                        <asp:LinkButton runat="server" class="btn btn-default add-to-cart" CommandName="AddAction"><i class="fa fa-shopping-cart" ></i>Add to cart</asp:LinkButton>
                                                        <!--<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart" ></i>Add to cart</a>!-->
                                        <!--   </div>

                                                </div>
                                            </div>


                                        </div>
                                        !-->



























                                        <div class="col-sm-4">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="images/home/product1.jpg" alt="" />
                                                        <h2>$<%# SafeEval(Container.DataItem, "price")%></h2>
                                                        <p><%# SafeEval(Container.DataItem, "name")%></p>
                                                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                    </div>
                                                    <div class="product-overlay">
                                                        <div class="overlay-content">
                                                            <h2><%# SafeEval(Container.DataItem, "price")%></h2>
                                                            <p><%# SafeEval(Container.DataItem, "name")%></p>
                                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="choose">
                                                    <ul class="nav nav-pills nav-justified">
                                                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                                                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                    </ItemTemplate>
                                </asp:DataList>


                            </ContentTemplate>
                        </asp:UpdatePanel>



                        <asp:Button ID="btn_cansel_order" Visible="false" runat="server" Text="cansel" OnClick="btn_cansel_order_Click" />

                    </div>
                    <!--features_items-->




                </div>
            </div>


        </div>

    </section>

    <!-- Content script    for master!-->
    <script type="text/javascript">  
        $(function () {
            console.log("aaa");
            SearchText();
        });
        function SearchText() {
            $("#ContentPlaceHolder1_search").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        url: "divtry.aspx/GetProductName",
                        data: "{'ProductName':'" + document.getElementById('ContentPlaceHolder1_search').value + "'}",
                        dataType: "json",
                        success: function (data) {
                            response(data.d);
                        },
                        error: function (result) {
                            alert("No Match");
                        }
                    });
                }
            });
        };

    </script>




</asp:Content>
