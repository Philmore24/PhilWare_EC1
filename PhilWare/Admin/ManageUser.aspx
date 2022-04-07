<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUser.aspx.cs" Inherits="PhilWare.Admin.ManageUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="text-center">Manage Registered Accounts</h3>
    <br />
    <table class="nav-justified">
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="Order History" OnClick="Button3_Click" />
            </td>
        </tr>
    </table>
    <br />
    <br />

</asp:Content>
