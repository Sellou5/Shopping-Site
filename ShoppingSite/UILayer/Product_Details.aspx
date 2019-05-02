<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3/Site3.Master" AutoEventWireup="true" CodeBehind="Product_Details.aspx.cs" Inherits="ShoppingSite.UILayer.Product_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Product Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Logo" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationBar" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="DataArea" runat="server">

    <table class="nav-justified">
        <tr>
            <td style="height: 41px; width: 132px">
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
            </td>
            <td style="height: 41px"></td>
            <td style="height: 41px"></td>
            <td style="height: 41px"></td>
            <td style="height: 41px"></td>
        </tr>
        <tr>
            <td style="width: 132px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Repeater ID="r1" runat="server">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div style="height: 300px; width: 700px; border-style: solid; border-width: 1px;">
                            <div style="height: 300px; width: 200px; float: left; border-style: solid; border-width: 1px;">
                                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("image") %>' Width="202px" />
                            </div>
                            <div style="height: 300px; width: 495px; float: left; border-style: solid; border-width: 1px; color: #800000; font-size: x-large; font-weight: normal; font-family: SimSun;">
                                item Name=<%#Eval("name") %><br />item Desctiption=<%#Eval("description") %><br />item Price=<%#Eval("price") %><br />item Offer=<%#Eval("offer") %><br />item Quantity=<%#Eval("quantity") %><br /><br /><br /><br /><br /><asp:Button ID="btn_return" runat="server" OnClick="btn_return_Click" BorderStyle="None" Font-Size="X-Large" ForeColor="white" Height="49px" Style="border-radius: 30px; background-color: #005ccc; transition: all .5s ease-in-out;" Text="Return" UseSubmitBehavior="False" Width="181px" />
                            </div>
                        </div>
                    </ItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:Repeater>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 132px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 132px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
