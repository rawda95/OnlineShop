<%@ Page Title="" Language="C#" MasterPageFile="~/adminSite/admin.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="onlineshop.adminSite.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Login | E-Shopper</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../css/font-awesome.min.css" rel="stylesheet"/>
    <link href="../css/prettyPhoto.css" rel="stylesheet"/>
    <link href="../css/price-range.css" rel="stylesheet"/>
    <link href="../css/animate.css" rel="stylesheet"/>
	<link href="../css/main.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>
	<link href="../css/responsive.css" rel="stylesheet"/>
     <link rel="shortcut icon" href="../images/ico/favicon.ico"/>
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../images/ico/apple-touch-icon-144-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../images/ico/apple-touch-icon-114-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../images/ico/apple-touch-icon-72-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" href="../images/ico/apple-touch-icon-57-precomposed.png"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">


     <section class="content" >
			<div class="row" id="form">
				<div class="col-sm-6 col-sm-offset-2">
                 
					<div class="login-form"><!--login form-->
						<h2>Login to your account</h2>

						<div class="login-form" >
                            <asp:TextBox ID="txt_name" type="text"  class="inputForm" runat="server" placeholder="User Name"></asp:TextBox>
                            <asp:TextBox ID="txt_pass" type="password" runat="server" placeholder="Password"></asp:TextBox>
							<span>
								<input  class="inputForm" type="checkbox" class="checkbox"> 
								Keep me signed in
							</span>
                            <asp:Button ID="btn_login"  class="btn btn-danger" runat="server" Text="Login" OnClick="btn_login_Click" />

                            <asp:label ID="lab_error" runat="server" text=""></asp:label>
						</div>
					</div><!--/login form-->
				</div>
			</div>
	</section><!--/form-->
          
    
    
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    
    <script src="../js/jquery.js"></script>
	<script src="../js/price-range.js"></script>
    <script src="../js/jquery.scrollUp.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.prettyPhoto.js"></script>
    <script src="../js/main.js"></script>
    
    </asp:Content>