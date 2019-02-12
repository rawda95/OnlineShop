<%@ Page Title="" Language="C#" MasterPageFile="~/secondmaster.Master" AutoEventWireup="true" CodeBehind="recoverpassword.aspx.cs" Inherits="onlineshop.recoverpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="breadcrumb col-lg-offset-2 col-sm-3 col-md-8 dropup">
    <table class="nav-justified">
    <tr>
        <td>Enter Your Email</td>
        <td>
            <asp:TextBox ID="txt_reset" runat="server" Width="215px"></asp:TextBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btn_reset" CssClass="btn-success" runat="server" OnClick="btn_reset_Click" Text="Reset" Width="202px" />
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_error" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
        </div>
</asp:Content>

