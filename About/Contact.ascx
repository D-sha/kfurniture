<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Contact.ascx.cs" Inherits="KFurniture.About.WebUserControl1" %>
<style type="text/css">
    .auto-style2 {
        height: 101px;
    }
    .auto-style3 {
        width: 423px;
    }
</style>
We Look forward to any questions / feedback you have.
Please fill in the form below!<br />
<table style="width:100%;">
    <tr>
        <td class="auto-style3">Name</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Email</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Phone No</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">
            <asp:TextBox ID="TextBox4" runat="server" Height="67px" Width="689px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="Button1" runat="server" Text="Submit" />
        </td>
    </tr>
</table>

