<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1/Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ShoppingSite.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Login 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
	<div class="main-w3layouts-form">
        <h2>
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
                    <asp:TreeNode NavigateUrl="~/UILayer/AboutPage.aspx" Text="About Us" Value="About Us"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/UILayer/ShopPolic.aspx" Text="Shop Policies" Value="Shop Policies"></asp:TreeNode>
                </Nodes>
                <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="White" HorizontalPadding="2px" NodeSpacing="0px" VerticalPadding="2px" />
                <ParentNodeStyle Font-Bold="False" ForeColor="White" />
                <RootNodeStyle ForeColor="White" />
                <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px" VerticalPadding="0px" />
            </asp:TreeView>
        </h2>
		<h2>Login to your account</h2>
		<!-- main-w3layouts-form -->
		<form action="#" method="post">
			<div class="fields-w3-agileits">
				<span class="fa fa-user" aria-hidden="true"></span>
				
			    <asp:TextBox ID="txt_name" placeholder="E-mail" runat="server"></asp:TextBox>
				
			    <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="*"></asp:RequiredFieldValidator>
				
			</div>
			<div class="fields-w3-agileits">
				<span class="fa fa-key" aria-hidden="true"></span>
				
			    <asp:TextBox ID="txt_pass" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
				
			    <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pass" ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
                <br />
				
			</div>
			<div class="remember-section-wthree">
				<ul>
					<asp:CheckBox ID="ch_rememberme" runat="server" ForeColor="White" Text="Remember Me" />
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
					<asp:LinkButton ID="lbtn_forgetpass" runat="server" OnClick="lbtn_forgetpass_Click" ValidationGroup="dddd">Forget Password ?</asp:LinkButton>
				</ul>
				<div class="clear" id="btn_register"> 
                    <br />
                    <asp:Button ID="btn_login" runat="server" style="margin-right: 0px" Text="Login" OnClick="btn_login_Click" Width="145px" BackColor="#6699FF" BorderStyle="Groove" Font-Size="X-Large" Height="40px" />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lbl_msg" runat="server" ForeColor="White"></asp:Label>
                    <br />
                    <br />
&nbsp;<asp:Button ID="btn_register" runat="server" OnClick="btn_register_Click" Text="Register" ValidationGroup="rrrrr" Width="145px" BackColor="#6699FF" BorderStyle="Groove" Font-Size="X-Large" Height="40px" />
                    <br />
                </div>
			</div>
			
		</form>
		<!--// main-w3layouts-form -->
		<!-- Social icons -->
		<!--// Social icons -->
	</div>

</asp:Content>
