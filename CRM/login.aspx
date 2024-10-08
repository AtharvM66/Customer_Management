<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CRM.login" %>
<!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
<!-- Mirrored from designreset.com/cork/ltr/demo15/auth_login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 12 Oct 2022 19:07:59 GMT -->
<head runat="server">
    <title>Login Page</title>
    <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,600,700&amp;display=swap" rel="stylesheet"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/structure.css" rel="stylesheet" type="text/css" class="structure" />
    <link href="assets/css/authentication/form-1.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <link rel="stylesheet" type="text/css" href="assets/css/forms/theme-checkbox-radio.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/forms/switches.css"/>
</head>
<body>
    <div class="form-container">
        <div class="form-form">
            <div class="form-form-wrap">
                <div class="form-container">
                    <div class="form-content">

                        <h1 class=""><span class="brand-name">Customer Management</span></h1>
                        <form class="text-left" runat="server">
                            <div class="form">
                                <div id="username-field" class="field-wrapper input">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                                 <asp:TextBox ID="txtUsername" placeholder="Username" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div id="password-field" class="field-wrapper input mb-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-lock"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg> 
                                 <asp:TextBox ID="txtPassword" placeholder="Password" CssClass="form-control" runat="server"></asp:TextBox> 
                                </div>
                                <div class="d-sm-flex justify-content-between">
                                    <div class="field-wrapper">
                                   <asp:LinkButton ID="btnLogin" OnClick="btnLogin_Click" CssClass="btn btn-primary" Text="" runat="server">Login</asp:LinkButton>
                                        </div>
                                    
                                </div>
                            </div>
                        </form>                        
                    </div>                    
                </div>
            </div>
        </div>
        <div class="form-image">
            <div class="l-image">
            </div>
        </div>
    </div>

    
    <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
    <script src="assets/js/libs/jquery-3.1.1.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    
    <!-- END GLOBAL MANDATORY SCRIPTS -->
    <script src="assets/js/authentication/form-1.js"></script>
</body>

<!-- Mirrored from designreset.com/cork/ltr/demo15/auth_login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 12 Oct 2022 19:07:59 GMT -->
</html>
