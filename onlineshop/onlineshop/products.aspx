<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="onlineshop.products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

    <style>
        .productList {
            border: 1px solid #6c757d;
            margin-bottom: 10px;
            padding: 15px;
            border-radius: 3px;
        }
    </style>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <link href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>




            <!-- Content main   for master!-->
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>

            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                <ContentTemplate>

                    <div class="container py-4">
                        <h5 class="text-center text-uppercase">DataList control in asp.net</h5>
                        <asp:DataList AutoPostBack="false" DataKeyField="id" ID="DataList1" runat="server" CssClass="row" RepeatColumns="4" OnItemCommand="DataList1_ItemCommand">
                            <ItemTemplate>
                                <div class="row productList">
                                    <div class="col-4">
                                        <img alt="" width="250" height="100" src='<%#Eval("photo")%>' />
                                    </div>
                                    <div class="col-8">

                                        <h4><%#Eval("name")%></h4>
                                        <h6><%#Eval("price")%></h6>
                                        <div>
                                            <%#Eval("description")%>
                                        </div>
                                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="AddAction"> add to cart </asp:LinkButton>

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



                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">

                    <ContentTemplate>

                        <asp:Label ID="error" runat="server"></asp:Label>
                        <asp:TextBox ID="search" class="search" runat="server" AutoPostBack="True" autocomplete="on" OnTextChanged="search_TextChanged"></asp:TextBox>

                    </ContentTemplate>

                </asp:UpdatePanel>


                <!-- Content script    for master!-->
                <script type="text/javascript">  
                    $(function () {
                        console.log("aaa");
                        SearchText();
                    });
                    function SearchText() {
                        $("#ContentPlaceHolder1_search").autocomplete({
                            source: function (request, response) {
                                $.ajax({
                                    type: "POST",
                                    contentType: "application/json; charset=utf-8",
                                    url: "divtry.aspx/GetProductName",
                                    data: "{'ProductName':'" + document.getElementById('ContentPlaceHolder1_search').value + "'}",
                                    dataType: "json",
                                    success: function (data) {
                                        response(data.d);
                                    },
                                    error: function (result) {
                                        alert("No Match");
                                    }
                                });
                            }
                        });
                    };

                </script>




            </div>
    </form>
</body>
</html>
