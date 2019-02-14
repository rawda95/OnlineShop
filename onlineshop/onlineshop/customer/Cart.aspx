<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="onlineshop.Customer.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="search" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">

    <asp:ScriptManager runat="server" ID="script"></asp:ScriptManager>

    <section id="cart_items">
        <div class="container">
            <div class="breadcrumbs">
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="active">Shopping Cart</li>
                </ol>
            </div>
            <div class="table-responsive cart_info">
                <table class="table table-condensed">
                    <tbody>
                        <tr>

                            <asp:UpdatePanel ID="UpdatePanel_cart" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <td>
                                        <asp:DataList ID="dlcart" runat="server" Width="100%" DataKeyField="id" OnUpdateCommand="dlcart_UpdateCommand" OnDeleteCommand="dlcart_DeleteCommand" OnCancelCommand="dlcart_ItemCommand">
                                            <HeaderTemplate>
                                                <thead>
                                                    <tr class="cart_menu">
                                                        <td class="image">Item</td>
                                                        <td class="description"></td>
                                                        <td class="price">Price</td>
                                                        <td class="quantity">Quantity</td>
                                                        <td class="total">Total</td>
                                                        <td></td>
                                                    </tr>
                                                </thead>

                                            </HeaderTemplate>
                                            <ItemTemplate>

                                                <tbody>

                                                    <tr>
                                                        <td class="cart_product"></td>
                                                        <td class="cart_description">
                                                            <h4>
                                                                <asp:LinkButton runat="server"><%#Eval("name")%></asp:LinkButton></h4>
                                                        </td>

                                                        <td class="cart_price">
                                                            <p><%#Eval("price")%></p>
                                                        </td>
                                                        <td class="cart_quantity">
                                                            <div class="cart_quantity_button">
                                                                <asp:LinkButton ID="cart_quantity_up" class="cart_quantity_up" CommandName="Update" runat="server"> + </asp:LinkButton>
                                                                <input class="cart_quantity_input" type="text" name="quantity" autocomplete="off" size="2" value="<%#Eval("qty")%>">

                                                                <asp:LinkButton ID="cart_quantity_down" class="cart_quantity_down" CommandName="Cancel" runat="server"> - </asp:LinkButton>
                                                            </div>
                                                        </td>
                                                        <td class="cart_total">
                                                            <p class="cart_total_price"><%#Eval("total")%></p>
                                                        </td>
                                                        <td class="cart_delete">
                                                            <asp:LinkButton CommandName="Delete" runat="server"><i class="fa fa-times"></i></asp:LinkButton>
                                                            <%--    <asp:LinkButton class="cart_quantity_delete" href=""  runat="server"><i class="fa fa-times"></i></asp:LinkButton>--%>
                                </td>
                                                    </tr>
                                                </tbody>
                                            </ItemTemplate>

                                        </asp:DataList>

                                    </td>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                </table>
            </div>
            <br />
            <br />
            <div class="btn_submit">
                <asp:LinkButton CssClass="btn btn-default" Text="CheckOut" runat="server" ID="btn_checkout" OnClick="btn_checkout_Click" />
            </div>
        </div>

    </section>
    <!--/#cart_items-->
</asp:Content>
