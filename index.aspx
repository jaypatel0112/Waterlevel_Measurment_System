﻿<%@ Page Title="" Language="C#" MasterPageFile="~/department/liq.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="department_index" validateRequest="false" enableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
                               <!-- Page Container -->
        <!--
            Available classes for #page-container:

        GENERIC

            'enable-cookies'                            Remembers active color theme between pages (when set through color theme helper Template._uiHandleTheme())

        SIDEBAR & SIDE OVERLAY

            'sidebar-r'                                 Right Sidebar and left Side Overlay (default is left Sidebar and right Side Overlay)
            'sidebar-mini'                              Mini hoverable Sidebar (screen width > 991px)
            'sidebar-o'                                 Visible Sidebar by default (screen width > 991px)
            'sidebar-o-xs'                              Visible Sidebar by default (screen width < 992px)
            'sidebar-inverse'                           Dark themed sidebar

            'side-overlay-hover'                        Hoverable Side Overlay (screen width > 991px)
            'side-overlay-o'                            Visible Side Overlay by default

            'enable-page-overlay'                       Enables a visible clickable Page Overlay (closes Side Overlay on click) when Side Overlay opens

            'side-scroll'                               Enables custom scrolling on Sidebar and Side Overlay instead of native scrolling (screen width > 991px)

        HEADER

            ''                                          Static Header if no class is added
            'page-header-fixed'                         Fixed Header

        HEADER STYLE

            ''                                          Classic Header style if no class is added
            'page-header-modern'                        Modern Header style
            'page-header-inverse'                       Dark themed Header (works only with classic Header style)
            'page-header-glass'                         Light themed Header with transparency by default
                                                        (absolute position, perfect for light images underneath - solid light background on scroll if the Header is also set as fixed)
            'page-header-glass page-header-inverse'     Dark themed Header with transparency by default
                                                        (absolute position, perfect for dark images underneath - solid dark background on scroll if the Header is also set as fixed)

        MAIN CONTENT LAYOUT

            ''                                          Full width Main Content if no class is added
            'main-content-boxed'                        Full width Main Content with a specific maximum width (screen width > 1200px)
            'main-content-narrow'                       Full width Main Content with a percentage width (screen width > 1200px)
        -->
        <div id="page-container" class="sidebar-o enable-page-overlay side-scroll page-header-modern main-content-boxed">
            <!-- Side Overlay-->
            <aside id="side-overlay">
                <!-- Side Header -->
                <div class="content-header content-header-fullrow">
                    <div class="content-header-section align-parent">
                        <!-- Close Side Overlay -->
                        <!-- Layout API, functionality initialized in Template._uiApiLayout() -->
                        <button type="button" class="btn btn-circle btn-dual-secondary align-v-r" data-toggle="layout" data-action="side_overlay_close">
                            <i class="fa fa-times text-danger"></i>
                        </button>
                        <!-- END Close Side Overlay -->

                        <!-- User Info -->
                        <div class="content-header-item">
                            <a class="img-link mr-5" href="be_pages_generic_profile.html">
                                <img class="img-avatar img-avatar32" src="assets/media/avatars/avatar15.jpg" alt="" />
                            </a>
                            <a class="align-middle link-effect text-primary-dark font-w600" href="be_pages_generic_profile.html">John Smith</a>
                        </div>
                        <!-- END User Info -->
                    </div>
                </div>
                <!-- END Side Header -->
                 <!-- Side Content -->
                <div class="content-side">
                    <!-- Search -->
                    <div class="block pull-t pull-r-l">
                        <div class="block-content block-content-full block-content-sm bg-body-light">
                            <form action="be_pages_generic_search.html" method="post">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="side-overlay-search" name="side-overlay-search" placeholder="Search.." />
                                    <div class="input-group-append">
                                        <button type="submit" class="btn btn-secondary px-10">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- END Search -->

                    <!-- Mini Stats -->
                    <div class="block pull-r-l">
                        <div class="block-content block-content-full block-content-sm bg-body-light">
                            <div class="row">
                                <div class="col-4">
                                    <div class="font-size-sm font-w600 text-uppercase text-muted">Clients</div>
                                    <div class="font-size-h4">460</div>
                                </div>
                                <div class="col-4">
                                    <div class="font-size-sm font-w600 text-uppercase text-muted">Sales</div>
                                    <div class="font-size-h4">728</div>
                                </div>
                                <div class="col-4">
                                    <div class="font-size-sm font-w600 text-uppercase text-muted">Earnings</div>
                                    <div class="font-size-h4">$7,860</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END Mini Stats -->

                    <!-- Friends -->
                    <div class="block pull-r-l">
                        <div class="block-header bg-body-light">
                            <h3 class="block-title"><i class="fa fa-fw fa-users font-size-default mr-5"></i>Friends</h3>
                            <div class="block-options">
                                <button type="button" class="btn-block-option" data-toggle="block-option" data-action="state_toggle" data-action-mode="demo">
                                    <i class="si si-refresh"></i>
                                </button>
                                <button type="button" class="btn-block-option" data-toggle="block-option" data-action="content_toggle"></button>
                            </div>
                        </div>
                        <div class="block-content">
                            <ul class="nav-users push">
                                <li>
                                    <a href="be_pages_generic_profile.html">
                                        <img class="img-avatar" src="assets/media/avatars/avatar4.jpg" alt="" />
                                        <i class="fa fa-circle text-success"></i> Helen Jacobs
                                        <div class="font-w400 font-size-xs text-muted">Photographer</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="be_pages_generic_profile.html">
                                        <img class="img-avatar" src="assets/media/avatars/avatar10.jpg" alt="" />
                                        <i class="fa fa-circle text-success"></i> David Fuller
                                        <div class="font-w400 font-size-xs text-muted">Web Designer</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="be_pages_generic_profile.html">
                                        <img class="img-avatar" src="assets/media/avatars/avatar3.jpg" alt="" />
                                        <i class="fa fa-circle text-warning"></i> Laura Carr
                                        <div class="font-w400 font-size-xs text-muted">UI Designer</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="be_pages_generic_profile.html">
                                        <img class="img-avatar" src="assets/media/avatars/avatar16.jpg" alt=""/>
                                        <i class="fa fa-circle text-danger"></i> Justin Hunt
                                        <div class="font-w400 font-size-xs text-muted">Copywriter</div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- END Friends -->

                    <!-- Activity -->
                    <div class="block pull-r-l">
                        <div class="block-header bg-body-light">
                            <h3 class="block-title">
                                <i class="fa fa-fw fa-clock-o font-size-default mr-5"></i>Activity
                            </h3>
                            <div class="block-options">
                                <button type="button" class="btn-block-option" data-toggle="block-option" data-action="state_toggle" data-action-mode="demo">
                                    <i class="si si-refresh"></i>
                                </button>
                                <button type="button" class="btn-block-option" data-toggle="block-option" data-action="content_toggle"></button>
                            </div>
                        </div>
                        <div class="block-content">
                            <ul class="list list-activity">
                                <li>
                                    <i class="si si-wallet text-success"></i>
                                    <div class="font-w600">+$29 New sale</div>
                                    <div>
                                        <a href="javascript:void(0)">Admin Template</a>
                                    </div>
                                    <div class="font-size-xs text-muted">5 min ago</div>
                                </li>
                                <li>
                                    <i class="si si-close text-danger"></i>
                                    <div class="font-w600">Project removed</div>
                                    <div>
                                        <a href="javascript:void(0)">Best Icon Set</a>
                                    </div>
                                    <div class="font-size-xs text-muted">26 min ago</div>
                                </li>
                                <li>
                                    <i class="si si-pencil text-info"></i>
                                    <div class="font-w600">You edited the file</div>
                                    <div>
                                        <a href="javascript:void(0)">
                                            <i class="fa fa-file-text-o"></i> Docs.doc
                                        </a>
                                    </div>
                                    <div class="font-size-xs text-muted">3 hours ago</div>
                                </li>
                                <li>
                                    <i class="si si-plus text-success"></i>
                                    <div class="font-w600">New user</div>
                                    <div>
                                        <a href="javascript:void(0)">StudioWeb - View Profile</a>
                                    </div>
                                    <div class="font-size-xs text-muted">5 hours ago</div>
                                </li>
                                <li>
                                    <i class="si si-wrench text-warning"></i>
                                    <div class="font-w600">App v5.5 is available</div>
                                    <div>
                                        <a href="javascript:void(0)">Update now</a>
                                    </div>
                                    <div class="font-size-xs text-muted">8 hours ago</div>
                                </li>
                                <li>
                                    <i class="si si-user-follow text-pulse"></i>
                                    <div class="font-w600">+1 Friend Request</div>
                                    <div>
                                        <a href="javascript:void(0)">Accept</a>
                                    </div>
                                    <div class="font-size-xs text-muted">1 day ago</div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- END Activity -->

                    <!-- Profile -->
                    <div class="block pull-r-l">
                        <div class="block-header bg-body-light">
                            <h3 class="block-title">
                                <i class="fa fa-fw fa-pencil font-size-default mr-5"></i>Profile
                            </h3>
                            <div class="block-options">
                                <button type="button" class="btn-block-option" data-toggle="block-option" data-action="content_toggle"></button>
                            </div>
                        </div>
                        <div class="block-content">
                            <form action="be_pages_dashboard.html" method="post" onsubmit="return false;">
                                <div class="form-group mb-15">
                                    <label for="side-overlay-profile-name">Name</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="side-overlay-profile-name" name="side-overlay-profile-name" placeholder="Your name.." value="" />
                                        <div class="input-group-append">
                                            <span class="input-group-text">
                                                <i class="fa fa-user"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mb-15">
                                    <label for="side-overlay-profile-email">Email</label>
                                    <div class="input-group">
                                        <input type="email" class="form-control" id="side-overlay-profile-email" name="side-overlay-profile-email" placeholder="Your email.." value="" />
                                        <div class="input-group-append">
                                            <span class="input-group-text">
                                                <i class="fa fa-envelope"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mb-15">
                                    <label for="side-overlay-profile-password">New Password</label>
                                    <div class="input-group">
                                        <input type="password" class="form-control" id="side-overlay-profile-password" name="side-overlay-profile-password" placeholder="New Password.." />
                                        <div class="input-group-append">
                                            <span class="input-group-text">
                                                <i class="fa fa-asterisk"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mb-15">
                                    <label for="side-overlay-profile-password-confirm">Confirm New Password</label>
                                    <div class="input-group">
                                        <input type="password" class="form-control" id="side-overlay-profile-password-confirm" name="side-overlay-profile-password-confirm" placeholder="Confirm New Password.." />
                                        <div class="input-group-append">
                                            <span class="input-group-text">
                                                <i class="fa fa-asterisk"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-6">
                                        <button type="submit" class="btn btn-block btn-alt-primary">
                                            <i class="fa fa-refresh mr-5"></i> Update
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- END Profile -->

                    <!-- Settings -->
                    <div class="block pull-r-l">
                        <div class="block-header bg-body-light">
                            <h3 class="block-title">
                                <i class="fa fa-fw fa-wrench font-size-default mr-5"></i>Settings
                            </h3>
                            <div class="block-options">
                                <button type="button" class="btn-block-option" data-toggle="block-option" data-action="content_toggle"></button>
                            </div>
                        </div>
                        <div class="block-content">
                            <div class="row gutters-tiny">
                                <div class="col-6">
                                    <div class="custom-control custom-checkbox mb-5">
                                        <input type="checkbox" class="custom-control-input" id="side-overlay-settings-status" name="side-overlay-settings-status" value="1" checked="" />
                                        <label class="custom-control-label" for="side-overlay-settings-status">Online Status</label>
                                    </div>
                                    <div class="custom-control custom-checkbox mb-5">
                                        <input type="checkbox" class="custom-control-input" id="side-overlay-settings-public-profile" name="side-overlay-settings-public-profile" value="1" />
                                        <label class="custom-control-label" for="side-overlay-settings-public-profile">Public Profile</label>
                                    </div>
                                    <div class="custom-control custom-checkbox mb-5">
                                        <input type="checkbox" class="custom-control-input" id="side-overlay-settings-notifications" name="side-overlay-settings-notifications" value="1" checked="" />
                                        <label class="custom-control-label" for="side-overlay-settings-notifications">Notifications</label>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="custom-control custom-checkbox mb-5">
                                        <input type="checkbox" class="custom-control-input" id="side-overlay-settings-updates" name="side-overlay-settings-updates" value="1" />
                                        <label class="custom-control-label" for="side-overlay-settings-updates">Auto updates</label>
                                    </div>
                                    <div class="custom-control custom-checkbox mb-5">
                                        <input type="checkbox" class="custom-control-input" id="side-overlay-settings-api-access" name="side-overlay-settings-api-access" value="1" checked="" />
                                        <label class="custom-control-label" for="side-overlay-settings-api-access">API Access</label>
                                    </div>
                                    <div class="custom-control custom-checkbox mb-5">
                                        <input type="checkbox" class="custom-control-input" id="side-overlay-settings-limit-requests" name="side-overlay-settings-limit-requests" value="1" />
                                        <label class="custom-control-label" for="side-overlay-settings-limit-requests">API Requests</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END Settings -->
                </div>
                <!-- END Side Content -->
            </aside>
            <!-- END Side Overlay -->
            
            <!-- Sidebar -->
            <!--
                Helper classes

                Adding .sidebar-mini-hide to an element will make it invisible (opacity: 0) when the sidebar is in mini mode
                Adding .sidebar-mini-show to an element will make it visible (opacity: 1) when the sidebar is in mini mode
                    If you would like to disable the transition, just add the .sidebar-mini-notrans along with one of the previous 2 classes

                Adding .sidebar-mini-hidden to an element will hide it when the sidebar is in mini mode
                Adding .sidebar-mini-visible to an element will show it only when the sidebar is in mini mode
                    - use .sidebar-mini-visible-b if you would like to be a block when visible (display: block)
            -->
            <nav id="sidebar">
                <!-- Sidebar Content -->
                <div class="sidebar-content">
                    <!-- Side Header -->
                    <div class="content-header content-header-fullrow px-15">
                        <!-- Mini Mode -->
                        <div class="content-header-section sidebar-mini-visible-b">
                            <!-- Logo -->
                            <span class="content-header-item font-w700 font-size-xl float-left animated fadeIn">
                                <span class="text-dual-primary-dark">c</span><span class="text-primary">b</span>
                            </span>
                            <!-- END Logo -->
                        </div>
                        <!-- END Mini Mode -->

                        <!-- Normal Mode -->
                        <div class="content-header-section text-center align-parent sidebar-mini-hidden">
                            <!-- Close Sidebar, Visible only on mobile screens -->
                            <!-- Layout API, functionality initialized in Template._uiApiLayout() -->
                            <button type="button" class="btn btn-circle btn-dual-secondary d-lg-none align-v-r" data-toggle="layout" data-action="sidebar_close">
                                <i class="fa fa-times text-danger"></i>
                            </button>
                            <!-- END Close Sidebar -->

                            <!-- Logo -->
                            <div class="content-header-item">
                                
                                    
                                    <span class="font-size-xl text-dual-primary-dark"></span><span class="font-size-xl text-primary"></span>
                                 
                              
                            </div>
                            <!-- END Logo -->
                        </div>
                        <!-- END Normal Mode -->
                    </div>
                    <!-- END Side Header -->

                    <!-- Side User -->
                    <div class="content-side content-side-full content-side-user px-10 align-parent">
                        <!-- Visible only in mini mode -->
                        <div class="sidebar-mini-visible-b align-v animated fadeIn">
                            <img class="img-avatar img-avatar32" src="assets/media/avatars/avatar15.jpg" alt="" />
                        </div>
                        <!-- END Visible only in mini mode -->

                        <!-- Visible only in normal mode -->
                        <div class="sidebar-mini-hidden-b text-center">
                            <a class="img-link" href="be_pages_generic_profile.html">
                                <img class="img-avatar" src="assets/media/avatars/avatar15.jpg" alt="" />
                            </a>
                            <ul class="list-inline mt-10">
                                <li class="list-inline-item">
                                    <a class="link-effect text-dual-primary-dark font-size-xs font-w600 text-uppercase">
                                        <asp:Label ID="lblUname" runat="server"></asp:Label>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <!-- Layout API, functionality initialized in Template._uiApiLayout() -->
                                    <a class="link-effect text-dual-primary-dark" data-toggle="layout" data-action="sidebar_style_inverse_toggle" href="javascript:void(0)">
                                        <i class="si si-drop"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="link-effect text-dual-primary-dark" href="/logout.aspx">
                                        <i class="si si-logout"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!-- END Visible only in normal mode -->
                    </div>
                    <!-- END Side User -->

                    <!-- Side Navigation -->
                    <div class="content-side content-side-full">
                        <ul class="nav-main">
                            <li>
                                <a class="active" href="index.aspx"><i class="si si-cup"></i><span class="sidebar-mini-hide">Waterlevel Dashboard</span></a>
                            </li>
                           <%-- <li>
                                <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-badge"></i><span class="sidebar-mini-hide">Page Kits</span></a>
                                <ul>
                                    <li>
                                        <a class="nav-submenu" data-toggle="nav-submenu" href="#"><span class="sidebar-mini-hide">Dashboards</span></a>
                                        <ul>
                                            <li>
                                                <a href="src/be_pages_dashboard2.html"><span class="sidebar-mini-hide">Dashboard 2</span></a>
                                            </li>
                                            <li>
                                                <a href="src/be_pages_dashboard3.html"><span class="sidebar-mini-hide">Dashboard 3</span></a>
                                            </li>
                                            <li>
                                                <a href="src/be_pages_dashboard4.html"><span class="sidebar-mini-hide">Dashboard 4</span></a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="nav-submenu" data-toggle="nav-submenu" href="#"><span class="sidebar-mini-hide">Real Estate</span></a>
                                        <ul>
                                            <li>
                                                <a href="src/be_pages_real_estate_dashboard.html">Dashboard</a>
                                            </li>
                                            <li>
                                                <a href="src/be_pages_real_estate_listing.html">Listing</a>
                                            </li>
                                            <li>
                                                <a href="src/be_pages_real_estate_listing_new.html">Add New Listing</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="nav-submenu" data-toggle="nav-submenu" href="#"><span class="sidebar-mini-hide">Crypto</span></a>
                                        <ul>
                                            <li>
                                                <a href="src/be_pages_crypto_dashboard.html">Dashboard</a>
                                            </li>
                                            <li>
                                                <a href="src/be_pages_crypto_buy_sell.html">Buy/Sell</a>
                                            </li>
                                            <li>
                                                <a href="src/be_pages_crypto_wallets.html">Wallets</a>
                                            </li>
                                            <li>
                                                <a href="src/be_pages_crypto_settings.html">Settings</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="nav-submenu" data-toggle="nav-submenu" href="#"><span class="sidebar-mini-hide">e-Commerce</span></a>
                                        <ul>
                                            <li>
                                                <a href="src/be_pages_ecom_dashboard.html">Dashboard</a>
                                            </li>
                                            <li>
                                                <a href="src/be_pages_ecom_orders.html">Orders</a>
                                            </li>
                                            <li>
                                                <a href="src/be_pages_ecom_order.html">Order</a>
                                            </li>
                                            <li>
                                                <a href="src/be_pages_ecom_products.html">Products</a>
                                            </li>
                                            <li>
                                                <a href="src/be_pages_ecom_product_edit.html">Product Edit</a>
                                            </li>
                                            <li>
                                                <a href="src/be_pages_ecom_customer.html">Customer</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="nav-submenu" data-toggle="nav-submenu" href="#"><span class="sidebar-mini-hide">e-Learning</span></a>
                                        <ul>
                                            <li>
                                                <a href="src/be_pages_elearning_courses.html">Courses</a>
                                            </li>
                                            <li>
                                                <a href="src/be_pages_elearning_course.html">Course</a>
                                            </li>
                                            <li>
                                                <a href="src/be_pages_elearning_lesson.html">Lesson</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="nav-submenu" data-toggle="nav-submenu" href="#"><span class="sidebar-mini-hide">Forum</span></a>
                                        <ul>
                                            <li>
                                                <a href="src/be_pages_forum_categories.html">Categories</a>
                                            </li>
                                            <li>
                                                <a href="src/be_pages_forum_topics.html">Topics</a>
                                            </li>
                                            <li>
                                                <a href="src/be_pages_forum_discussion.html">Discussion</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="nav-submenu" data-toggle="nav-submenu" href="#"><span class="sidebar-mini-hide">Alternative Dashboards</span></a>
                                        <ul>
                                            <li>
                                                <a href="src/db_classic.html"><span class="sidebar-mini-hide">Classic</span></a>
                                            </li>
                                            <li>
                                                <a href="src/db_clean.html"><span class="sidebar-mini-hide">Clean</span></a>
                                            </li>
                                            <li>
                                                <a href="src/db_social.html"><span class="sidebar-mini-hide">Social</span></a>
                                            </li>
                                            <li>
                                                <a href="src/db_corporate.html"><span class="sidebar-mini-hide">Corporate</span></a>
                                            </li>
                                            <li>
                                                <a href="src/db_minimal.html"><span class="sidebar-mini-hide">Minimal</span></a>
                                            </li>
                                            <li>
                                                <a href="src/db_pop.html"><span class="sidebar-mini-hide">Pop</span></a>
                                            </li>
                                            <li>
                                                <a href="src/db_dark.html"><span class="sidebar-mini-hide">Dark</span></a>
                                            </li>
                                            <li>
                                                <a href="src/db_medical.html"><span class="sidebar-mini-hide">Medical</span></a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="nav-submenu" data-toggle="nav-submenu" href="#"><span class="sidebar-mini-hide">Boxed Backend</span></a>
                                        <ul>
                                            <li>
                                                <a href="src/bd_dashboard.html">Dashboard</a>
                                            </li>
                                            <li>
                                                <a href="src/bd_search.html">Search</a>
                                            </li>
                                            <li>
                                                <a href="src/bd_variations_hero_simple_1.html">Hero Simple 1</a>
                                            </li>
                                            <li>
                                                <a href="src/bd_variations_hero_simple_2.html">Hero Simple 2</a>
                                            </li>
                                            <li>
                                                <a href="src/bd_variations_hero_simple_3.html">Hero Simple 3</a>
                                            </li>
                                            <li>
                                                <a href="src/bd_variations_hero_simple_4.html">Hero Simple 4</a>
                                            </li>
                                            <li>
                                                <a href="src/bd_variations_hero_image_1.html">Hero Image 1</a>
                                            </li>
                                            <li>
                                                <a href="src/bd_variations_hero_image_2.html">Hero Image 2</a>
                                            </li>
                                            <li>
                                                <a href="src/bd_variations_hero_image_3.html">Hero Image 3</a>
                                            </li>
                                            <li>
                                                <a href="src/bd_variations_hero_image_4.html">Hero Image 4</a>
                                            </li>
                                            <li>
                                                <a href="src/bd_variations_hero_video_1.html">Hero Video 1</a>
                                            </li>
                                            <li>
                                                <a href="src/bd_variations_hero_video_2.html">Hero Video 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-main-heading"><span class="sidebar-mini-visible">UI</span><span class="sidebar-mini-hidden">User Interface</span></li>
                            <li>
                                <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-puzzle"></i><span class="sidebar-mini-hide">Blocks</span></a>
                                <ul>
                                    <li>
                                        <a href="src/be_blocks.html">Styles</a>
                                    </li>
                                    <li>
                                        <a href="src/be_blocks_tiles.html">Tiles</a>
                                    </li>
                                    <li>
                                        <a href="src/be_blocks_draggable.html">Draggable</a>
                                    </li>
                                    <li>
                                        <a href="src/be_blocks_api.html">API</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-moustache"></i><span class="sidebar-mini-hide">Widgets</span></a>
                                <ul>
                                    <li>
                                        <a href="src/be_blocks_widgets_users.html">Users</a>
                                    </li>
                                    <li>
                                        <a href="src/be_blocks_widgets_stats.html">Statistics</a>
                                    </li>
                                    <li>
                                        <a href="src/be_blocks_widgets_media.html">Media</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-energy"></i><span class="sidebar-mini-hide">Elements</span></a>
                                <ul>
                                    <li>
                                        <a href="src/be_ui_grid.html">Grid</a>
                                    </li>
                                    <li>
                                        <a href="src/be_ui_icons.html">Icons</a>
                                    </li>
                                    <li>
                                        <a href="src/be_ui_typography.html">Typography</a>
                                    </li>
                                    <li>
                                        <a href="src/be_ui_activity.html">Activity</a>
                                    </li>
                                    <li>
                                        <a href="src/be_ui_buttons.html">Buttons</a>
                                    </li>
                                    <li>
                                        <a href="src/be_ui_navigation.html">Navigation</a>
                                    </li>
                                    <li>
                                        <a href="src/be_ui_tabs.html">Tabs</a>
                                    </li>
                                    <li>
                                        <a href="src/be_ui_modals_tooltips.html">Modals &amp; Tooltips</a>
                                    </li>
                                    <li>
                                        <a href="src/be_ui_images.html">Images</a>
                                    </li>
                                    <li>
                                        <a href="src/be_ui_animations.html">Animations</a>
                                    </li>
                                    <li>
                                        <a href="src/be_ui_ribbons.html">Ribbons</a>
                                    </li>
                                    <li>
                                        <a href="src/be_ui_timeline.html">Timeline</a>
                                    </li>
                                    <li>
                                        <a href="src/be_ui_accordion.html">Accordion</a>
                                    </li>
                                    <li>
                                        <a href="src/be_ui_color_themes.html">Color Themes</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-layers"></i><span class="sidebar-mini-hide">Tables</span></a>
                                <ul>
                                    <li>
                                        <a href="src/be_tables_styles.html">Styles</a>
                                    </li>
                                    <li>
                                        <a href="src/be_tables_responsive.html">Responsive</a>
                                    </li>
                                    <li>
                                        <a href="src/be_tables_helpers.html">Helpers</a>
                                    </li>
                                    <li>
                                        <a href="src/be_tables_pricing.html">Pricing</a>
                                    </li>
                                    <li>
                                        <a href="src/be_tables_datatables.html">DataTables</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-note"></i><span class="sidebar-mini-hide">Forms</span></a>
                                <ul>
                                    <li>
                                        <a href="src/be_forms_elements_bootstrap.html">Bootstrap Elements</a>
                                    </li>
                                    <li>
                                        <a href="src/be_forms_elements_material.html">Material Elements</a>
                                    </li>
                                    <li>
                                        <a href="src/be_forms_css_inputs.html">CSS Inputs</a>
                                    </li>
                                    <li>
                                        <a href="src/be_forms_plugins.html">Plugins</a>
                                    </li>
                                    <li>
                                        <a href="src/be_forms_editors.html">Editors</a>
                                    </li>
                                    <li>
                                        <a href="src/be_forms_validation.html">Validation</a>
                                    </li>
                                    <li>
                                        <a href="src/be_forms_wizard.html">Wizard</a>
                                    </li>
                                    <li>
                                        <a href="src/be_forms_premade.html">Pre-made</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-main-heading"><span class="sidebar-mini-visible">BD</span><span class="sidebar-mini-hidden">Build</span></li>
                            <li>
                                <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-vector"></i><span class="sidebar-mini-hide">Layout</span></a>
                                <ul>
                                    <li>
                                        <a class="nav-submenu" data-toggle="nav-submenu" href="#">General</a>
                                        <ul>
                                            <li>
                                                <a href="src/be_layout_default.html">Default</a>
                                            </li>
                                            <li>
                                                <a href="src/be_layout_flipped.html">Flipped</a>
                                            </li>
                                            <li>
                                                <a href="src/be_layout_native_scrolling.html">Native Scrolling</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="nav-submenu" data-toggle="nav-submenu" href="#">Header</a>
                                        <ul>
                                            <li>
                                                <a class="nav-submenu" data-toggle="nav-submenu" href="#">Static</a>
                                                <ul>
                                                    <li>
                                                        <a href="src/be_layout_header_modern.html">Modern</a>
                                                    </li>
                                                    <li>
                                                        <a href="src/be_layout_header_classic.html">Classic</a>
                                                    </li>
                                                    <li>
                                                        <a href="src/be_layout_header_classic_inverse.html">Classic Inverse</a>
                                                    </li>
                                                    <li>
                                                        <a href="src/be_layout_header_glass.html">Glass</a>
                                                    </li>
                                                    <li>
                                                        <a href="src/be_layout_header_glass_inverse.html">Glass Inverse</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a class="nav-submenu" data-toggle="nav-submenu" href="#">Fixed</a>
                                                <ul>
                                                    <li>
                                                        <a href="src/be_layout_header_fixed_modern.html">Modern</a>
                                                    </li>
                                                    <li>
                                                        <a href="src/be_layout_header_fixed_classic.html">Classic</a>
                                                    </li>
                                                    <li>
                                                        <a href="src/be_layout_header_fixed_classic_inverse.html">Classic Inverse</a>
                                                    </li>
                                                    <li>
                                                        <a href="src/be_layout_header_fixed_glass.html">Glass</a>
                                                    </li>
                                                    <li>
                                                        <a href="src/be_layout_header_fixed_glass_inverse.html">Glass Inverse</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="nav-submenu" data-toggle="nav-submenu" href="#">Sidebar</a>
                                        <ul>
                                            <li>
                                                <a href="src/be_layout_sidebar_inverse.html">Inverse</a>
                                            </li>
                                            <li>
                                                <a href="src/be_layout_sidebar_hidden.html">Hidden</a>
                                            </li>
                                            <li>
                                                <a href="src/be_layout_sidebar_mini.html">Mini</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="nav-submenu" data-toggle="nav-submenu" href="#">Side Overlay</a>
                                        <ul>
                                            <li>
                                                <a href="src/be_layout_side_overlay_visible.html">Visible</a>
                                            </li>
                                            <li>
                                                <a href="src/be_layout_side_overlay_hoverable.html">Hoverable</a>
                                            </li>
                                            <li>
                                                <a href="src/be_layout_side_overlay_no_page_overlay.html">No Page Overlay</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="nav-submenu" data-toggle="nav-submenu" href="#">Main Content</a>
                                        <ul>
                                            <li>
                                                <a href="src/be_layout_content_boxed.html">Boxed</a>
                                            </li>
                                            <li>
                                                <a href="src/be_layout_content_narrow.html">Narrow</a>
                                            </li>
                                            <li>
                                                <a href="src/be_layout_content_full_width.html">Full Width</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="nav-submenu" data-toggle="nav-submenu" href="#">Hero</a>
                                        <ul>
                                            <li>
                                                <a href="src/be_layout_hero_color.html">Color</a>
                                            </li>
                                            <li>
                                                <a href="src/be_layout_hero_bubbles.html">Bubbles</a>
                                            </li>
                                            <li>
                                                <a href="src/be_layout_hero_image.html">Image</a>
                                            </li>
                                            <li>
                                                <a href="src/be_layout_hero_video.html">Video</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="be_layout_api.html">API</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-trophy"></i><span class="sidebar-mini-hide">Components</span></a>
                                <ul>
                                    <li>
                                        <a class="nav-submenu" data-toggle="nav-submenu" href="#"><span class="sidebar-mini-hide">Main Menu</span></a>
                                        <ul>
                                            <li>
                                                <a href="#">Link 1-1</a>
                                            </li>
                                            <li>
                                                <a href="#">Link 1-2</a>
                                            </li>
                                            <li>
                                                <a class="nav-submenu" data-toggle="nav-submenu" href="#">Sub Level 2</a>
                                                <ul>
                                                    <li>
                                                        <a href="#">Link 2-1</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Link 2-2</a>
                                                    </li>
                                                    <li>
                                                        <a class="nav-submenu" data-toggle="nav-submenu" href="#">Sub Level 3</a>
                                                        <ul>
                                                            <li>
                                                                <a href="#">Link 3-1</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">Link 3-2</a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="nav-submenu" data-toggle="nav-submenu" href="#">Chat</a>
                                        <ul>
                                            <li>
                                                <a href="src/be_comp_chat_multiple.html">Multiple</a>
                                            </li>
                                            <li>
                                                <a href="src/be_comp_chat_single.html">Single</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="src/be_comp_charts.html">Charts</a>
                                    </li>
                                    <li>
                                        <a href="src/be_comp_nestable.html">Nestable</a>
                                    </li>
                                    <li>
                                        <a href="src/be_comp_gallery.html">Gallery</a>
                                    </li>
                                    <li>
                                        <a href="src/be_comp_sliders.html">Sliders</a>
                                    </li>
                                    <li>
                                        <a href="src/be_comp_scrolling.html">Scrolling</a>
                                    </li>
                                    <li>
                                        <a href="src/be_comp_rating.html">Rating</a>
                                    </li>
                                    <li>
                                        <a href="src/be_comp_filtering.html">Filtering</a>
                                    </li>
                                    <li>
                                        <a href="src/be_comp_appear.html">Appear</a>
                                    </li>
                                    <li>
                                        <a href="src/be_comp_countto.html">CountTo</a>
                                    </li>
                                    <li>
                                        <a href="src/be_comp_calendar.html">Calendar</a>
                                    </li>
                                    <li>
                                        <a href="src/be_comp_image_cropper.html">Image Cropper</a>
                                    </li>
                                    <li>
                                        <a href="src/be_comp_maps_google.html">Google Maps</a>
                                    </li>
                                    <li>
                                        <a href="src/be_comp_maps_vector.html">Vector Maps</a>
                                    </li>
                                    <li>
                                        <a href="src/be_comp_syntax_highlighting.html">Syntax Highlighting</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-main-heading"><span class="sidebar-mini-visible">PG</span><span class="sidebar-mini-hidden">Pages</span></li>
                            <li>
                                <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-globe-alt"></i><span class="sidebar-mini-hide">Generic</span></a>
                                <ul>
                                    <li>
                                        <a href="src/be_pages_generic_blank.html">Blank</a>
                                    </li>
                                    <li>
                                        <a href="src/be_pages_generic_blank_block.html">Blank (Block)</a>
                                    </li>
                                    <li>
                                        <a href="src/be_pages_generic_blank_breadcrumb.html">Blank (Breadcrumb)</a>
                                    </li>
                                    <li>
                                        <a href="src/be_pages_generic_scrumboard.html">Scrum Board</a>
                                    </li>
                                    <li>
                                        <a href="src/be_pages_generic_search.html">Search</a>
                                    </li>
                                    <li>
                                        <a href="src/be_pages_generic_profile.html">Profile</a>
                                    </li>
                                    <li>
                                        <a href="src/be_pages_generic_inbox.html">Inbox</a>
                                    </li>
                                    <li>
                                        <a href="src/be_pages_generic_invoice.html">Invoice</a>
                                    </li>
                                    <li>
                                        <a href="src/be_pages_generic_faq.html">FAQ</a>
                                    </li>
                                    <li>
                                        <a href="src/be_pages_generic_blog.html">Blog</a>
                                    </li>
                                    <li>
                                        <a href="src/be_pages_generic_story.html">Story</a>
                                    </li>
                                    <li>
                                        <a href="src/be_pages_generic_project_list.html">Project List</a>
                                    </li>
                                    <li>
                                        <a href="src/be_pages_generic_project.html">Project</a>
                                    </li>
                                    <li>
                                        <a href="src/be_pages_generic_upgrade_plan.html">Upgrade Plan</a>
                                    </li>
                                    <li>
                                        <a href="src/be_pages_generic_team.html">Team</a>
                                    </li>
                                    <li>
                                        <a href="src/be_pages_generic_contact.html">Contact</a>
                                    </li>
                                    <li>
                                        <a href="src/be_pages_generic_todo.html">Todo</a>
                                    </li>
                                    <li>
                                        <a href="src/op_coming_soon.html">Coming Soon</a>
                                    </li>
                                    <li>
                                        <a href="src/op_maintenance.html">Maintenance</a>
                                    </li>
                                    <li>
                                        <a href="src/op_status.html">Status</a>
                                    </li>
                                    <li>
                                        <a href="src/op_installation.html">Installation</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-lock"></i><span class="sidebar-mini-hide">Authentication</span></a>
                                <ul>
                                    <li>
                                        <a href="src/be_pages_auth_all.html">All</a>
                                    </li>
                                    <li>
                                        <a href="src/op_auth_signin.html">Sign In</a>
                                    </li>
                                    <li>
                                        <a href="src/op_auth_signin2.html">Sign In 2</a>
                                    </li>
                                    <li>
                                        <a href="src/op_auth_signin3.html">Sign In 3</a>
                                    </li>
                                    <li>
                                        <a href="src/op_auth_signup.html">Sign Up</a>
                                    </li>
                                    <li>
                                        <a href="src/op_auth_signup2.html">Sign Up 2</a>
                                    </li>
                                    <li>
                                        <a href="src/op_auth_signup3.html">Sign Up 3</a>
                                    </li>
                                    <li>
                                        <a href="src/op_auth_lock.html">Lock Screen</a>
                                    </li>
                                    <li>
                                        <a href="src/op_auth_lock2.html">Lock Screen 2</a>
                                    </li>
                                    <li>
                                        <a href="src/op_auth_lock3.html">Lock Screen 3</a>
                                    </li>
                                    <li>
                                        <a href="src/op_auth_reminder.html">Pass Reminder</a>
                                    </li>
                                    <li>
                                        <a href="src/op_auth_reminder2.html">Pass Reminder 2</a>
                                    </li>
                                    <li>
                                        <a href="src/op_auth_reminder3.html">Pass Reminder 3</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a class="nav-submenu" data-toggle="nav-submenu" href="#"><i class="si si-flag"></i><span class="sidebar-mini-hide">Error</span></a>
                                <ul>
                                    <li>
                                        <a href="src/be_pages_error_all.html">All</a>
                                    </li>
                                    <li>
                                        <a href="src/op_error_400.html">400</a>
                                    </li>
                                    <li>
                                        <a href="src/op_error_401.html">401</a>
                                    </li>
                                    <li>
                                        <a href="src/op_error_403.html">403</a>
                                    </li>
                                    <li>
                                        <a href="src/op_error_404.html">404</a>
                                    </li>
                                    <li>
                                        <a href="op_error_500.html">500</a>
                                    </li>
                                    <li>
                                        <a href="op_error_503.html">503</a>
                                    </li>
                                </ul>
                            </li>--%>
                        </ul>
                    </div>
                    <!-- END Side Navigation -->
                </div>
                <!-- Sidebar Content -->
            </nav>
            <!-- END Sidebar -->
            <!-- Header -->
            <header id="page-header">
                <!-- Header Content -->
                <div class="content-header">
                    <!-- Left Section -->
                    <div class="content-header-section">
                        <!-- Toggle Sidebar -->
                        <!-- Layout API, functionality initialized in Template._uiApiLayout() -->
                        <button type="button" class="btn btn-circle btn-dual-secondary" data-toggle="layout" data-action="sidebar_toggle">
                            <i class="fa fa-navicon"></i>
                        </button>
                        <!-- END Toggle Sidebar -->
                    </div>
                    <!-- END Left Section -->

                    <!-- Right Section -->
                    <div class="content-header-section">
                        
                        <!-- User Dropdown -->
                        
                        <div class="btn-group" role="group">
                            <button type="button" class="btn btn-rounded btn-dual-secondary" id="page-header-user-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-user d-sm-none"></i>
                                <span id="lblname" runat="server"></span>
                                <i class="fa fa-angle-down ml-5"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-right min-width-200" aria-labelledby="page-header-user-dropdown">
                                <h5 class="h6 text-center py-10 mb-5 border-b text-uppercase">User</h5>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="/logout.aspx">
                                    <i class="si si-logout mr-5"></i> Log Out
                                </a>
                            </div>
                        </div>
                        
                        <!-- END User Dropdown -->                        
                        <%--<!-- Toggle Side Overlay -->
                        <!-- Layout API, functionality initialized in Template._uiApiLayout() -->
                        <button type="button" class="btn btn-circle btn-dual-secondary" data-toggle="layout" data-action="side_overlay_toggle">
                            <i class="fa fa-tasks"></i>
                        </button>
                        <!-- END Toggle Side Overlay -->--%>
                    </div>
                    <!-- END Right Section -->
                </div>
                <!-- END Header Content -->
                <!-- Header Loader -->
                <!-- Please check out the Activity page under Elements category to see examples of showing/hiding it -->
                <div id="page-header-loader" class="overlay-header bg-primary">
                    <div class="content-header content-header-fullrow text-center">
                        <div class="content-header-item">
                            <i class="fa fa-sun-o fa-spin text-white"></i>
                        </div>
                    </div>
                </div>
                <!-- END Header Loader -->
            
            </header>
            <!-- END Header -->

            <!-- Main Container -->
            <div id="main-container">

                <!-- Page Content -->
                <div class="content">
                     
                    <!-- Flot Charts functionality is initialized in js/pages/be_comp_charts.min.js which was auto compiled from _es6/pages/be_comp_charts.js -->
                    <!-- For more info and examples you can check out http://www.flotcharts.org/flot/examples -->
                    <h2 class="content-heading">Flot Charts</h2>
                    <div class="row">
                        <div class="col-xl-6">
                            <!-- Live Chart -->
                            <div class="block">

                               
                                <div class="block-header block-header-default">
                                    <h3 class="block-title">Live</h3>
                                    <div class="block-options">
                                        <div class="block-options-item">
                                            <span class="js-flot-live-info text-primary font-w700"></span>
                                        </div>
                                        <div class="block-options-item">
                                            <i class="fa fa-refresh fa-spin text-muted"></i>
                                        </div>
                                    </div>
                                </div>
                                
                            
                        
                                <div class="block-content block-content-full">
                                     <canvas id="chart" style="height: 300px; width: 100%;"></canvas>

                                    <!-- Live Chart Container -->
                                    <%--<div class="js-flot-live" style="height: 380px;"></div>--%>
                                    
                                    <div class="dashboardarea" style="width: 100%;height:50%;">
                                    <div style="width: 100%;height:100px;">
                                    <div class="block-content block-content-full">
                                     <canvas id="abc"style="height: 100px; width: 100%;"></canvas>
                                    <asp:HiddenField ID="chartlabelvalue" runat="server" />
                                    <asp:HiddenField ID="charttank1" runat="server" />
                                    <asp:HiddenField ID="chart1value" runat="server" />
                                        </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                       
                                        <div class="col-xl-6">
                                            <div class="block">
                                <div class="block-header block-header-default">
                                    <h3 class="block-title">Live Data</h3>
                                    <div class="block-options">
                                        <button type="button" class="btn-block-option">
                                            <i class="si si-wrench"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="block-content block-content-full" style=" align-content: center">
                                    
                  
                                    
                                     
                                        <asp:GridView ID="gvdata" runat="server" Visible="false" AllowPaging="True" PageSize="5" >       
                                        </asp:GridView>
                                            
                                    <div class="dashboardarea" style="height: 400px; width: 100%; align-items: center">
                                        
                                    <table  class="table table-hover mb-0">
                                        
                                        <tr>
                                            <th style="font-weight: bold; font-size: 40px; border: 1px solid black; text-align: center">Date</th>
                                            <th style="font-weight: bold; font-size: 40px; border: 1px solid black; text-align: center">Percentage</th>
                                        </tr>
                                        <tr>
                                            <td style="font-size: 25px; border: 1px solid black; text-align: center" id="tdate"></td>
                                            <td style="font-size: 25px; border: 1px solid black; text-align: center" id="tper"></td>
                                        </tr>
                                    </table>
                                            
                                            </div>


                                </div>
                            </div>

                                        
                                          </div>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                    </div>
                                    </div>
                                    
                                        </div>
                                </div>
              
                            
                            <!-- END Live Chart -->
                        
                       
                        
                   
                    <!-- END Flot Charts -->
               
                <!-- END Page Content -->

            
            <!-- END Main Container -->

            
        
        <!-- END Page Container -->
    
    

        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.3.0-rc.1/Chart.js"></script>

        <script type="text/javascript">
            function formatDate(date) {
                var d = new Date(date),
                    month = '' + (d.getMonth() + 1),
                    day = '' + d.getDate(),
                    year = d.getFullYear();

                hour = d.getHours();
                min = d.getMinutes();

                if (month.length < 2)
                    month = '0' + month;
                if (day.length < 2)
                    day = '0' + day;

                var fd = day + '-' + month + '-' + year + ' ' + hour + ':' + min;

                return fd;
            }
            $(document).ready(function () {
                abc();
            });
            function abc() {
                $.ajax({
                    url: "https://api.thingspeak.com/channels/1407854/feeds.json?results=2",
                    success: function (result) {
                        //console.log(result['feeds'][0].created_at);
                        var date = result['feeds'][0].created_at;
                        document.getElementById("tdate").innerHTML = formatDate(date);

                        var peroftank = result['feeds'][0].field1;
                        document.getElementById("tper").innerHTML = peroftank;
                        
                        document.getElementById("<%=chart1value.ClientID%>").value = peroftank;

                        var val1 = peroftank / 100;
                        

                        var tankvallavel = document.getElementById("<%=chartlabelvalue.ClientID %>").value.split(',');
                        var tank1data = document.getElementById("<%=charttank1.ClientID %>").value.split(',');
                        var ctx = document.getElementById("chart").getContext('2d');
                        var myChart = new Chart(ctx, {
                            type: 'pie',
                            data: {
                                labels: ["Filled", "Empty"],
                                datasets: [{
                                    backgroundColor: [

                                      "#3498db",
                                      "#f1c40f",
                                      "#2ecc71",
                                      "#e74c3c"
                                    ],
                                    data: [peroftank, 100 - peroftank]
                                }]
                            }
                        });





                    }
                })
            }
            
        </script>



        <!--
            Codebase JS Core

            Vital libraries and plugins used in all pages. You can choose to not include this file if you would like
            to handle those dependencies through webpack. Please check out assets/_es6/main/bootstrap.js for more info.

            If you like, you could also include them separately directly from the assets/js/core folder in the following
            order. That can come in handy if you would like to include a few of them (eg jQuery) from a CDN.

            assets/js/core/jquery.min.js
            assets/js/core/bootstrap.bundle.min.js
            assets/js/core/simplebar.min.js
            assets/js/core/jquery-scrollLock.min.js
            assets/js/core/jquery.appear.min.js
            assets/js/core/jquery.countTo.min.js
            assets/js/core/js.cookie.min.js
        -->
        <script src="assets/js/codebase.core.min.js"></script>

        <!--
            Codebase JS

            Custom functionality including Blocks/Layout API as well as other vital and optional helpers
            webpack is putting everything together at assets/_es6/main/app.js
        -->
        <script src="assets/js/codebase.app.min.js"></script>

        <!-- Page JS Plugins -->
        <script src="assets/js/plugins/sparkline/jquery.sparkline.min.js"></script>
        <script src="assets/js/plugins/easy-pie-chart/jquery.easypiechart.min.js"></script>
        <script src="assets/js/plugins/chartjs/Chart.bundle.min.js"></script>
        <script src="assets/js/plugins/flot/jquery.flot.min.js"></script>
        <script src="assets/js/plugins/flot/jquery.flot.pie.min.js"></script>
        <script src="assets/js/plugins/flot/jquery.flot.stack.min.js"></script>
        <script src="assets/js/plugins/flot/jquery.flot.resize.min.js"></script>

        <!-- Page JS Code -->
        <script src="assets/js/pages/be_comp_charts.min.js"></script>

        <!-- Page JS Helpers (Easy Pie Chart Plugin) -->
        <script>jQuery(function () { Codebase.helpers('easy-pie-chart'); });</script>
</asp:Content>
