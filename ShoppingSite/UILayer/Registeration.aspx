<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1/Site1.Master" AutoEventWireup="true" CodeBehind="Registeration.aspx.cs" Inherits="ShoppingSite.UILayer.Registeration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Registeration
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
        <h2>Register</h2>
		<!-- main-w3layouts-form -->
		<form action="#" method="post">
			
			<div class="fields-w3-agileits">
			    <asp:TextBox ID="txt_fname" placeholder="Enter your First Name" runat="server"></asp:TextBox>
			    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_fname" ErrorMessage="*"></asp:RequiredFieldValidator>
			</div>
            <div class="fields-w3-agileits">
			    <asp:TextBox ID="txt_lname" placeholder="Enter your Last Name" runat="server"></asp:TextBox>
			    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_lname" ErrorMessage="*"></asp:RequiredFieldValidator>
			</div>
            <div class="fields-w3-agileits">
			    <asp:TextBox ID="txt_pass" placeholder="Enter Password" runat="server" TextMode="Password"></asp:TextBox>
			    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_pass" ErrorMessage="*"></asp:RequiredFieldValidator>
			</div>
            <div class="fields-w3-agileits" style="height: 64px">
			    <asp:TextBox ID="txt_confirmPass" placeholder="Confirm Password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pass" ControlToValidate="txt_confirmPass" ErrorMessage="*" ForeColor="White" Font-Size="Smaller" ></asp:CompareValidator>
			    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_confirmPass" ErrorMessage="*" Width="16px" Font-Size="Smaller"></asp:RequiredFieldValidator>


                <br />

			</div>
            <div class="fields-w3-agileits">
			    <asp:TextBox ID="txt_userName" placeholder="Enter your User Name" runat="server"></asp:TextBox>
			    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_userName" ErrorMessage="*"></asp:RequiredFieldValidator>
			</div>
            <div class="fields-w3-agileits">
			    <asp:TextBox ID="txt_mail"  placeholder="Enter your E-mail" runat="server"></asp:TextBox>
			    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_mail" ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
			    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_userName" ErrorMessage="*"></asp:RequiredFieldValidator>
			</div>
            <div class="fields-w3-agileits">
			    <asp:TextBox ID="txt_city" placeholder="Enter your City" runat="server"></asp:TextBox>
			    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_city" ErrorMessage="*"></asp:RequiredFieldValidator>
			</div>
            <div class="fields-w3-agileits">
			    <asp:TextBox ID="txt_phone" placeholder="Enter Your Phone" runat="server"></asp:TextBox>
			    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_phone" ErrorMessage="*"></asp:RequiredFieldValidator>
			</div>
            <div class="fields-w3-agileits">
			    <asp:FileUpload ID="fu_image" runat="server" Width="282px" ForeColor="White" />
			    <br />
                <br />
			</div>
             <div class="fields-w3-agileits" style="align-content:center">
			     <asp:Button ID="btn_reg" runat="server" Text="Register"  OnClick="btn_reg_Click" Width="145px" BackColor="#6699FF" BorderStyle="Groove" Font-Size="X-Large" Height="40px"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="btn_login" runat="server" Text="Login" Width="145px" BackColor="#6699FF" BorderStyle="Groove" Font-Size="X-Large" Height="40px" OnClick="btn_login_Click" ValidationGroup="sssss"/>
			</div>
			&nbsp;</form>
		<!--// main-w3layouts-form -->
		<!-- Social icons -->
		<!--// Social icons -->
	    <asp:Label ID="lbl_msg" runat="server" Font-Size="X-Large" ForeColor="White"></asp:Label>
	</div>

    <br />

</asp:Content>
