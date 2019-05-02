<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1/Site1.Master" AutoEventWireup="true" 
    CodeBehind="UserProfile.aspx.cs" Inherits="ShoppingSite.UILayer.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="main-w3layouts-form" style="width: 46%;border-radius:20px">
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
        <h1></h1>

        <table style="width: 100%">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Image ID="img_profile" runat="server" style="Height:200px; Width:200px;border-radius:50%;padding-bottom:20px" Class="user-img" />
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF; font-weight: 500;  font-size: large; float: left; padding-left:100px;padding-top:5px;padding-top:5px" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First Name: <asp:Label ID="lbl_fname" runat="server" style=" padding-left:20px; color:#0026ff"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF; font-weight: 500; font-size: large; float: left;padding-left:100px;padding-top:5px;padding-top:5px" colspan="4" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbl_lname" runat="server" style="color:#0026ff"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF; font-weight: 500; font-size: large; float: left; padding-left:100px;padding-top:5px" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbl_username" runat="server" style="color:#0026ff"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF; font-weight: 500; font-size: large; float: left; padding-left:100px" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbl_mail" runat="server" style="color:#0026ff"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF; font-weight: 500; font-size: large; float: left; padding-left:100px" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbl_add" runat="server" style="color:#0026ff"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF; font-weight: 500; font-size: large; float: left; padding-left:100px" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbl_phone" runat="server" float="left" padding-left="10px" style="color:#0026ff"></asp:Label>
                </td>
            </tr>
            <tr> 
                <td style="color: #FFFFFF; font-weight: 500; font-size: large; float: left; padding-left:100px" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Status:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbl_state" runat="server" style="color:#0026ff"></asp:Label>
                </td>
            </tr>
            <tr> 
                <td style="color: #FFFFFF; font-weight: 500; font-size: large; float: left; padding-left:100px" colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Button ID="btn_edit_pass" runat="server" Text="Edit Password" CssClass="profile_but" OnClick="btn_edit_pass_Click" Width="170px" BackColor="#6699FF" BorderStyle="Groove" Font-Size="X-Large" Height="40px"/>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Button ID="btn_edit_profile" runat="server" Text="Edit Pofile" CssClass="profile_but"  OnClick="btn_edit_profile_Click" Width="170px" BackColor="#6699FF" BorderStyle="Groove" Font-Size="X-Large" Height="40px" />
                    </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Button ID="btn_logout" runat="server" Text="Logout" CssClass="profile_but" OnClick="btn_logout_Click" Width="170px" BackColor="#6699FF" BorderStyle="Groove" Font-Size="X-Large" Height="40px"/>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Button ID="btn_admin" runat="server" Text="Admin" Width="170px" BackColor="#6699FF" BorderStyle="Groove" Font-Size="X-Large" Height="40px" OnClick="btn_admin_Click" />
                </td>
            </tr>
        </table>


        </div>

</asp:Content>
