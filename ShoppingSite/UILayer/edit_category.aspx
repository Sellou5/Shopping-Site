<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2/Site2.Master" AutoEventWireup="true" CodeBehind="edit_category.aspx.cs" Inherits="ShoppingSite.UILayer.edit_category1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    Edit Category
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:GridView ID="gv_category" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="id" ForeColor="Black" GridLines="Vertical" Height="418px" OnRowCancelingEdit="gv_category_RowCancelingEdit1" OnRowDeleting="gv_category_RowDeleting1" OnRowEditing="gv_category_RowEditing1" OnRowUpdating="gv_category_RowUpdating1" Width="626px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField HeaderText="name">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_cat" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>' Font-Size="Large" ForeColor="#FF3300"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" Font-Size="Large"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="True" CommandName="Update" Text="Update" Font-Size="Large"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" Font-Size="Large"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" Font-Size="Large"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" style="color: #FF0000; font-size: x-large;">Add Category&nbsp;</td>
                <td>
                    <asp:TextBox ID="txt_add_cat" Font-Bold="true" runat="server" CssClass="auto-style2" Height="28px" Width="257px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btn_add" runat="server" OnClick="btn_add_Click" Text="Add" ForeColor="white"
                        BorderStyle="None"
                        Style="border-radius: 10px; background-color: #005ccc; transition: all .5s ease-in-out;" Height="45px" Width="127px"
                        Font-Size="X-Large" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
