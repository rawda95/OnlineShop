<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/customer.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="onlineshop.Customer.profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="search" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">




    <div>
        <asp:MultiView ID="MV_profileFinal" runat="server" ActiveViewIndex="0">
            <asp:View ID="MV_ShowProfile" runat="server">
                <div class="row " style="display: -webkit-inline-box">
                    <table class="table table-bordered table-hover">
                        <tr>
                            <td>
                                <%-- <div class="col-sm-4 col-sm-offset-4" style="top: 8px; left: 34px; width: 159px;" > --%>
                                <asp:Image ID="IMG_user" runat="server" Width="127px" />
                            </td>
                            <td>
                                <table class="table table-hover">
                                    <%--  <div class="col-sm-4 col-sm-offset-4" style="display:-webkit-box; top: 10px; left: 29px; height: 221px; width: 427px;" >--%>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbl_name" CssClass="controlStyle" runat="server" Text="Name: "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lbl_NameShow" CssClass="controlStyle" runat="server"></asp:Label>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbl_location" CssClass="controlStyle" runat="server" Text="Location: "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lbl_locationShow" CssClass="controlStyle" runat="server"></asp:Label>
                                        </td>

                                    </tr>

                                    <tr>
                                        <td>
                                            <asp:Label ID="lbl_delivery" CssClass="controlStyle" runat="server" Text="Delivery Address: "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lbl_delivery_show" CssClass="controlStyle" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbl_emil" CssClass="controlStyle" runat="server" Text="E-mail:"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lbl_emailShow" CssClass="controlStyle" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="btn_edit" class="btn btn-primary" runat="server" Text="Edit Profile" OnClick="btn_edit_Click" />
                                        </td>
                                        <td>
                                            <asp:Button ID="btn_ChangePass" class="btn btn-primary" runat="server" Width="143px" Text="Change Password" OnClick="btn_ChangePass_Click" />
                                        </td>
                                    </tr>



                                    <%--</div>--%>
                                </table>
                            </td>

                        </tr>

                    </table>
                </div>
            </asp:View>
            <asp:View ID="V_change" runat="server">
                <div class="container">
                    <table class="table table-bordered table-hover">
                        <tr>
                            <td style="width: 389px">
                                <table style="width: 348px; margin-right: 0px">
                                    <tr>
                                        <td>
                                            <asp:Image ID="Img_edit" runat="server" Width="133px" />
                                        </td>
                                        <td style="width: 3px">
                                            <asp:FileUpload ID="FU_ImgProfile" runat="server" Style="margin-left: 53" Width="198px" />

                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>

                                <table class="table table-hover">
                                    <%-- <div id="EditDiv">--%>
                                    <tr>
                                        <td style="width: 314px">
                                            <asp:TextBox ID="txt_FNameEdit" placeholder="First Name" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RF_FName" runat="server" ErrorMessage="Please enter your first name" Text="*" ControlToValidate="txt_FNameEdit" ValidationGroup="Edit" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 314px">
                                            <asp:TextBox ID="txt_LNameEdit" placeholder="Last Name" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="FR_LName" runat="server" ErrorMessage="Please enter yourlast name" Text="*" ControlToValidate="txt_LNameEdit" ValidationGroup="Edit" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 314px">
                                            <asp:TextBox ID="txt_locationEdit" placeholder="Location" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RF_Location" runat="server" ErrorMessage="Please enter your location" Text="*" ControlToValidate="txt_locationEdit" ValidationGroup="Edit" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 314px">
                                            <asp:TextBox ID="txt_deliveryEdit" placeholder="Delivery Address" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RF_delivery" runat="server" ErrorMessage="Please enter your Delivery Address" Text="*" ControlToValidate="txt_deliveryEdit" ValidationGroup="Edit" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 314px">
                                            <asp:TextBox ID="txt_emailEdit" placeholder="E-mail" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RF_emailEdit" runat="server" ErrorMessage="Please enter your E-mail" Text="*" ControlToValidate="txt_emailEdit" ValidationGroup="Edit" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="btn_save" runat="server" Text="Save" Class="btn btn-primary" OnClick="btn_save_Click" ValidationGroup="Edit" />
                                            &nbsp;<asp:Label ID="lbl_saveCheck" runat="server" Text="" ValidationGroup="Edit"></asp:Label>
                                            <asp:ValidationSummary ID="VS_EditProfile" runat="server" />
                                        </td>
                                        <td>
                                            <asp:Button ID="btn_cancel" runat="server" Text="Cancel" Class="btn btn-primary" OnClick="btn_cancel_Click" Width="73px" ValidationGroup="Edit" />
                                            &nbsp;<asp:Label ID="lbl_Cancel_Check" runat="server" Text="" ValidationGroup="cancel"></asp:Label>
                                        </td>

                                    </tr>






                                    <%--</div>--%>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </asp:View>

        </asp:MultiView>
    </div>
</asp:Content>
