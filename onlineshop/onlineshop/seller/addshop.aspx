<%@ Page Title="" Language="C#" MasterPageFile="~/seller/Home.Master" AutoEventWireup="true" CodeBehind="addshop.aspx.cs" Inherits="onlineshop.addshop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="search" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">













    <section style="height: 589px">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                </div>
                <div class="col-sm-9 padding-right" style="left: 0px; top: 0px; height: 390px">
                    <div class="features_items">
                        <!--features_items-->
                        <h2 class="title text-center">Features Items</h2>


                    </div>
                    <!--features_items-->

                    <div class="form-control-static">



                        <table class="table-responsive" style="width: 1150px; height: 503px; background-color: aliceblue;">
                            <tr>
                                <td>
                                    <label class="col-md-4 control-label" for="product_id">shop name</label></td>
                                <td>
                                    <asp:TextBox ID="txt_shop_name" runat="server" Height="31px" Width="368px" MaxLength="20"></asp:TextBox>
                                    <br />
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_shop_name" ErrorMessage="name requierd" ForeColor="#CC0000" ValidationGroup="shop">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="col-md-4 control-label" for="product_id">shop location</label></td>
                                <td>
                                    <asp:TextBox ID="txt_shop_locations" CssClass="form-control" runat="server" Height="29px" Width="347px" Rows="80"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_shop_locations" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000" ValidationGroup="shop">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="col-md-4 control-label" for="product_id">shop descriptions</label></td>
                                <td>
                                    <asp:TextBox ID="txt_shop_desc" runat="server" Height="36px" Width="365px" TextMode="MultiLine"></asp:TextBox>
                                    <br />
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_shop_desc" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000" ValidationGroup="shop">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="col-md-4 control-label" for="product_id">shop photo</label></td>
                                <td>
                                    <asp:FileUpload ID="fu_shop" runat="server" Height="32px" Width="369px" />
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="fu_shop" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000" ValidationGroup="shop">*</asp:RequiredFieldValidator>
                                </td>
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
                                <td colspan="3">
                                    <asp:Button ID="btn_add_shop" runat="server" OnClick="btn_add_shop_Click" CssClass="btn btn-success " Text="ADD" Width="712px" ValidationGroup="shop" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Label ID="lbl_msg" runat="server" Font-Size="X-Large" ForeColor="#CC0000" Width="228px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <img src="../images/shop/advertisement.jpg" />&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3">&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>


        </div>
    </section>









</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="script" runat="server">
</asp:Content>
