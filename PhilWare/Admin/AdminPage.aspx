<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="PhilWare.Admin.AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--Linked my CSS for the admin page --%>
    <link href="../CSS/AdminPageStyle.css" rel="stylesheet" />
    <div class="PageAdmin" style="text-align: center">
        <h1>Administration</h1>
        <hr />
        <h3>Add Product</h3>
        <table class="addtableStyle" align="center" style="width: 800px; font-size: large;">
            <tr>
                <td class="modal-sm" style="width: 91px">
                    <strong>
                        <asp:Label ID="LabelAddCategory" runat="server">Category:</asp:Label></strong></td>
                <td class="text-left">
                    <asp:DropDownList ID="DropDownAddCategory" runat="server"
                        ItemType="PhilWare.Models.Category"
                        SelectMethod="GetCategories" DataTextField="CategoryName"
                        DataValueField="CategoryID" Width="163px">
                    </asp:DropDownList>
                </td>


            </tr>
            <tr>
                <td class="modal-sm" style="width: 91px">
                    <strong>
                        <asp:Label ID="LabelAddName" runat="server">Name:</asp:Label></strong></td>
                <td class="text-left">
                    <asp:TextBox ID="AddProductName" runat="server" Width="184px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="* Product name required." ControlToValidate="AddProductName" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 91px">
                    <strong>
                        <asp:Label ID="LabelAddDescription" runat="server">Description:</asp:Label></strong></td>
                <td class="text-left">
                    <asp:TextBox ID="AddProductDescription" runat="server" Width="503px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="* Description required." ControlToValidate="AddProductDescription" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 91px">
                    <strong>
                        <asp:Label ID="LabelAddPrice" runat="server">Price:</asp:Label></strong></td>
                <td class="text-left">
                    <asp:TextBox ID="AddProductPrice" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="* Price required." ControlToValidate="AddProductPrice" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="* Must be a valid price without $." ControlToValidate="AddProductPrice" SetFocusOnError="True" Display="Dynamic" ValidationExpression="^[0-9]*(\.)?[0-9]?[0-9]?$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 91px">
                    <strong>
                        <asp:Label ID="LabelAddImageFile" runat="server">Image File:</asp:Label></strong></td>
                <td>
                    <asp:FileUpload ID="ProductImage" runat="server" Width="252px" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="* Image path required." ControlToValidate="ProductImage" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <p></p>
        <br />
        <div class="text-center">

            <asp:Button ID="AddProductButton" runat="server" Text="Add Product" OnClick="AddProductButton_Click" CausesValidation="true" CssClass="addButtonProduct" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LabelAddStatus" runat="server" Style="font-size: medium; color: #0000FF"></asp:Label>
        </div>
        <p></p>
        <br />
        <h3 style="color: #FF3300">Remove Product:</h3>
        <table align="center" style="font-size: large">
            <tr class="text-center">
                <td>
                    <strong>
                        <asp:Label ID="LabelRemoveProduct" runat="server">Product:</asp:Label></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:DropDownList ID="DropDownRemoveProduct" runat="server" ItemType="PhilWare.Models.Product"
                        SelectMethod="GetProducts" AppendDataBoundItems="true"
                        DataTextField="ProductName" DataValueField="ProductID" Width="213px">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <p></p>
        <asp:Button ID="RemoveProductButton" runat="server" Text="Remove Product" OnClick="RemoveProductButton_Click" CausesValidation="false" CssClass="RemoveButtonProduct" Width="177px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="LabelRemoveStatus" runat="server" Style="color: #0000FF; font-size: medium"></asp:Label>

    </div>
</asp:Content>
