<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2/Site2.Master" AutoEventWireup="true" CodeBehind="ListProduct.aspx.cs" Inherits="ShoppingSite.UILayer.ListProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    Products
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="width: 249px">
                <asp:TextBox ID="txt_search" runat="server" Width="401px" Height="33px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btn_search" runat="server" OnClick="btn_search_Click" Text="Search" ForeColor="white"
                    BorderStyle="None"
                    Style="border-radius: 40px; background-color: #005ccc; transition: all .5s ease-in-out;" Height="45px" Width="127px"
                    Font-Size="X-Large" />
            </td>
        </tr>
    </table>
    <br />
  
        <table style="width: 100%">
            <tr>
                <td>&nbsp;</td>
                <td>
  
        <asp:GridView ID="gv_product" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id" ForeColor="Black" OnRowCancelingEdit="gv_product_RowCancelingEdit" OnRowDeleting="gv_product_RowDeleting" OnRowEditing="gv_product_RowEditing" OnRowUpdating="gv_product_RowUpdating" style="margin-left: 0px">
            <Columns>
                <asp:TemplateField HeaderText="productName">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_name_edit" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>' Font-Size="Large" ForeColor="#FF3300"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="image">
                    <ItemTemplate>
                        <asp:Image ID="img_product" runat="server" Height="200px" ImageUrl='<%# Eval("image") %>' Width="200px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="price">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_price_edit" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("price") %>' Font-Size="Large" ForeColor="#FF3300"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="category">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddl_cat_edit" runat="server">
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("catName") %>' Font-Size="Large" ForeColor="#FF3300"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="offer">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_offer_edit" runat="server" Text='<%# Bind("offer") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("offer") %>' Font-Size="Large" ForeColor="#FF3300"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_desc_edit" runat="server" Text='<%# Bind("description") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("description") %>' Font-Size="Large" ForeColor="#FF3300"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_quantity_edit" runat="server" Text='<%# Bind("quantity") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("quantity") %>' Font-Size="Large" ForeColor="#FF3300"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Font-Size="Large" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Font-Size="Large" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Edit" Font-Size="Large" Text="Edit"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm(&quot;Are you sure to delete this member?&quot;);" Text="Delete" Font-Size="Large"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>

                </td>
                <td>&nbsp;</td>
            </tr>
</table>

    <p>
    </p>
</asp:Content>
