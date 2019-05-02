<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2/Site2.Master" AutoEventWireup="true" CodeBehind="ManageOrder.aspx.cs" Inherits="ShoppingSite.UILayer.ManageOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    Manage Orders
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;
    <table style="width: 100%; text-align:center; margin-left: 0px; margin-right: 0px; margin:auto;">
        <tr>
            <td style="height: 41px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_masg_empty" runat="server" Font-Italic="True" Font-Size="XX-Large" ForeColor="#666666"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 187px" >
                <asp:GridView ID="gv_vieworder" runat="server" AutoGenerateColumns="False" BorderColor="Maroon" BorderStyle="Outset" BorderWidth="3px" CellPadding="2" CellSpacing="1" CssClass="auto-style1" DataKeyNames="id" Font-Names="Bookman Old Style" Font-Size="Large" ForeColor="#333333" GridLines="None" Height="181px" OnRowCancelingEdit="gv_vieworder_RowCancelingEdit" OnRowDeleting="gv_vieworder_RowDeleting" OnRowEditing="gv_vieworder_RowEditing" OnRowUpdating="gv_vieworder_RowUpdating" OnSelectedIndexChanged="gv_vieworder_SelectedIndexChanged" Width="559px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="User Id">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("userId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="proname" HeaderText="Prod Name" />
                        <asp:TemplateField HeaderText="Last Modified Date">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("lastModifiedDate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="price" HeaderText="Price" />
                        <asp:TemplateField HeaderText="Status">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddl_status" runat="server" Height="19px" Width="132px">
                                    <asp:ListItem>approved</asp:ListItem>
                                    <asp:ListItem>pending</asp:ListItem>
                                    <asp:ListItem>canceled</asp:ListItem>
                                    <asp:ListItem>delievered</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
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
            </td>
        </tr>
        <tr>
            <td style="height: 26px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_msg" runat="server" Font-Italic="True" Font-Size="X-Large" ForeColor="Maroon"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 62px">&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
