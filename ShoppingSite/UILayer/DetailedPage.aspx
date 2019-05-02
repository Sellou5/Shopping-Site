<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3/Site3.Master" AutoEventWireup="true" CodeBehind="DetailedPage.aspx.cs" Inherits="ShoppingSite.UILayer.DetailedPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Detailes About Product
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Logo" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationBar" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="DataArea" runat="server">

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
    <br />
    <asp:Label ID="lbl_name" runat="server" Font-Size="X-Large"></asp:Label>
    <br />
    <br />
    <table class="nav-justified">
        <tr>
            <td rowspan="11" style="width: 21px">
                <asp:Image ID="Image1" runat="server" Width="400px" Height="400px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Price"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_price" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Offer"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_offer" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_quantity" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Category"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_cat" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Description"></asp:Label>
            </td>
            <td rowspan="6">
                <asp:Label ID="lbl_desc" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <table class="nav-justified">
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lbtn_addtoCart" runat="server" OnClick="lbtn_addtoCart_Click">Add to cart</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_msg" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />

</asp:Content>
