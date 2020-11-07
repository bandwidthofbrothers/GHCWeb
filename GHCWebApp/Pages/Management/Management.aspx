<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Management.aspx.cs" Inherits="GHCWebApp.Pages.Management.Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button" PostBackUrl="~/Pages/Management/ManageItems.aspx" Font-Bold="True" Font-Size="Large" Font-Underline="False" OnClick="LinkButton1_Click">Add New Item</asp:LinkButton>
    <br />
    <br />
    <asp:GridView ID="grdMenuItems" runat="server" AutoGenerateColumns="False" DataKeyNames="MenuItemID" DataSourceID="sdsItems" AllowPaging="True" AllowSorting="True" Width="100%" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="MenuItemID" HeaderText="MenuItemID" InsertVisible="False" ReadOnly="True" SortExpression="MenuItemID" />
            <asp:BoundField DataField="MenuItemName" HeaderText="MenuItemName" SortExpression="MenuItemName" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            <asp:BoundField DataField="MenuItemPrice" HeaderText="MenuItemPrice" SortExpression="MenuItemPrice" />
            <asp:BoundField DataField="CurrentMenuItem" HeaderText="CurrentMenuItem" SortExpression="CurrentMenuItem" />
            <asp:BoundField DataField="MenuItemDescription" HeaderText="MenuItemDescription" SortExpression="MenuItemDescription" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <asp:SqlDataSource ID="sdsItems" runat="server" ConnectionString="<%$ ConnectionStrings:group22ConnectionString %>" DeleteCommand="DELETE FROM [MenuItem] WHERE [MenuItemID] = @MenuItemID" InsertCommand="INSERT INTO [MenuItem] ([MenuItemName], [Category], [MenuItemPrice], [CurrentMenuItem], [MenuItemDescription]) VALUES (@MenuItemName, @Category, @MenuItemPrice, @CurrentMenuItem, @MenuItemDescription)" SelectCommand="SELECT * FROM [MenuItem]" UpdateCommand="UPDATE [MenuItem] SET [MenuItemName] = @MenuItemName, [Category] = @Category, [MenuItemPrice] = @MenuItemPrice, [CurrentMenuItem] = @CurrentMenuItem, [MenuItemDescription] = @MenuItemDescription WHERE [MenuItemID] = @MenuItemID">
        <DeleteParameters>
            <asp:Parameter Name="MenuItemID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MenuItemName" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="MenuItemPrice" Type="Decimal" />
            <asp:Parameter Name="CurrentMenuItem" Type="Byte" />
            <asp:Parameter Name="MenuItemDescription" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MenuItemName" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="MenuItemPrice" Type="Decimal" />
            <asp:Parameter Name="CurrentMenuItem" Type="Byte" />
            <asp:Parameter Name="MenuItemDescription" Type="String" />
            <asp:Parameter Name="MenuItemID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
