<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="onlineshop.Customer.products" %>



<asp:Content ID="Content4" ContentPlaceHolderID="ph_header" runat="server">
    <ul class="nav navbar-nav">


        <li>
            <asp:LinkButton runat="server" ID="lb_Wishlist">
                                            <i class="fa fa-user"></i>Wishlist </asp:LinkButton></li>


        <li>
            <asp:LinkButton runat="server" ID="lb_cart" OnClick="lb_cart_Click">
                                            <i class="fa fa-user"></i>Cart </asp:LinkButton></li>


        <li>
            <asp:LinkButton runat="server" ID="lb_logout" OnClick="lb_logout_Click">
                                            <i class="fa fa-user"></i>logout </asp:LinkButton></li>


        <li>
            <asp:LinkButton runat="server" ID="lb_profile">
                <i class="fa fa-user"></i>
                <asp:Label runat="server" ID="lb_name" Text="Name"></asp:Label>
            </asp:LinkButton></li>

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
                <div class="col-sm-3">
                    <div class="left-sidebar">
                        <h2>Category</h2>
                        <div class="panel-group category-products" id="accordian">
                            <!--category-productsr-->
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>


                                    <asp:DataList AutoPostBack="false" ID="dl_shop_category" DataKeyField="id" runat="server" CssClass="row" OnItemCommand="dl_shop_category_ItemCommand">

                                        <ItemTemplate>

                                            <div class="panel panel-default col-sm-12 col-4 ">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordian" href="#mens">

                                                            <asp:LinkButton ID="link" runat="server" CommandName="AddAction">    <%# DataBinder.Eval(Container.DataItem, "name") %> </asp:LinkButton>

                                                        </a>
                                                    </h4>
                                                </div>

                                            </div>
                                            </div>                                      
                                       
                                                                
                                       
                                       
                                       
                                       
                                       
                                       
                                       
                                       
                                       
                                       
                                       
                                       
                                       
                                       
                                       
                                       
                                       
                                       
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordian" href="#mens">

                                                            <asp:LinkButton ID="link" runat="server">  all </asp:LinkButton>

                                                        </a>
                                                    </h4>
                                                </div>

                                            </div>
                                        </FooterTemplate>
                                    </asp:DataList>
                                </ContentTemplate>
                            </asp:UpdatePanel>

                        </div>
                        <!--/category-products-->
                    </div>

                    <div class="shipping text-center">
                        <!--shipping-->
                        <img src="images/home/shipping.jpg" alt="" />
                    </div>
                    <!--/shipping-->

                </div>
                <div class="col-sm-9 padding-right">
                    <div class="features_items">
                        <!--features_items-->
                        <h2 class="title text-center">Features Items</h2>

                        <asp:UpdatePanel ID="UpdatePanel_product" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <asp:DataList AutoPostBack="false" CellPadding="2" DataKeyField="id" CellSpacing="20" ID="dl_product" runat="server" CssClass="row" RepeatColumns="4" OnItemCommand="dl_product_ItemCommand">
                                    <ItemTemplate>

                                        <div>
                                            <div class="product-image-wrapper col-12">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <%--<img  src='<%#Eval("image")%>' alt="" />--%>
                                                        <img alt="" width="250" height="100" src='<%# SafeEval(Container.DataItem, "photo")%>' />
                                                        <p><%# SafeEval(Container.DataItem, "name")%> </p>
                                                        <h2><%# SafeEval(Container.DataItem, "description") %> </h2>

                                                        <h7> <%#SafeEval(Container.DataItem, "price")%> </h7>
                                                        <br />


                                                        <asp:LinkButton runat="server" class="btn btn-default add-to-cart" CommandName="AddAction"><i class="fa fa-shopping-cart" ></i>Add To Cart</asp:LinkButton>
                                                        <!--<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart" ></i>Add to cart</a>!-->
                                                    </div>

                                                </div>
                                            </div>


                                        </div>


                                    </ItemTemplate>
                                </asp:DataList>


                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </div>

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
