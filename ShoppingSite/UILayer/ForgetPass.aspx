<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1/Site1.Master" AutoEventWireup="true" CodeBehind="ForgetPass.aspx.cs" Inherits="ShoppingSite.ForgetPass1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Forget Password
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="main-w3layouts-form">
        <h2>Enter your E-mail</h2>
		<!-- main-w3layouts-form -->
		<form action="#" method="post">
			<div class="fields-w3-agileits">
				<span class="fa fa-user" aria-hidden="true"></span>
				&nbsp;<asp:TextBox ID="txt_mail" placeholder="Enter you E-mail" runat="server"></asp:TextBox>
			    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_mail" ErrorMessage="Invalid Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
			    <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_mail" ErrorMessage="*"></asp:RequiredFieldValidator>
            </div>
			<div class="remember-section-wthree">
				<ul>
					<li>
					</li>
				</ul>
				<div class="clear"> 
                    <asp:Label ID="lbl_msg" runat="server" ForeColor="White"></asp:Label>
                    <br />
                    <br />
                    <asp:LinkButton ID="lbtn_login" runat="server" Font-Size="Large" Font-Underline="True" ForeColor="White" OnClick="LinkButton1_Click" ValidationGroup="ssss">Login</asp:LinkButton>
                </div>
			</div>
			<asp:Button ID="btn_email" runat="server" Text="Enter" OnClick="btn_email_Click" Width="145px" BackColor="#6699FF" BorderStyle="Groove" Font-Size="X-Large" Height="40px" />
&nbsp;</form>
		<!--// main-w3layouts-form -->
		<!-- Social icons -->
		<!--// Social icons -->
	</div>

</asp:Content>
