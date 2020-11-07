<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="GHCWebApp.Pages.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
        <table style="width:100%">
            <tr>
                <td>Name</td>
                <td><asp:TextBox ID="txtName" runat="server" Width="80%"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><asp:TextBox ID="txtEmail" runat="server" Width="80%"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td><asp:TextBox ID="txtPhone" runat="server" Width="80%"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Subject</td>
                <td><asp:TextBox ID="txtSubject" runat="server" Width="80%"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Message</td>
                <td><asp:TextBox ID="txtBody" runat="server" Width="80%" Height="150px" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>     
                <td><asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" /></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Label ID="lblStatus" runat="server" Text=""></asp:Label></td>
            </tr>
    </table>
</asp:Content>
