<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Sofas.aspx.cs" Inherits="KFurniture.Pages.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SofaID" DataSourceID="SqlDataSource1" AllowSorting="True" GridLines="None">
        <Columns>
            <asp:ImageField DataImageUrlField="Thumbnail" DataImageUrlFormatString="~\Images\Sofa\{0}" ItemStyle-Height="150px" ItemStyle-CssClass="thumbs">
<ItemStyle CssClass="thumbs" Height="150px"></ItemStyle>
            </asp:ImageField>
            <asp:BoundField DataField="SofaName" HeaderText="Name" SortExpression="SofaName"/>
            <asp:BoundField DataField="SofaColour" HeaderText="Colour"/>
            <asp:BoundField DataField="SofaHeight" HeaderText="Height" DataFormatString="{0} cm"/>
            <asp:BoundField DataField="SofaDepth" HeaderText="Depth" DataFormatString="{0} cm"/>
            <asp:BoundField DataField="SofaLength" HeaderText="Length" DataFormatString="{0} cm"/>
            <asp:BoundField DataField="SalePrice" HeaderText="Price" SortExpression="SalePrice" DataFormatString="{0:c}" />
            <asp:BoundField DataField="Image" HeaderText="Image" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KFurnitureConnectionString1 %>" SelectCommand="SELECT [SofaID], [SofaName], [SofaColour], [SofaHeight], [SofaDepth], [SofaLength], [SalePrice], [DealerPrice], [Thumbnail], [Image] FROM [sofa]"></asp:SqlDataSource>
</asp:Content>
