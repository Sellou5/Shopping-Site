<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3/Site3.Master" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="ShoppingSite.MasterPage3.ViewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    ViewProducts

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Logo" runat="server">
     <h1><a href="index.html">Electronic Store<span>Your stores. Your place.</span></a></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavigationBar" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="DataArea" runat="server">
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
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
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="txt_search" runat="server" Height="33px" Width="453px"></asp:TextBox>
                <asp:Button ID="btn_search" runat="server"  OnClick="btn_search_Click" Font-Size="X-Large" ForeColor="white" Height="49px" Style="border-radius: 30px; background-color: #005ccc; transition: all .5s ease-in-out;" Text="Search" UseSubmitBehavior="False" Width="181px"  />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DataList ID="dl_view" runat="server" HorizontalAlign="Center" RepeatColumns="4" RepeatDirection="Horizontal" OnSelectedIndexChanged="dl_view_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" DataKeyField="id">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <ItemTemplate>
                        <table class="auto-style2" style="border-spacing: 0;">
                            <tbody class="auto-style3">
                                <tr>
                                    <td class="auto-style6">
                                       <a href="Product_Details.aspx?id=<%#Eval("id") %>"> <asp:Image ID="Image1" runat="server" Height="154px" ImageUrl='<%# Eval("image") %>' Width="202px" /></a>
                                    </td>
                                    <td class="auto-style8" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Label ID="lbl_name" runat="server" Font-Size="30pt" ForeColor="#333399" Text='<%# Eval("name") %>'></asp:Label>
                                    </td>
                                    <td colspan="2" rowspan="2" style="font-size: x-large">&nbsp;&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style6" style="font-size: x-large">Price:&nbsp;
                                        <asp:Label ID="Label3" runat="server" Font-Size="25pt" Text='<%# Eval("price") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6" style="font-size: x-large">Offer :<asp:Label ID="Label4" runat="server" Font-Size="25pt" Text='<%# Eval("offer") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style6" style="font-size: x-large">Quantit<asp:Label ID="Label5" runat="server" Font-Size="25pt" Text='<%# Eval("quantity") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style6" style="font-size: x-large">Category:<asp:Label ID="Label6" runat="server" Font-Size="25pt" ForeColor="#3333CC" Text='<%# Eval("CatName") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style6" style="font-size: x-large">
                                        <asp:Button ID="btn_addTOcart" runat="server" OnClick="btn_addTOcart_Click" BorderStyle="None" Font-Size="X-Large" ForeColor="white" Height="49px" Style="border-radius: 30px; background-color: #005ccc; transition: all .5s ease-in-out;" Text="Add to Cart" UseSubmitBehavior="False" Width="181px" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style6" style="font-size: x-large">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td class="auto-style11">&nbsp;</td>
                                </tr>
                            </tbody>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
