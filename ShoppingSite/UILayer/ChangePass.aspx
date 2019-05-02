<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1/Site1.Master" AutoEventWireup="true" CodeBehind="ChangePass.aspx.cs" Inherits="ShoppingSite.UILayer.ChangePass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Change Password
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
	<div class="main-w3layouts-form" style="width: 46%">
            <asp:TreeView ID="TreeView1" runat="server" ForeColor="White" ImageSet="XPFileExplorer" NodeIndent="15" Width="251px">
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
                    <asp:TreeNode NavigateUrl="~/UILayer/Contact.aspx" Text="Contact Us" Value="Contact Us"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/UILayer/ViewCart.aspx" Text="View Cart" Value="View Cart"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/UILayer/AboutPage.aspx" Text="About Us" Value="About Us"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/UILayer/ShopPolic.aspx" Text="Shop Policies" Value="Shop Policies"></asp:TreeNode>
                </Nodes>
                <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="White" HorizontalPadding="2px" NodeSpacing="0px" VerticalPadding="2px" />
                <ParentNodeStyle Font-Bold="False" ForeColor="White" />
                <RootNodeStyle ForeColor="White" />
                <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px" VerticalPadding="0px" />
            </asp:TreeView>
        <br />
        <h2>Change your Password here</h2>
		<!-- main-w3layouts-form -->
		<form action="#" method="post">
			<div class="fields-w3-agileits">
				&nbsp;<asp:TextBox ID="txt_old" placeholder="Enter old Password" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_old" ErrorMessage="*"></asp:RequiredFieldValidator>
            </div>
            <div class="fields-w3-agileits">
				&nbsp;<asp:TextBox ID="txt_new1" placeholder="Enter new Password" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_new1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </div>
            <div class="fields-w3-agileits" style="height: 55px">
				&nbsp;<asp:TextBox ID="txt_new2" placeholder="Confirm new Password" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_new2" ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                <asp:Label ID="lbl_change" runat="server"></asp:Label>
            </div>
			&nbsp;</form>
		<!--// main-w3layouts-form -->
		<!-- Social icons -->
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_new1" ControlToValidate="txt_new2" ErrorMessage="Password Not Matched" ForeColor="White"></asp:CompareValidator>
		<div class="footer_grid-w3ls">
		    <asp:Button ID="btn_pass" runat="server" Text="Confirm" OnClick="btn_pass_Click" Width="145px" BackColor="#6699FF" BorderStyle="Groove" Font-Size="X-Large" Height="40px" />
		</div>
		<!--// Social icons -->
	</div>

</asp:Content>
