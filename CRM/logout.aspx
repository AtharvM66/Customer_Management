<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logout.aspx.cs" Inherits="CRM.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logout Page</title>
    <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,600,700&amp;display=swap" rel="stylesheet"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/structure.css" rel="stylesheet" type="text/css" class="structure" />
    <link href="assets/css/authentication/form-2.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <link rel="stylesheet" type="text/css" href="assets/css/forms/theme-checkbox-radio.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/forms/switches.css"/>
</head>
<body>
        <div class="form-container outer">
        <div class="form-form">
            <div class="form-form-wrap">
                <div class="form-container">
                    <div class="form-content">

                        <h1 class="">Logout</h1>
                        <p class="">Do you want to logout?</p>
                        
                        <form class="text-left" runat="server">
                                <div class="d-sm-flex justify-content-between">
                                    <div class="field-wrapper">
                                        <asp:Button ID="Buttonlogout" CssClass="btn btn-primary" OnClick="Buttonlogout_Click" runat="server" Text="Yes, logout!" />
                                        <div class="division">
                                            <span>OR</span>
                                        </div>
                                        <asp:Button ID="Buttongoback" OnClick="Buttongoback_Click" CssClass="btn btn-primary" runat="server" Text="No, go back!" />
                                        <div class="division" style="font-weight:bold"><p>Note: If you logout you would need to login again</p></div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    

                    </div>                    
                </div>
            </div>
        </div>
</body>
</html>
