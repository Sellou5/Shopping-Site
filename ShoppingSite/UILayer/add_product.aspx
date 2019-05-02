<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2/Site2.Master" AutoEventWireup="true" CodeBehind="showProducts.aspx.cs" Inherits="ShoppingSite.UILayer.showProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    Add Product
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <h3 style="color: black; font-size: xx-large; /*font-style: italic;*/ font-family: 'MS Serif';">Add Product Page</h3>
    <table style="width: 903px; height: 433px">
        <tr>
            <td style="color:black; /*font-style: italic;*/ font-size: x-large; text-transform: capitalize; width: 223px;">Product Name</td>
            <td>
                <asp:TextBox ID="txt_name" runat="server" Height="23px" Width="203px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txt_name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: black; /*font-style: italic;*/ font-size: x-large; text-transform: capitalize; width: 223px;">Product image</td>
            <td>
                <asp:FileUpload ID="fu_admin" runat="server" Height="36px" Width="304px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="fu_admin"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: black; /*font-style: italic;*/ font-size: x-large; text-transform: capitalize; width: 223px;">Product price</td>
            <td>
                <asp:TextBox ID="txt_price" runat="server" Height="30px" Width="207px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txt_price"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: black; /*font-style: italic;*/ font-size: x-large; text-transform: capitalize; width: 223px;">Product offer</td>
            <td>
                <asp:TextBox ID="txt_offer" runat="server" Height="26px" Width="211px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: black; /*font-style: italic;*/ font-size: x-large; text-transform: capitalize; width: 223px;">Product category</td>
            <td>
                <asp:DropDownList ID="ddl_cat" runat="server" Height="49px" Width="118px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="ddl_cat"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: black; /*font-style: italic;*/ font-size: x-large; text-transform: capitalize; width: 223px;">Product Description</td>
            <td>
                <asp:TextBox ID="txt_desc" runat="server" Height="28px" Width="221px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txt_desc"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="color: black; /*font-style: italic;*/ font-size: x-large; text-transform: capitalize; width: 223px;">Product quantity</td>
            <td>
                <asp:TextBox ID="txt_quantity" runat="server" Height="23px" Width="222px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txt_quantity"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btn_upload" runat="server" OnClick="btn_upload_Click" Text="upload" CssClass="upload_btn"
                    ForeColor="white"
                    BorderStyle="None"
                    Style="border-radius: 10px; background-color: #005ccc; transition: all .5s ease-in-out;" Height="45px" Width="127px"
                    Font-Size="X-Large" UseSubmitBehavior="False" />
            </td>
        </tr>
    </table>
    <p>
        <asp:Label ID="lbl_msg" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
    </p>
</asp:Content>
