<%@ Page Title="" Language="C#" MasterPageFile="~/gust/gust.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="onlineshop.gust.index" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ph_header" runat="server">

    <ul class="nav navbar-nav">
        <li>
            <asp:LinkButton runat="server" ID="btn_Sele_With_Us" OnClick="btn_Sele_With_Us_Click">
                                            <i class="fa fa-lock"></i> <asp:Label runat="server"  Text="<%$ Resources: ResHome,btnSaleWithUs%>"></asp:Label></asp:LinkButton></li>

        <li><a href="login.html">
            <asp:LinkButton runat="server" ID="btn_login" OnClick="btn_login_Click">
                                            <i class="fa fa-lock"></i><asp:Label runat="server"  Text="<%$ Resources: ResHome,btnLog%>"></asp:Label>
            </asp:LinkButton>

        </a></li>
        <li><a href="login.html">
            <asp:LinkButton runat="server" ID="lb_signup" OnClick="lb_signup_Click">
            <i class="fa fa-lock"></i><asp:Label runat="server"  Text="<%$ Resources: ResHome,btnSign%>"></asp:Label>
            </asp:LinkButton></a></li>





    </ul>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="search" runat="server">

    <asp:ScriptManager ID="ScriptManager2" runat="server">
    </asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">

        <ContentTemplate>

            <asp:Label ID="error" runat="server"></asp:Label>

            <asp:TextBox ID="search" class="search_input" placeholder="Search..." runat="server" AutoPostBack="True" autocomplete="on" OnTextChanged="search_TextChanged" MaxLength="50" BorderColor="#FFFF99">
            </asp:TextBox>

        </ContentTemplate>

    </asp:UpdatePanel>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
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

                                        <div class="panel panel-de fault col-sm-12 col-4 ">
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
                                        <div class="panel panel-de fault col-sm-12 col-4 ">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordian" href="#mens">

                                                        <asp:LinkButton ID="link" runat="server" OnClick="link_Click">  all </asp:LinkButton>

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
                    <img src="../home/shipping.jpg" alt="" />
                </div>
                <!--/shipping-->

            </div>
            <div class="col-sm-9 padding-right">
                <div class="features_items">
                    <!--features_items-->
                    <h2 class="title text-center">Items</h2>

                    <asp:UpdatePanel ID="UpdatePanel_product" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:ListView runat="server" ID="r_product" DataKeyNames="id" OnItemCommand="r_product_ItemCommand">

                                <ItemTemplate>

                                    <div class="col-sm-4 ">
                                        <div class="product-image-wrapper">
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="../Images/pics/<%# SafeEval(Container.DataItem, "photo")%>" alt="" />
                                                    <h2><%#SafeEval(Container.DataItem, "price")%>$</h2>
                                                    <p><%# SafeEval(Container.DataItem, "name")%></p>

                                                    <asp:LinkButton runat="server" class="btn btn-default add-to-cart" CommandName="AddAction">

                                                        <i class="fa fa-shopping-cart">
                                                                 
                                                        </i>
                                                            detials

                                                        </asp:LinkButton>

                                                </div>
                                                <div class="product-overlay">
                                                    <div class="overlay-content">
                                                        <h2><%#SafeEval(Container.DataItem, "price")%>$</h2>
                                                        <p><%# SafeEval(Container.DataItem, "name")%></p>

                                                        <asp:LinkButton runat="server" class="btn btn-default add-to-cart" CommandName="AddAction">

                                                        <i class="fa fa-shopping-cart">
                                                                 
                                                        </i>
                                                            detials

                                                        </asp:LinkButton>

                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                </ItemTemplate>
                            </asp:ListView>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                </div>
                <!--features_items-->




            </div>
        </div>


    </div>

</asp:Content>
<asp:Content ContentPlaceHolderID="script" ID="conteant2" runat="server">

    <!-- Content script    for master!-->
    <script>  
        $(function () {
            console.log("aaa");
            $("#search_search").autocomplete({

                source: function (request, response) {
                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        url: "index.aspx/GetProductName",
                        data: "{'ProductName':'" + document.getElementById('search_search').value + "'}",
                        dataType: "json",
                        success: function (data) {
                            // response(data.d);
                            //  alert(data.d);
                        },
                        error: function (result) {
                            //   alert("No Match");
                        }
                    });
                }
            });
        });


    </script>

</asp:Content>
