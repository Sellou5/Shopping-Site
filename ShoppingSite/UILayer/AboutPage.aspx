<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3/Site3.Master" AutoEventWireup="true" CodeBehind="AboutPage.aspx.cs" Inherits="ShoppingSite.UILayer.AboutPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    About us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Logo" runat="server">
    <p style="font-size: x-large; color: #0033CC">
        About Us</p>
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationBar" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="DataArea" runat="server">
	<div class="about">
        <div class="container">  
            <div >
            <asp:TreeView ID="TreeView1" runat="server" ForeColor="Black" ImageSet="XPFileExplorer" NodeIndent="15" Width="251px">
                <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
                <Nodes>
                    <asp:TreeNode NavigateUrl="~/UILayer/Home.aspx" Text="Home" Value="Home">
                        <asp:TreeNode NavigateUrl="~/UILayer/LoginPage.aspx" Text="Login" Value="Login"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/UILayer/Registeration.aspx" Text="Registeration" Value="Registeration"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/UILayer/UserProfile.aspx" Text="Profile" Value="Profile">
                            <asp:TreeNode NavigateUrl="~/UILayer/EditProfile.aspx" Text="Edit Profile" Value="Edit Profile"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/UILayer/ChangePass.aspx" Text="Change Password" Value="Change Password"></asp:TreeNode>
                        </asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/UILayer/ViewProducts.aspx" Text="View Products" Value="View Products"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/UILayer/Contact.aspx" Text="Contact Us" Value="Contact Us"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/UILayer/ViewCart.aspx" Text="View Cart" Value="View Cart"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/UILayer/AboutPage.aspx" Text="About Us" Value="About Us"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/UILayer/ShopPolic.aspx" Text="Shop Policies" Value="Shop Policies"></asp:TreeNode>
                </Nodes>
                <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" HorizontalPadding="2px" NodeSpacing="0px" VerticalPadding="2px" />
                <ParentNodeStyle Font-Bold="False" ForeColor="Black" />
                <RootNodeStyle ForeColor="Black" />
                <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px" VerticalPadding="0px" />
            </asp:TreeView>
                   </div>
        </div>
        <br />
        <br />


            <div class="w3ls_about_grids">
                    Welcome to our Online Shopping for Electronics.</div>
        </div>
    </div>
	<!-- //about --> 
	<!-- team -->
	<div class="team">
        <div class="container">
            <h3>Meet Our Team</h3>
            <div class="wthree_team_grids">
                <div class="col-md-3 wthree_team_grid">
                    
                    <h4>Ahmed Sellou <span style="font-weight: 500; font-size: 0.8em; color: #212121">Team Leader</span></h4>
                    <div class="agileits_social_button">
                        <ul>
                            <li><a class="facebook" href="http://www.facebook.com/Ahmed.sellou"></a></li>
                            <li><a class="twitter" href="http://www.twitter.com/Ahmed_sellou"></a></li>
                            <li><a class="google" href="#"></a></li>
                            <li><a class="pinterest" href="#"></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 wthree_team_grid">
                    <h4>Amany Eldesoky <span style="font-weight: 500; font-size: 0.8em; color: #212121">Member</span></h4>
                    <div class="agileits_social_button">
                        <ul>
                            <li><a class="facebook" href="#"></a></li>
                            <li><a class="twitter" href="#"></a></li>
                            <li><a class="google" href="#"></a></li>
                            <li><a class="pinterest" href="#"></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 wthree_team_grid">
                    <h4>Eman Sabry <span>Member</h4>
                    <div class="agileits_social_button">
                        <ul>
                            <li><a class="facebook" href="#"></a></li>
                            <li><a class="twitter" href="#"></a></li>
                            <li><a class="google" href="#"></a></li>
                            <li><a class="pinterest" href="#"></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 wthree_team_grid">
                    <h4>Hend Mohamed <span>Member</span></h4>
                    <div class="agileits_social_button">
                        <ul>
                            <li><a class="facebook" href="#"></a></li>
                            <li><a class="twitter" href="#"></a></li>
                            <li><a class="google" href="#"></a></li>
                            <li><a class="pinterest" href="#"></a></li>
                        </ul>
                    </div>
                </div>
                <div class="clearfix">
                <div class="col-md-3 wthree_team_grid">
                    <h4>Alyaa Ebrahim<span style="font-weight: 500; font-size: 0.8em; color: #212121">Member</span></h4>
                    <div class="agileits_social_button">
                        <ul>
                            <li><a class="facebook" href="#"></a></li>
                            <li><a class="twitter" href="#"></a></li>
                            <li><a class="google" href="#"></a></li>
                            <li><a class="pinterest" href="#"></a></li>
                        </ul>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
	<!-- //team -->
	<!-- team-bottom -->
	<div class="team-bottom">
        <div class="container">
            <h3>Are You Ready For Deals?</h3>
        </div>
    </div>
	<!-- //team-bottom -->
	<!-- newsletter -->
	<!-- //newsletter -->
	<!-- footer -->
	<!-- //footer -->  
	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
        w3ls.render();

        w3ls.cart.on('w3sb_checkout', function (evt) {
        	var items, len, i;

        	if (this.subtotal() > 0) {
        		items = this.items();

        		for (i = 0, len = items.length; i < len; i++) { 
        		}
        	}
        });
    </script>  
	<!-- //cart-js --> 
    </span> 
</asp:Content>
