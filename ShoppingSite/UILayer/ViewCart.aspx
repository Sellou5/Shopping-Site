<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3/Site3.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="ShoppingSite.UILayer.ViewCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    View Cart
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Logo" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationBar" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ForeColor="white"  Margin="15px"  Text="History" Font-Bold="True" Font-Italic="True" Font-Size="20px" Font-Underline="True"></asp:LinkButton>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="DataArea" runat="server">
    <table class="nav-justified">
        <tr>
            <td>
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
    <asp:GridView ID="gv_cart" runat="server"  Width="100%" Margin="auto" CellPadding="4" DataKeyNames="id" ForeColor="#333333" GridLines="None" Height="171px" OnRowDeleting="gv_cart_RowDeleting">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton2" runat="server" Style="text-align:center;display:block;margin:auto;background-color:#5D7B9D;color:white;margin-top:10px;padding:5px"  OnClick="LinkButton2_Click">Submit</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
