<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2/Site2.Master" AutoEventWireup="true" CodeBehind="ManageUser.aspx.cs" Inherits="ShoppingSite.UILayer.ManageUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    Manage Users
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gv_user" runat="server" AutoGenerateColumns="False" BorderColor="#663300" BorderStyle="Groove" BorderWidth="3px" CellPadding="4" DataKeyNames="id" OnRowCancelingEdit="gv_user_RowCancelingEdit" OnRowDeleting="gv_user_RowDeleting" OnRowEditing="gv_user_RowEditing" OnRowUpdating="gv_user_RowUpdating" Font-Size="Medium" ForeColor="#333333" GridLines="None" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="First Name">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("fName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last Name">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("lName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="E-mail">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User Name">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("userName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Is Admin">
                <EditItemTemplate>
                    <asp:DropDownList ID="ddl_isadmin" runat="server">
                        <asp:ListItem Value="True">True</asp:ListItem>
                        <asp:ListItem Value="False">False</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("isAdmin") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status">
                <EditItemTemplate>
                    <asp:DropDownList ID="ddl_status" runat="server">
                        <asp:ListItem Value="Blocked">Blocked</asp:ListItem>
                        <asp:ListItem Value="Approved">Approved</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#333333" HorizontalAlign="Center" BackColor="#FFCC66" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
</asp:Content>
