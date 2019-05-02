<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ShoppingSite.UILayer.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
Contact Us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="main-w3layouts-form" style="width: 64%; height: 548px;">
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
        <h2>Contact Us</h2>
        <h2>&nbsp;</h2>
		<!-- main-w3layouts-form -->
		<form action="#" method="post">
			<div class="fields-w3-agileits">
                <%--<span class="fa fa-key" aria-hidden="true"></span>--%>
				
			    <asp:TextBox ID="txt_msg" placeholder="Enter your message here ........" runat="server" TextMode="MultiLine" Height="187px" Width="673px"></asp:TextBox>
				
			    <br />
                <br />
                    <asp:Label ID="lbl_msg" runat="server" ForeColor="White"></asp:Label>
                <br />
				
			</div>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_msg" ErrorMessage="RequiredFieldValidator" ForeColor="White">Please Enter your message</asp:RequiredFieldValidator>
			<div class="remember-section-wthree">
				<ul>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
					</ul>
				<div class="clear" id="btn_register"> 
                    <br />
                    <asp:Button ID="btn_send" runat="server" style="margin-right: 0px" Text="Send"  Width="145px" BackColor="#6699FF" BorderStyle="Groove" Font-Size="X-Large" Height="40px" OnClick="btn_send_Click" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
&nbsp;<br />
                </div>
			</div>
			
		</form>
		<!--// main-w3layouts-form -->
		<!-- Social icons -->
		<!--// Social icons -->
	</div>
</asp:Content>
