<%@ Page Title="" Language="C#" MasterPageFile="~/seller/Home.Master" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="onlineshop.addproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="search" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">


    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                </div>
                <div class="col-sm-9 padding-right">
                    <div class="features_items">
                        <!--features_items-->
                        <h2 class="title text-center">Features Items</h2>


                    </div>
                    <!--features_items-->


                    <table class="nav-justified" style="height: 379px">
                        <tr>
                            <td>Name</td>
                            <td>
                                <asp:TextBox ID="txt_name" runat="server" Height="31px" Width="170px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>price</td>
                            <td>
                                <asp:TextBox ID="txt_price" runat="server" Height="29px" Width="169px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>description</td>
                            <td>
                                <asp:TextBox ID="txt_desc" runat="server" Height="28px" Width="169px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>photo</td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" Height="29px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>category </td>
                            <td>
                                <asp:DropDownList ID="ddl_category" runat="server" AutoPostBack="True" Height="28px" Width="139px">
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="btn_add" runat="server" OnClick="btn_add_Click" Text="ADD" Width="94px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl_msg" runat="server" Font-Size="30pt" ForeColor="#CC0000"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>


                </div>
            </div>


        </div>
    </section>






</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="script" runat="server">
</asp:Content>
