<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2/Site2.Master" AutoEventWireup="true" CodeBehind="AdminMsg.aspx.cs" Inherits="ShoppingSite.UILayer.AdminMsg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    Messages
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gv_msg" runat="server" AutoGenerateColumns="False" CellPadding="10" CellSpacing="10" DataKeyNames="id" ForeColor="#333333" GridLines="None" OnRowDeleting="gv_msg_RowDeleting">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="userName" HeaderText="User Name" />
            <asp:BoundField DataField="email" HeaderText="E-mail" />
            <asp:BoundField DataField="phone" HeaderText="Phone" />
            <asp:BoundField DataField="Emsg" HeaderText="Message" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
</asp:Content>
