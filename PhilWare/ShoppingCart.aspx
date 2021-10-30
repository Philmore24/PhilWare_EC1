<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs"
    Inherits="PhilWare.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/Cart.css" rel="stylesheet" />
    <div>__</div>

    <div id="ShoppingCartTitle" runat="server" class="ContentHead">
        <h3 style="font-size: 30px; color: darkblue"><strong>Shopping Cart</strong></h3>
    </div>
    <asp:GridView ID="CartList" runat="server" AutoGenerateColumns="False"
        ShowFooter="True" GridLines="Vertical" CellPadding="4"
        ItemType="PhilWare.Models.CartItem"
        SelectMethod="GetShoppingCartItems"
        CssClass="table table-striped table-bordered">
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ID"
                SortExpression="ProductID" />
            <asp:BoundField DataField="Product.ProductName" HeaderText="Name" />
            <asp:BoundField DataField="Product.UnitPrice" HeaderText="Price (each)"
                DataFormatString="{0:c}" />
            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:TextBox ID="PurchaseQuantity" Width="40"
                        runat="server" Text="<%#: Item.Quantity %>"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Item Total">
                <ItemTemplate>
                    <%#: String.Format("{0:c}", 
((Convert.ToDouble(Item.Quantity)) * 
Convert.ToDouble(Item.Product.UnitPrice)))%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Remove Item">
                <ItemTemplate>
                    <asp:CheckBox ID="Remove" runat="server"></asp:CheckBox>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <div>
        <p></p>
        <strong>
            <asp:Label ID="LabelTotalText" runat="server" Text="Order Total: "></asp:Label>
            <asp:Label ID="lblTotal" runat="server"
                EnableViewState="false"></asp:Label>
        </strong>
    </div>
    <br />
    <table>
        <tr>
            <td>
                <asp:Button ID="UpdateBtn" runat="server" Text="Update" CssClass="buttondesign"
                    OnClick="UpdateBtn_Click" />
            </td>
            <td>
                <asp:Button ID="CheckoutClear" runat="server" Text="Checkout" OnClick="CheckoutCart " CssClass="buttondesign" /><!--Checkout Placeholder -->
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Button ID="ContinueShop" runat="server" Text="Continue Shopping" CssClass="buttondesign" OnClick="ContinueShop_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
