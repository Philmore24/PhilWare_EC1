<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="PhilWare.Admin.UpdateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center">Update Account Information</h2>
    <br />
    ID: 
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
    <br />
    Email: 
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
    <br />
    UserName: 
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
    <br />
    Phone nUmber: 
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="150px" HorizontalAlign="Center" Width="465px">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
        </Columns>
    </asp:GridView>
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="Update" SelectCommandType="StoredProcedure" UpdateCommand="Update" UpdateCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="ID24" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="Email" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="Phone" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox4" Name="Username" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ID24" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
