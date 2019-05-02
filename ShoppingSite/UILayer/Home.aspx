<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3/Site3.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ShoppingSite.MasterPage3.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Logo" runat="server">
     <h1><a href="index.html">ITI Online Shopping<span>Your stores. Your place.</span></a></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationBar" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" OnClick="LinkButton1_Click">View Cart</asp:LinkButton>
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
    <br />
    <asp:Label ID="lbl_msg" runat="server"></asp:Label>
    <asp:GridView ID="gv_home" runat="server" AutoGenerateColumns="False" CellPadding="100" GridLines="Horizontal" ForeColor="#333333" CellSpacing="50" BorderStyle="Solid" HorizontalAlign="Center" DataKeyNames="id" OnRowCommand="gv_home_RowCommand" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:ImageField DataImageUrlField="image">
                <ControlStyle Height="300px" Width="300px" />
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:ImageField>
            <asp:BoundField DataField="name" HeaderText="Product">
            <ItemStyle VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="offer" HeaderText="Offer">
            <ItemStyle VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="Price">
            <ItemStyle VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:ButtonField Text="More Details" CommandName="details" >
            <ControlStyle ForeColor="Blue" />
            </asp:ButtonField>
            <asp:ButtonField ButtonType="Image" ImageUrl="~/Pic/add-to-cart-button.png" Text="Add to cart" CommandName="addcart" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</asp:Content>
