<%@ Page Title="" Language="C#" MasterPageFile="~/seller/Home.Master" AutoEventWireup="true" CodeBehind="addcategory.aspx.cs" Inherits="onlineshop.addcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="search" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <section class="table">
        <div class="container">
            <div class="row">

                <div class="col-sm-9 padding-right" style="left: 0px; top: 0px; height: 473px">
                    <div class="features_items">
                        <!--features_items-->
                        <h2 class="title text-center">Features Items</h2>
                        <div class="form" style="width: 59%; height: 242px;">
                            <table class="table-responsive " style="background-color: aliceblue; height: 298px;">
                                <tr class="form-group ">
                                    <td class="label-info text-center " style="width: 224px; padding: 10px; margin: 10px;">Category Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td class="form" style="width: 376px">
                                        <asp:TextBox ID="txt_category_name" CssClass="form-control" runat="server" Width="321px" Height="44px" MaxLength="25"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_category_name" ErrorMessage="category name is requierd" ForeColor="#CC0000" ValidationGroup="cat">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 224px">&nbsp;</td>
                                    <td style="width: 376px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <br />
                                        <asp:Button ID="btn_add_category" runat="server" CssClass="btn btn-success" OnClick="btn_add_category_Click" Text="ADD" Width="506px" ValidationGroup="cat" />
                                        <br />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 224px">&nbsp;</td>
                                    <td style="width: 376px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 224px">
                                        <asp:Label ID="lbl_msg" runat="server" Font-Size="30pt" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td style="width: 376px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>

                        </div>

                    </div>
                    <!--features_items-->




                </div>
            </div>


        </div>
    </section>

















</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="script" runat="server">
</asp:Content>
