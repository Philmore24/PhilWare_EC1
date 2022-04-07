<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="PhilWare.Admin.OrderHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center">Order History</h2>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderDetailId" DataSourceID="SqlDataSource1" Height="292px" HorizontalAlign="Center" Width="627px">
        <Columns>
            <asp:BoundField DataField="OrderDetailId" HeaderText="OrderDetailId" InsertVisible="False" ReadOnly="True" SortExpression="OrderDetailId" />
            <asp:BoundField DataField="OrderId" HeaderText="OrderId" SortExpression="OrderId" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PhilWare %>" SelectCommand="SELECT * FROM [OrderDetails]"></asp:SqlDataSource>
</asp:Content>
