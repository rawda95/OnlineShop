<%@ Page Title="" Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="history.aspx.cs" Inherits="onlineshop.history" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="gv_history" runat="server" AllowPaging="True" AutoGenerateColumns="False" Height="143px" OnRowDeleting="gv_history_RowDeleting" SelectedIndex="0" Width="469px" DataKeyNames="id">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="order number" />
            <asp:BoundField DataField="cust_id" HeaderText="customer number" />
            <asp:BoundField DataField="order_status" HeaderText="order statue" />
            <asp:BoundField DataField="order_date" HeaderText="order date" />
            <asp:CommandField HeaderText="DELETE" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <%--<asp:DataList ID="dl_history" runat="server" Width="704px">
        <ItemTemplate>
            
            <div class="product-image-wrapper">
           <div class="products">
               
                 <p><%#Eval("order_status")%> </p>
               </div>
                </div>
        </ItemTemplate>
    </asp:DataList>--%>
</asp:Content>
