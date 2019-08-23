<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="OurRange.aspx.cs" Inherits="KFurniture.Pages.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="thumbs">
        <table>
            <tr>
                <td><a href="/Pages/Sofas.aspx">
                    <img src="../Images/SLiving_room_Germany_2006.jpg" title="Browse out Sofa Range" /></a><br />
                </td>
                <td><a href="Bedrooms.aspx">
                    <img src="../Images/Bbedroom-1940169_1920.jpg" title="Browse out Bedroom range" /></a>
            </tr>
            <tr>
                <td>Browse out Huge range of quality sofas
                </td>
                <td>Browse our extensive bedroom furniture range
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
