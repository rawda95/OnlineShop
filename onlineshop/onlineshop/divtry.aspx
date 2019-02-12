<%@ Page Title="" Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="divtry.aspx.cs" Inherits="onlineshop.divtry" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">

    </asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
      <ContentTemplate>

       <div class="container py-4">  
            <h5 class="text-center text-uppercase">DataList control in asp.net</h5>  
            <asp:DataList  AutoPostBack="false" DataKeyField="id" ID="DataList1" runat="server" CssClass="row"  RepeatColumns="4" OnDeleteCommand="DataList1_DeleteCommand"  on>  
                <ItemTemplate>  
                    <div class="row productList">  
                        <div class="col-4">  
                            <img alt="" width="250" src='<%#Eval("photo")%>' />  
                        </div>  
                            <asp:Label runat="server" ID="id" Text='<%#Eval("id") %>' Visible="false"  />
                            <asp:Label runat="server" ID="error" Text='<%#Eval("id") %>'>error :</asp:Label>

                        <div class="col-8">  
       

                            <h4><%#Eval("name")%></h4>  
                            <h6><%#Eval("price")%></h6>  
                            <div>  
                                <%#Eval("description")%>  
                            </div>  
                                <asp:LinkButton ID="lnkDelete" runat="server" OnClick="onDeleteProduct" CommandName="delete"> Delete </asp:LinkButton>

                            <div>
                            </div>
                        </div>  
                    </div>  
                </ItemTemplate>  
            </asp:DataList>  
        </div>  

            </ContentTemplate>
         </asp:UpdatePanel> 
  <div>

   
    
    Time at Load Time <%= DateTime.Now.ToLongTimeString() %>.
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">

    <ContentTemplate>

    Latest Time by refresh <%= DateTime.Now.ToLongTimeString() %>.
        <asp:Label ID="error" runat ="server"></asp:Label>
        <asp:TextBox ID="search" class="search" runat="server" AutoPostBack="True" autocomplete="on" OnTextChanged="search_TextChanged"></asp:TextBox>


       


    <br /><asp:Button Text="search" ID="Button1" runat="server" OnClick="Button1_Click"/>

    </ContentTemplate>

    </asp:UpdatePanel>


      <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
 

    </div>

   
    
</asp:Content>

<asp:Content ID="script" ContentPlaceHolderID="script" runat="server">

     <script type="text/javascript">  
         $(function () {
             console.log("aaa");
            SearchText();  
        });  
        function SearchText() {  
            $("#ContentPlaceHolder1_search").autocomplete({  
                source: function(request, response) {  
                    $.ajax({  
                        type: "POST",  
                        contentType: "application/json; charset=utf-8",  
                        url: "divtry.aspx/GetProductName",  
                        data: "{'ProductName':'" + document.getElementById('ContentPlaceHolder1_search').value + "'}",  
                        dataType: "json",  
                        success: function(data) {  
                            response(data.d);  
                        },  
                        error: function(result) {  
                            alert("No Match");  
                        }  
                    });  
                }  
            });  
         };
         
         </script>
</asp:Content>