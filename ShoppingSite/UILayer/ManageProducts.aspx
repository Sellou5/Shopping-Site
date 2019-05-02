<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2/Site2.Master" AutoEventWireup="true" CodeBehind="ManageProducts.aspx.cs" Inherits="ShoppingSite.UILayer.ManageProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    Manage Products
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
    <tr>
        <td style="width: 254px">
                <asp:Button ID="btn_addProduct" runat="server" Text="Add Product" Width="165px" BackColor="#66ff33" BorderStyle="Groove" Font-Size="X-Large" Height="40px" OnClick="btn_user_Click" />
                <br />
            </td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Add Category" Width="165px" BackColor="#66ff33" BorderStyle="Groove" Font-Size="X-Large" Height="40px" OnClick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td style="width: 254px">
            <asp:Button ID="Button2" runat="server" Text="View Products" Width="165px" BackColor="#66ff33" BorderStyle="Groove" Font-Size="X-Large" Height="40px" OnClick="Button2_Click"/>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
