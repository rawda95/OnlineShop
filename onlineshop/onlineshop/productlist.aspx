<%@ Page Title="" Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="productlist.aspx.cs" Inherits="onlineshop.productlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <asp:GridView ID="gv_list" runat="server" AutoGenerateColumns="False" Width="763px"   >
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Product number" />
            <asp:BoundField DataField="name" HeaderText="product name" />
            <asp:BoundField DataField="price" HeaderText="product price" />
            <asp:BoundField DataField="description" HeaderText="product descraption" />
            <asp:BoundField DataField="category_id" HeaderText="category Number" />
            <asp:ImageField DataImageUrlField="photo" HeaderText="photo" ItemStyle-Width="150px" ItemStyle-Height="100px" ControlStyle-Width="50px" ControlStyle-Height="90px">
            </asp:ImageField>
        </Columns>
    </asp:GridView>
</asp:Content>









