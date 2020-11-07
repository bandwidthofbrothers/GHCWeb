<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="ManageItems.aspx.cs" Inherits="GHCWebApp.Pages.Management.ManageItems" %>

<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    Name:</p>
<p>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
</p>
<p>
    Category:</p>
<p>
    <asp:DropDownList ID="ddlCategory" runat="server">
        <asp:ListItem>Briyani</asp:ListItem>
        <asp:ListItem>Bunnies</asp:ListItem>
        <asp:ListItem>Chutney</asp:ListItem>
        <asp:ListItem>Veg Curries</asp:ListItem>
        <asp:ListItem>Non-Veg Curries</asp:ListItem>
        <asp:ListItem>Veg Dishes</asp:ListItem>
        <asp:ListItem>Non-Veg Dishes</asp:ListItem>
        <asp:ListItem>Hot Drinks</asp:ListItem>
        <asp:ListItem>Cold Drinks</asp:ListItem>
        <asp:ListItem>Extras/Sides</asp:ListItem>
        <asp:ListItem>Pasta</asp:ListItem>
        <asp:ListItem>Regulars</asp:ListItem>
        <asp:ListItem>Roti Rolls</asp:ListItem>
        <asp:ListItem>Specials</asp:ListItem>
        <asp:ListItem>Toasted Sandwiches</asp:ListItem>
    </asp:DropDownList>
</p>
<p>
    Price:</p>
<p>
    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
</p>
<p>
    Image:</p>
<p>
    <asp:DropDownList ID="ddlImage" runat="server" Width="236px">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
</p>
<p>
    Description:</p>
<p>
    <asp:TextBox ID="txtDesc" runat="server" Height="76px" Width="265px"></asp:TextBox>
</p>
<p>
    Currently on the menu:</p>
<p>
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem Value="1">Yes</asp:ListItem>
        <asp:ListItem Value="0">No</asp:ListItem>
    </asp:DropDownList>
</p>
<p>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
</p>
<p>
    <asp:Label ID="lblResult" runat="server"></asp:Label>
</p>
<p>
    &nbsp;</p>
</asp:Content>
