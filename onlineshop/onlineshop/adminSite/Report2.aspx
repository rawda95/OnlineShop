<%@ Page Title="" Language="C#" MasterPageFile="~/adminSite/admin.Master" AutoEventWireup="true" CodeBehind="Report2.aspx.cs" Inherits="onlineshop.adminSite.Report2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="aside" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
                          <asp:DataList ID="dl_CanceledOrders" runat="server">
                              
     <HeaderTemplate>

     </HeaderTemplate>
     <ItemTemplate>
         <table width="100%" >
             <thead>
                 <tr>
                     <th> Order ID</th>
                     <th> Customer ID</th>
                     <th>Order Date</th>
                     <th>Order Status</th>

                 </tr>
             </thead>
             <tr>
                 <td>
                     <asp:Label ID="lbl_orderid" runat="server"  Text='<%#Eval("id") %>' />
                 </td>
                 <td>
                     <asp:Label ID="lbl_custid" runat="server"  Text='<%#Eval("cust_id") %>' />
                 </td>
                 <td>
                     <asp:Label ID="lbl_orderdate" runat="server" Text='<%#Eval("order_date") %>' />
                 </td>
                    <td>
                     <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("name") %>' />
                 </td>
             </tr>
         </table>
     </ItemTemplate>

 </asp:DataList>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
</asp:Content>
