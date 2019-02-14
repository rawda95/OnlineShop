<%@ Page Title="" Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="onlineshop.details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified of" style="height: 356px">
        <tr>
            <td rowspan="5" style="width: 290px">
                <asp:Image ID="img_product" runat="server" Height="229px" Width="281px" />
            </td>
            <td style="width: 376px">name</td>
            <td>
                <asp:Label ID="lbl_name" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 376px">price</td>
            <td>
                <asp:Label ID="lbl_price" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 376px">description</td>
            <td>
                <asp:Label ID="lbl_desc" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 376px">category</td>
            <td>
                <asp:Label ID="lbl_cat" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 376px; height: 65px">promtions</td>
            <td style="height: 65px">
                <asp:Label ID="lbl_promtions" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 290px">&nbsp;</td>
            <td style="width: 376px">Quantity </td>
            <td>
                <asp:Label ID="lbl_qty" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 290px">&nbsp;</td>
            <td style="width: 376px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 290px">
                <asp:Label ID="lbl_msg" runat="server"></asp:Label>
            </td>
            <td style="width: 376px">&nbsp;</td>
            <td>
                <asp:Button ID="btn_add_to_cart" runat="server" OnClick="btn_add_to_cart_Click" Text="ADD TO CART" />
            </td>
        </tr>
    </table>
</asp:Content>
