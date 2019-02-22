<%@ Page Title="" Language="C#" MasterPageFile="~/seller/Home.Master" AutoEventWireup="true" CodeBehind="addcategory.aspx.cs" Inherits="onlineshop.addcategory" %>



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
    <div class="container">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-4">
                <div class="login-form">
                    <h1 class="text-center">Add Category</h1>
                    <div class="form-group">
                        <h2>choses from category 
                               </h2>


                        <asp:DropDownList runat="server" ID="ddl_category" DataValueField="id"></asp:DropDownList>

                    </div>


                    <div class="clearfix form-group">
                        <asp:Button ID="btn_select" class="btn   btn-default login-btn btn-block" runat="server" Text="select" ValidationGroup="select" OnClick="btn_select_Click" />
                    </div>

                    <div class="form-group">
                        <h2>or add new one 
                        </h2>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa  fa-shopping-cart"></i></span>
                            <asp:TextBox ID="txt_category_name" runat="server" MaxLength="50" ValidationGroup="LogInSeller" class="col-sm-6 form-control" placeholder=" Enter Category Name"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RV_NameLoginSeller" Style="flex: auto" classs="col-sm-6 form-control" runat="server" ControlToValidate="txt_category_name" ErrorMessage="please enter your name" ForeColor="Red" ValidationGroup="LogInSeller">*</asp:RequiredFieldValidator>

                    </div>

                    <div class="clearfix form-group">
                        <asp:Button ID="btn_add_category" class="btn  btn-default login-btn btn-block" runat="server" Text="add category" ValidationGroup="LogInSeller" OnClick="btn_add_category_Click" />
                        <asp:Label ID="lbl_msg" runat="server" Text="" ValidationGroup="LogInSeller"></asp:Label>
                    </div>


                    <asp:ValidationSummary ID="VS_loginSeller" ValidationGroup="LogInSeller" runat="server" Height="55px" />

                </div>
            </div>
        </div>

    </div>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="script" runat="server">
</asp:Content>
