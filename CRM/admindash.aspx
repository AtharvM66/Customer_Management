<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admindash.aspx.cs" Inherits="CRM.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,600,700&amp;display=swap" rel="stylesheet"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/structure.css" rel="stylesheet" type="text/css" class="structure" />
    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css" href="assets/css/forms/theme-checkbox-radio.css"/>
    <link href="plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/apps/contacts.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
        <!-- BEGIN LOADER -->
    <div id="load_screen"> <div class="loader"> <div class="loader-content">
        <div class="spinner-grow align-self-center"></div>
    </div></div></div>
    <!--  END LOADER -->

  <!--  BEGIN NAVBAR  -->
    <div class="header-container fixed-top">
        <header class="header navbar navbar-expand-sm">
            <ul class="navbar-item flex-row">
                <li class="nav-item theme-logo">
                    <a href="home.aspx">
                        <img src="assets/img/logo.svg" class="navbar-logo" alt="logo"/>
                    </a>
                    <a href="home.aspx" style="font-weight:bolder; font-size:larger; margin-right:1100px">Admin Access</a>
                </li>
            </ul>

            <ul class="navbar-item flex-row navbar-dropdown">
                <li class="nav-item dropdown user-profile-dropdown  order-lg-0 order-1">
                    <a href="javascript:void(0);" class="nav-link dropdown-toggle user" id="userProfileDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img src="assets/img/profile-26.jpg" alt="admin-profile" class="img-fluid"/>
                    </a>
                    <div class="dropdown-menu position-absolute animated fadeInUp" aria-labelledby="userProfileDropdown">
                        <div class="user-profile-section">
                            <div class="media mx-auto">
                                <img src="assets/img/profile-26.jpg" class="img-fluid mr-2" alt="avatar"/>
                                <div class="media-body">
                                    <h5>Admin</h5>
                                </div>
                            </div>
                        </div>
                        <div class="dropdown-item">
                            <a href="logout.aspx">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-out"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path><polyline points="16 17 21 12 16 7"></polyline><line x1="21" y1="12" x2="9" y2="12"></line></svg> <span>Log Out</span>
                            </a>
                        </div>
                    </div>
                </li>
            </ul>
        </header>
    </div>
    <!--  END NAVBAR  -->


     <!--  BEGIN MAIN CONTAINER  -->
 <div class="main-container" id="container">

     <div class="overlay"></div>
     <div class="cs-overlay"></div>
     <div class="search-overlay"></div>

        <!--  BEGIN SIDEBAR  -->
        <div class="sidebar-wrapper sidebar-theme">
            
            <nav id="compactSidebar">
                <ul class="menu-categories">

                    <li class="menu active">
                        <a href="#app" data-active="true" class="menu-toggle">
                            <div class="base-menu">
                                <div class="base-icons">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-cpu"><rect x="4" y="4" width="16" height="16" rx="2" ry="2"></rect><rect x="9" y="9" width="6" height="6"></rect><line x1="9" y1="1" x2="9" y2="4"></line><line x1="15" y1="1" x2="15" y2="4"></line><line x1="9" y1="20" x2="9" y2="23"></line><line x1="15" y1="20" x2="15" y2="23"></line><line x1="20" y1="9" x2="23" y2="9"></line><line x1="20" y1="14" x2="23" y2="14"></line><line x1="1" y1="9" x2="4" y2="9"></line><line x1="1" y1="14" x2="4" y2="14"></line></svg>
                                </div>
                                <span>Menu</span>
                            </div>
                        </a>
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left"><polyline points="15 18 9 12 15 6"></polyline></svg>
                    </li>
                </ul>
            </nav>

            <div id="compact_submenuSidebar" class="submenu-sidebar">

                <div class="submenu" id="app">
                    <ul class="submenu-list" data-parent-element="#app"> 
                        <li class="active">
                            <a href=""><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--! Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free (Icons: CC BY 4.0, Fonts: SIL OFL 1.1, Code: MIT License) Copyright 2024 Fonticons, Inc. --><path d="M164.9 24.6c-7.7-18.6-28-28.5-47.4-23.2l-88 24C12.1 30.2 0 46 0 64C0 311.4 200.6 512 448 512c18 0 33.8-12.1 38.6-29.5l24-88c5.3-19.4-4.6-39.7-23.2-47.4l-96-40c-16.3-6.8-35.2-2.1-46.3 11.6L304.7 368C234.3 334.7 177.3 277.7 144 207.3L193.3 167c13.7-11.2 18.4-30 11.6-46.3l-40-96z"/></svg> Contacts</a>
                        </li>
                        <li>
                            <a href="logout.aspx"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--! Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free (Icons: CC BY 4.0, Fonts: SIL OFL 1.1, Code: MIT License) Copyright 2024 Fonticons, Inc. --><path d="M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32l0 224c0 17.7 14.3 32 32 32s32-14.3 32-32l0-224zM143.5 120.6c13.6-11.3 15.4-31.5 4.1-45.1s-31.5-15.4-45.1-4.1C49.7 115.4 16 181.8 16 256c0 132.5 107.5 240 240 240s240-107.5 240-240c0-74.2-33.8-140.6-86.6-184.6c-13.6-11.3-33.8-9.4-45.1 4.1s-9.4 33.8 4.1 45.1c38.9 32.3 63.5 81 63.5 135.4c0 97.2-78.8 176-176 176s-176-78.8-176-176c0-54.4 24.7-103.1 63.5-135.4z"/></svg> Logout</a>
                        </li>
                       
                    </ul>
                </div>
            </div>
        </div>
        <!--  END SIDEBAR  -->


        <!--  BEGIN CONTENT AREA  -->
        <div id="content" class="main-content">
            <div class="layout-px-spacing">  

                <div class="page-header">
                    <div class="page-title">
                        <h3>Contacts</h3>
                    </div>
                </div>

                <div class="row layout-spacing layout-top-spacing" id="cancel-row">
                    <div class="col-lg-12">
                        <div class="widget-content searchable-container list">

                            <div class="row">
                                <div class="col-xl-4 col-lg-5 col-md-5 col-sm-7 filtered-list-search layout-spacing align-self-center">
                                    <form class="form-inline my-2 my-lg-0">
                                        <div class="">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
                                            <input type="text" class="form-control product-search" id="input-search" placeholder="Search Contacts...">
                                        </div>
                                    </form>
                                </div>

                                <div class="col-xl-8 col-lg-7 col-md-7 col-sm-5 text-sm-right text-center layout-spacing align-self-center">
                                    <div class="d-flex justify-content-sm-end justify-content-center">
                                        <svg id="btn-add-contact" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user-plus"><path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="8.5" cy="7" r="4"></circle><line x1="20" y1="8" x2="20" y2="14"></line><line x1="23" y1="11" x2="17" y2="11"></line></svg>

                                        <div class="switch align-self-center">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-list view-list active-view"><line x1="8" y1="6" x2="21" y2="6"></line><line x1="8" y1="12" x2="21" y2="12"></line><line x1="8" y1="18" x2="21" y2="18"></line><line x1="3" y1="6" x2="3" y2="6"></line><line x1="3" y1="12" x2="3" y2="12"></line><line x1="3" y1="18" x2="3" y2="18"></line></svg>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-grid view-grid"><rect x="3" y="3" width="7" height="7"></rect><rect x="14" y="3" width="7" height="7"></rect><rect x="14" y="14" width="7" height="7"></rect><rect x="3" y="14" width="7" height="7"></rect></svg>
                                        </div>
                                    </div>

                                    <!-- Modal -->
                                    <div class="modal fade" id="addContactModal" tabindex="-1" role="dialog" aria-labelledby="addContactModalTitle" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                            <div class="modal-content">
                                                <div class="modal-body">
                                                    <i class="flaticon-cancel-12 close" data-dismiss="modal"></i>
                                                    <div class="add-contact-box">
                                                        <div class="add-contact-content">
                                                            <form id="addContactModalTitle">
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="contact-name">
                                                                            <i class="flaticon-user-11"></i>
                                                                            <input type="text" id="c-name" class="form-control" placeholder="Name">
                                                                            <span class="validation-text"></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="contact-email">
                                                                            <i class="flaticon-mail-26"></i>
                                                                            <input type="text" id="c-email" class="form-control" placeholder="Email">
                                                                            <span class="validation-text"></span>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="contact-occupation">
                                                                            <i class="flaticon-fill-area"></i>
                                                                            <input type="text" id="c-occupation" class="form-control" placeholder="Occupation">
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-6">
                                                                        <div class="contact-phone">
                                                                            <i class="flaticon-telephone"></i>
                                                                            <input type="text" id="c-phone" class="form-control" placeholder="Phone">
                                                                            <span class="validation-text"></span>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <div class="contact-location">
                                                                            <i class="flaticon-location-1"></i>
                                                                            <input type="text" id="c-location" class="form-control" placeholder="Location">
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button id="btn-edit" class="float-left btn">Save</button>

                                                    <button class="btn" data-dismiss="modal"> <i class="flaticon-delete-1"></i> Discard</button>

                                                    <button id="btn-add" class="btn">Add</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="searchable-items list">
                                <div class="items items-header-section">
                                    <div class="item-content">
                                        <div class="">
                                            <div class="n-chk align-self-center text-center">
                                                <label class="new-control new-checkbox checkbox-primary">
                                                  <input type="checkbox" class="new-control-input" id="contact-check-all">
                                                  <span class="new-control-indicator"></span>
                                                </label>
                                            </div>
                                            <h4>Name</h4>
                                        </div>
                                        <div class="user-email">
                                            <h4>Email</h4>
                                        </div>
                                        <div class="user-location">
                                            <h4 style="margin-left: 0;">Location</h4>
                                        </div>
                                        <div class="user-phone">
                                            <h4 style="margin-left: 3px;">Phone</h4>
                                        </div>
                                        <div class="action-btn">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2  delete-multiple"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg>
                                        </div>
                                    </div>
                                </div>

                                <div class="items">
                                    <div class="item-content">
                                        <div class="user-profile">
                                            <div class="n-chk align-self-center text-center">
                                                <label class="new-control new-checkbox checkbox-primary">
                                                  <input type="checkbox" class="new-control-input contact-chkbox">
                                                  <span class="new-control-indicator"></span>
                                                </label>
                                            </div>
                                            <img src="assets/img/profile-5.jpg" alt="avatar">
                                            <div class="user-meta-info">
                                                <p class="user-name" data-name="Alan Green">Alan Green</p>
                                                <p class="user-work" data-occupation="Web Developer">Web Developer</p>
                                            </div>
                                        </div>
                                        <div class="user-email">
                                            <p class="info-title">Email: </p>
                                            <p class="usr-email-addr" data-email="alan@mail.com">alan@mail.com</p>
                                        </div>
                                        <div class="user-location">
                                            <p class="info-title">Location: </p>
                                            <p class="usr-location" data-location="Boston, USA">Boston, USA</p>
                                        </div>
                                        <div class="user-phone">
                                            <p class="info-title">Phone: </p>
                                            <p class="usr-ph-no" data-phone="+1 (070) 123-4567">+1 (070) 123-4567</p>
                                        </div>
                                        <div class="action-btn">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-2 edit"><path d="M17 3a2.828 2.828 0 1 1 4 4L7.5 20.5 2 22l1.5-5.5L17 3z"></path></svg>

                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user-minus delete"><path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="8.5" cy="7" r="4"></circle><line x1="23" y1="11" x2="17" y2="11"></line></svg>
                                        </div>
                                    </div>
                                </div>

                                <div class="items">
                                    <div class="item-content">
                                        <div class="user-profile">
                                            <div class="n-chk align-self-center text-center">
                                                <label class="new-control new-checkbox checkbox-primary">
                                                  <input type="checkbox" class="new-control-input contact-chkbox">
                                                  <span class="new-control-indicator"></span>
                                                </label>
                                            </div>
                                            <img src="assets/img/profile-11.jpg" alt="avatar">
                                            <div class="user-meta-info">
                                                <p class="user-name" data-name="Linda Nelson">Linda Nelson</p>
                                                <p class="user-work" data-occupation="Web Designer">Web Designer</p>
                                            </div>
                                        </div>
                                        <div class="user-email">
                                            <p class="info-title">Email: </p>
                                            <p class="usr-email-addr" data-email="linda@mail.com">linda@mail.com</p>
                                        </div>
                                        <div class="user-location">
                                            <p class="info-title">Location: </p>
                                            <p class="usr-location" data-location="Sydney, Australia">Sydney, Australia</p>
                                        </div>
                                        <div class="user-phone">
                                            <p class="info-title">Phone: </p>
                                            <p class="usr-ph-no" data-phone="+1 (070) 123-4567">+1 (070) 123-4567</p>
                                        </div>
                                        <div class="action-btn">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-2 edit"><path d="M17 3a2.828 2.828 0 1 1 4 4L7.5 20.5 2 22l1.5-5.5L17 3z"></path></svg>

                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user-minus delete"><path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="8.5" cy="7" r="4"></circle><line x1="23" y1="11" x2="17" y2="11"></line></svg>
                                        </div>
                                    </div>
                                </div>

                                <div class="items">
                                    <div class="item-content">
                                        <div class="user-profile">
                                            <div class="n-chk align-self-center text-center">
                                                <label class="new-control new-checkbox checkbox-primary">
                                                  <input type="checkbox" class="new-control-input contact-chkbox">
                                                  <span class="new-control-indicator"></span>
                                                </label>
                                            </div>
                                            <img src="assets/img/profile-12.jpg" alt="avatar">
                                            <div class="user-meta-info">
                                                <p class="user-name" data-name="Lila Perry">Lila Perry</p>
                                                <p class="user-work" data-occupation="UX/UI Designer">UX/UI Designer</p>
                                            </div>
                                        </div>
                                        <div class="user-email">
                                            <p class="info-title">Email: </p>
                                            <p class="usr-email-addr" data-email="lila@mail.com">lila@mail.com</p>
                                        </div>
                                        <div class="user-location">
                                            <p class="info-title">Location: </p>
                                            <p class="usr-location" data-location="Miami, USA">Miami, USA</p>
                                        </div>
                                        <div class="user-phone">
                                            <p class="info-title">Phone: </p>
                                            <p class="usr-ph-no" data-phone="+1 (070) 123-4567">+1 (070) 123-4567</p>
                                        </div>
                                        <div class="action-btn">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-2 edit"><path d="M17 3a2.828 2.828 0 1 1 4 4L7.5 20.5 2 22l1.5-5.5L17 3z"></path></svg>

                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user-minus delete"><path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="8.5" cy="7" r="4"></circle><line x1="23" y1="11" x2="17" y2="11"></line></svg>
                                        </div>
                                    </div>
                                </div>

                                <div class="items">
                                    <div class="item-content">
                                        <div class="user-profile">
                                            <div class="n-chk align-self-center text-center">
                                                <label class="new-control new-checkbox checkbox-primary">
                                                  <input type="checkbox" class="new-control-input contact-chkbox">
                                                  <span class="new-control-indicator"></span>
                                                </label>
                                            </div>
                                            <img src="assets/img/profile-3.jpg" alt="avatar">
                                            <div class="user-meta-info">
                                                <p class="user-name" data-name="Andy King">Andy King</p>
                                                <p class="user-work" data-occupation="Web Developer">Project Lead</p>
                                            </div>
                                        </div>
                                        <div class="user-email">
                                            <p class="info-title">Email: </p>
                                            <p class="usr-email-addr" data-email="andy@mail.com">andy@mail.com</p>
                                        </div>
                                        <div class="user-location">
                                            <p class="info-title">Location: </p>
                                            <p class="usr-location" data-location="Tokyo, Japan">Tokyo, Japan</p>
                                        </div>
                                        <div class="user-phone">
                                            <p class="info-title">Phone: </p>
                                            <p class="usr-ph-no" data-phone="+1 (070) 123-4567">+1 (070) 123-4567</p>
                                        </div>
                                        <div class="action-btn">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-2 edit"><path d="M17 3a2.828 2.828 0 1 1 4 4L7.5 20.5 2 22l1.5-5.5L17 3z"></path></svg>

                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user-minus delete"><path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="8.5" cy="7" r="4"></circle><line x1="23" y1="11" x2="17" y2="11"></line></svg>
                                        </div>
                                    </div>
                                </div>

                                <div class="items">
                                    <div class="item-content">
                                        <div class="user-profile">
                                            <div class="n-chk align-self-center text-center">
                                                <label class="new-control new-checkbox checkbox-primary">
                                                  <input type="checkbox" class="new-control-input contact-chkbox">
                                                  <span class="new-control-indicator"></span>
                                                </label>
                                            </div>
                                            <img src="assets/img/profile-15.jpg" alt="avatar">
                                            <div class="user-meta-info">
                                                <p class="user-name" data-name="Jesse Cory">Jesse Cory</p>
                                                <p class="user-work" data-occupation="Web Developer">Web Developer</p>
                                            </div>
                                        </div>
                                        <div class="user-email">
                                            <p class="info-title">Email: </p>
                                            <p class="usr-email-addr" data-email="jesse@mail.com">jesse@mail.com</p>
                                        </div>
                                        <div class="user-location">
                                            <p class="info-title">Location: </p>
                                            <p class="usr-location" data-location="Edinburgh, UK">Edinburgh, UK</p>
                                        </div>
                                        <div class="user-phone">
                                            <p class="info-title">Phone: </p>
                                            <p class="usr-ph-no" data-phone="+1 (070) 123-4567">+1 (070) 123-4567</p>
                                        </div>
                                        <div class="action-btn">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-2 edit"><path d="M17 3a2.828 2.828 0 1 1 4 4L7.5 20.5 2 22l1.5-5.5L17 3z"></path></svg>

                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user-minus delete"><path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="8.5" cy="7" r="4"></circle><line x1="23" y1="11" x2="17" y2="11"></line></svg>
                                        </div>
                                    </div>
                                </div>

                                <div class="items">
                                    <div class="item-content">
                                        <div class="user-profile">
                                            <div class="n-chk align-self-center text-center">
                                                <label class="new-control new-checkbox checkbox-primary">
                                                  <input type="checkbox" class="new-control-input contact-chkbox">
                                                  <span class="new-control-indicator"></span>
                                                </label>
                                            </div>
                                            <img src="assets/img/profile-7.jpg" alt="avatar">
                                            <div class="user-meta-info">
                                                <p class="user-name" data-name="Xavier">Xavier</p>
                                                <p class="user-work" data-occupation="UX/UI Designer">UX/UI Designer</p>
                                            </div>
                                        </div>
                                        <div class="user-email">
                                            <p class="info-title">Email: </p>
                                            <p class="usr-email-addr" data-email="xavier@mail.com">xavier@mail.com</p>
                                        </div>
                                        <div class="user-location">
                                            <p class="info-title">Location: </p>
                                            <p class="usr-location" data-location="New York, USA">New York, USA</p>
                                        </div>
                                        <div class="user-phone">
                                            <p class="info-title">Phone: </p>
                                            <p class="usr-ph-no" data-phone="+1 (070) 123-4567">+1 (070) 123-4567</p>
                                        </div>
                                        <div class="action-btn">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-2 edit"><path d="M17 3a2.828 2.828 0 1 1 4 4L7.5 20.5 2 22l1.5-5.5L17 3z"></path></svg>

                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user-minus delete"><path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="8.5" cy="7" r="4"></circle><line x1="23" y1="11" x2="17" y2="11"></line></svg>
                                        </div>
                                    </div>
                                </div>

                                <div class="items">
                                    <div class="item-content">
                                        <div class="user-profile">
                                            <div class="n-chk align-self-center text-center">
                                                <label class="new-control new-checkbox checkbox-primary">
                                                  <input type="checkbox" class="new-control-input contact-chkbox">
                                                  <span class="new-control-indicator"></span>
                                                </label>
                                            </div>
                                            <img src="assets/img/profile-18.jpg" alt="avatar">
                                            <div class="user-meta-info">
                                                <p class="user-name" data-name="Susan">Susan</p>
                                                <p class="user-work" data-occupation="Project Manager">Project Manager</p>
                                            </div>
                                        </div>
                                        <div class="user-email">
                                            <p class="info-title">Email: </p>
                                            <p class="usr-email-addr" data-email="susan@mail.com">susan@mail.com</p>
                                        </div>
                                        <div class="user-location">
                                            <p class="info-title">Location: </p>
                                            <p class="usr-location" data-location="Miami, USA">Miami, USA</p>
                                        </div>
                                        <div class="user-phone">
                                            <p class="info-title">Phone: </p>
                                            <p class="usr-ph-no" data-phone="+1 (070) 123-4567">+1 (070) 123-4567</p>
                                        </div>
                                        <div class="action-btn">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-2 edit"><path d="M17 3a2.828 2.828 0 1 1 4 4L7.5 20.5 2 22l1.5-5.5L17 3z"></path></svg>

                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user-minus delete"><path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="8.5" cy="7" r="4"></circle><line x1="23" y1="11" x2="17" y2="11"></line></svg>
                                        </div>
                                    </div>
                                </div>

                                <div class="items">
                                    <div class="item-content">
                                        <div class="user-profile">
                                            <div class="n-chk align-self-center text-center">
                                                <label class="new-control new-checkbox checkbox-primary">
                                                  <input type="checkbox" class="new-control-input contact-chkbox">
                                                  <span class="new-control-indicator"></span>
                                                </label>
                                            </div>
                                            <img src="assets/img/profile-29.jpg" alt="avatar">
                                            <div class="user-meta-info">
                                                <p class="user-name" data-name="Traci Lopez">Traci Lopez</p>
                                                <p class="user-work" data-occupation="Web Developer">Web Developer</p>
                                            </div>
                                        </div>
                                        <div class="user-email">
                                            <p class="info-title">Email: </p>
                                            <p class="usr-email-addr" data-email="traci@mail.com">traci@mail.com</p>
                                        </div>
                                        <div class="user-location">
                                            <p class="info-title">Location: </p>
                                            <p class="usr-location" data-location="Edinburgh, UK">Edinburgh, UK</p>
                                        </div>
                                        <div class="user-phone">
                                            <p class="info-title">Phone: </p>
                                            <p class="usr-ph-no" data-phone="+1 (070) 123-4567">+1 (070) 123-4567</p>
                                        </div>
                                        <div class="action-btn">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-2 edit"><path d="M17 3a2.828 2.828 0 1 1 4 4L7.5 20.5 2 22l1.5-5.5L17 3z"></path></svg>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user-minus delete"><path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="8.5" cy="7" r="4"></circle><line x1="23" y1="11" x2="17" y2="11"></line></svg>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                </div>
        </div>
        <!--  END CONTENT AREA  -->

    </div>
    <!-- END MAIN CONTAINER -->
   


     <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
    <script src="assets/js/libs/jquery-3.1.1.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="assets/js/app.js"></script>    
    <script>
        $(document).ready(function () {
            App.init();
        });
    </script>
    <script src="assets/js/custom.js"></script>
    <!-- END GLOBAL MANDATORY SCRIPTS -->
    <script src="plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="assets/js/apps/contact.js"></script>
</body>
</html>
