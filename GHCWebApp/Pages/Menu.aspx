<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="GHCWebApp.Pages.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <b style="font-size: large">The Menu</b> <br /><br /><br />
        
        <asp:Panel ID="pnlProducts" runat="server">
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell><asp:ImageButton ID="Briyani" runat="server" ImageUrl="~/Category Images/Briyani_Icon.jpg" Height="90px" /></asp:TableCell>
                    <asp:TableCell><asp:ImageButton ID="BunnyChow" runat="server" ImageUrl="~/Category Images/BunnyChowIcon.jpg" Width="90px" /></asp:TableCell>
                    <asp:TableCell><asp:ImageButton ID="Chutney" runat="server" ImageUrl="~/Category Images/Chutney_Icon.jpg" Width="90px" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Briyani</asp:TableCell>
                    <asp:TableCell>Bunny Chow</asp:TableCell>
                    <asp:TableCell>Chutney</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Image ID="ColdDrinks" runat="server" ImageUrl="~/Category Images/ColdDrinks_Icon.jpg" Height="90px" /></asp:TableCell>
                    <asp:TableCell><asp:Image ID="Curries" runat="server" ImageUrl="~/Category Images/Curries_Icon.jpg" Height="90px" /></asp:TableCell>
                    <asp:TableCell><asp:Image ID="Dishes" runat="server" ImageUrl="~/Category Images/Dishes_Icon.jpg" Height="90px" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Cold Drinks</asp:TableCell>
                    <asp:TableCell>Curries</asp:TableCell>
                    <asp:TableCell>Dishes</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Image ID="Drinks" runat="server" ImageUrl="~/Category Images/Drinks_Icon.jpg" Height="90px" /></asp:TableCell>
                    <asp:TableCell><asp:Image ID="Extras" runat="server" ImageUrl="~/Category Images/Extras_Icon.jpg" Height="90px" /></asp:TableCell>
                    <asp:TableCell><asp:Image ID="HotDrinks" runat="server" ImageUrl="~/Category Images/HotDrinks_Icon.jpg" Height="90px" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Drinks</asp:TableCell>
                    <asp:TableCell>Extras</asp:TableCell>
                    <asp:TableCell>Hot Drinks</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Image ID="NonVegCurries" runat="server" ImageUrl="~/Category Images/NonVegCurries_Icon.jpg" Height="90px" /></asp:TableCell>
                    <asp:TableCell><asp:Image ID="NonVegDishes" runat="server" ImageUrl="~/Category Images/NonVegDishes_Icon.jpg" Height="90px" /></asp:TableCell>
                    <asp:TableCell><asp:Image ID="Pastas" runat="server" ImageUrl="~/Category Images/Pasta_Icon.jpg" Height="90px" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Non Veg Curries</asp:TableCell>
                    <asp:TableCell>Non Veg Dishes</asp:TableCell>
                    <asp:TableCell>Pastas</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Image ID="Regulars" runat="server" ImageUrl="~/Category Images/Regulars_Icon.jpg" Height="90px" /></asp:TableCell>
                    <asp:TableCell><asp:Image ID="RotiRolls" runat="server" ImageUrl="~/Category Images/RotiRoll_Icon.jpg" Height="90px" /></asp:TableCell>
                    <asp:TableCell><asp:Image ID="ToastedSandwiches" runat="server" ImageUrl="~/Category Images/ToastedSandwiches_Icon.jpg" Height="90px" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Regulars</asp:TableCell>
                    <asp:TableCell>Roti Rolls</asp:TableCell>
                    <asp:TableCell>Toasted Sandwiches</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Image ID="VegCurries" runat="server" ImageUrl="~/Category Images/VegCurries_Icon.jpg" Height="90px" /></asp:TableCell>
                    <asp:TableCell><asp:Image ID="VegDishes" runat="server" ImageUrl="~/Category Images/VegDishes_Icon.jpg" Height="90px" /></asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Veg Curries</asp:TableCell>
                    <asp:TableCell>Veg Dishes</asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>

</asp:Content>
