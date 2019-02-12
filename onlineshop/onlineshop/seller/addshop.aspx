<%@ Page Title="" Language="C#" MasterPageFile="~/seller/Home.Master" AutoEventWireup="true" CodeBehind="addshop.aspx.cs" Inherits="onlineshop.addshop" %>

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




                    <table class="nav-justified" style="height: 349px">
                        <tr>
                            <td>shop name</td>
                            <td>
                                <asp:TextBox ID="txt_shop_name" runat="server" Height="29px" Width="182px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>shop location</td>
                            <td>
                                <asp:TextBox ID="txt_shop_locations" runat="server" Height="26px" Width="178px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>shop descriptions</td>
                            <td>
                                <asp:TextBox ID="txt_shop_desc" runat="server" Height="27px" Width="176px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>shop photo</td>
                            <td>
                                <asp:FileUpload ID="fu_shop" runat="server" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>

                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="btn_add_shop" runat="server" OnClick="btn_add_shop_Click" Text="ADD" Width="172px" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Label ID="lbl_msg" runat="server" Font-Size="X-Large" ForeColor="#CC0000" Width="228px"></asp:Label>
                            </td>
                        </tr>
                    </table>

                </div>
            </div>


        </div>
    </section>












</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="script" runat="server">
</asp:Content>
