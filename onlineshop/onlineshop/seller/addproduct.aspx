<%@ Page Title="" Language="C#" MasterPageFile="~/seller/Home.Master" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="onlineshop.addproduct" %>




<asp:Content ID="Content4" ContentPlaceHolderID="ph_header" runat="server">
    <ul class="nav navbar-nav">


        <li>
            <asp:LinkButton runat="server" ID="lb_logout" OnClick="lb_logout_Click">
                                            <i class="fa fa-user"></i>logout </asp:LinkButton></li>
        <li>
            <asp:LinkButton runat="server" ID="lb_profile" OnClick="lb_profile_Click">
                <i class="fa fa-user"></i>
                <asp:Label runat="server" ID="lb_name" Text="Name"></asp:Label>
            </asp:LinkButton></li>

    </ul>

</asp:Content>

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
                        <h2 class="title text-center">add Product</h2>


                    </div>
                    <!--features_items-->
                    <div class="form-control-static">

                        <table class="table-responsive">
                            <tr>
                                <td>
                                    <label class="col-md-4 control-label" for="product_id">Name</label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_name" CssClass="form-control" runat="server" Height="31px" Width="287px" MaxLength="20"></asp:TextBox>
                                    <br />
                                </td>
                                <td style="width: 40px">&nbsp;&nbsp;&nbsp;
                               
                                   

                                   



                                   







                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="name Requiard" ForeColor="#CC0000" ValidationGroup="product">*</asp:RequiredFieldValidator>
                                    &nbsp; &nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td rowspan="8"><a href="https://www.egyptianfoodbank.com/">
                                    <img src="../home/55.jpg " width="140" height="500" /></a></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="col-md-4 control-label" for="product_id">price</label></td>
                                <td>
                                    <asp:TextBox ID="txt_price" runat="server" CssClass="form-control input-md" Height="29px" Width="286px" MaxLength="10" TextMode="Number"></asp:TextBox>
                                    <br />
                                </td>
                                <td style="width: 40px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_price" ErrorMessage="price requiard" ForeColor="#CC0000" ValidationGroup="product">*</asp:RequiredFieldValidator>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="col-md-4 control-label" for="product_id">description</label></td>
                                <td>
                                    <asp:TextBox ID="txt_desc" CssClass="form-control" runat="server" Height="42px" Width="278px" Rows="4" TextMode="MultiLine"></asp:TextBox>
                                    <br />
                                </td>
                                <td style="width: 40px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_desc" ErrorMessage="descrapitn requiard" ForeColor="#CC0000" ValidationGroup="product">*</asp:RequiredFieldValidator>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="col-md-4 control-label" for="product_id">photo</label></td>
                                <td>
                                    <asp:FileUpload ID="FU_product" CssClass="form-control input-md" runat="server" Height="29px" Width="275px" />
                                    <br />
                                </td>
                                <td style="width: 40px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FU_product" ErrorMessage="photo requiard" ForeColor="#CC0000" ValidationGroup="product">*</asp:RequiredFieldValidator>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <label class="col-md-4 control-label" for="product_id">category</label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddl_category" CssClass="form-control form-control input-md" runat="server" Height="28px" Width="274px">
                                    </asp:DropDownList>
                                    <br />
                                </td>
                                <td style="width: 40px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddl_category" ErrorMessage="catogery requared" ForeColor="#CC0000" ValidationGroup="product">*</asp:RequiredFieldValidator>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="btn_add" CssClass="btn btn-success " runat="server" OnClick="btn_add_Click" Text="ADD" Width="468px" ValidationGroup="product" />
                                    <br />
                                </td>
                                <td style="width: 40px">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_msg" runat="server" Font-Size="30pt" ForeColor="#CC0000"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td style="width: 40px">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                </td>
                                <td>&nbsp;</td>
                                <td style="width: 40px">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
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
