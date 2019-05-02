<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2/Site2.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="ShoppingSite.UILayer.AdminPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    Admin Panel
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="width: 191px">
                <asp:Button ID="btn_user" runat="server" Text="Users" Width="145px" BackColor="#66ff33" BorderStyle="Groove" Font-Size="X-Large" Height="40px" OnClick="btn_user_Click" />
            </td>
            <td style="width: 161px">
                <asp:Button ID="btn_user0" runat="server" Text="Products" Width="145px" BackColor="#66ff33" BorderStyle="Groove" Font-Size="X-Large" Height="40px" style="margin-left: 95px" OnClick="btn_user0_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 285px">&nbsp;</td>
                        <td style="width: 148px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 285px">
                <asp:Button ID="btn_Orders" runat="server" Text="Orders" Width="145px" BackColor="#66ff33" BorderStyle="Groove" Font-Size="X-Large" Height="40px" OnClick="btn_Orders_Click" />
                        </td>
                        <td id="btn_Msg" style="width: 148px">
                <asp:Button ID="btn_msg" runat="server" Text="Messages" Width="145px" BackColor="#66ff33" BorderStyle="Groove" Font-Size="X-Large" Height="40px" OnClick="btn_msg_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 285px">
                            &nbsp;</td>
                        <td id="btn_Msg" style="width: 148px">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 285px">
                            &nbsp;</td>
                        <td id="btn_Msg" style="width: 148px">
                            <asp:Button ID="Button1" runat="server" Text="Logout" Width="145px" BackColor="#66ff33" BorderStyle="Ridge" Font-Size="X-Large" Height="40px" OnClick="Button1_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        </table>
</asp:Content>
