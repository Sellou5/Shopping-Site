<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1/Site1.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="ShoppingSite.UILayer.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Edit Profile
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
                <td colspan="4">
                    <asp:FileUpload ID="up_image" runat="server" Style="width:200px;height:30px" />
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF; font-weight: 500;  font-size: large; float: left; padding-left:100px;padding-top:5px;padding-top:5px" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First Name:&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_fname" runat="server" Style="margin-top:10px;border-radius:5px" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF; font-weight: 500; font-size: large; float: left;padding-left:100px;padding-top:5px;padding-top:5px" colspan="4" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name:&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_lname" runat="server" Height="30px" Width="200px" Style="background-color:rgba(1,1,1,.5);border-radius:5px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   </tr>
            <tr>
                <td style="color: #FFFFFF; font-weight: 500; font-size: large; float: left; padding-left:100px;padding-top:5px" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Name:&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_username" runat="server" Height="30px" Width="200px" Style="border-radius:5px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF; font-weight: 500; font-size: large; float: left; padding-left:100px" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_email" runat="server" Height="30px" Width="200px" Style="border-radius:5px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF; font-weight: 500; font-size: large; float: left; padding-left:100px" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_add" runat="server" Height="30px" Width="200px" Style="border-radius:5px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF; font-weight: 500; font-size: large; float: left; padding-left:100px" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_phone" runat="server" Height="30px" Width="200px" Style="border-radius:5px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Button ID="btn_update" runat="server" Text="Save Data" CssClass="profile_but" OnClick="btn_update_Click" Width="145px" BackColor="#6699FF" BorderStyle="Groove" Font-Size="X-Large" Height="40px"/>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="20px"  Text-Align="center" ForeColor="White" Padding-Top="50px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>


        </div>

</asp:Content>
