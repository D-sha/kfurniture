<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ManageSofa.aspx.cs" Inherits="KFurniture.Management.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Use the form below to change items in the sofa database</h1>
    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="SofaID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="SofaID" HeaderText="SofaID" ReadOnly="True" SortExpression="SofaID" />
            <asp:BoundField DataField="SofaName" HeaderText="SofaName" SortExpression="SofaName" />
            <asp:BoundField DataField="SofaColour" HeaderText="SofaColour" SortExpression="SofaColour" />
            <asp:BoundField DataField="SofaHeight" HeaderText="SofaHeight" SortExpression="SofaHeight" />
            <asp:BoundField DataField="SofaDepth" HeaderText="SofaDepth" SortExpression="SofaDepth" />
            <asp:BoundField DataField="SofaLength" HeaderText="SofaLength" SortExpression="SofaLength" />
            <asp:BoundField DataField="SalePrice" HeaderText="SalePrice" SortExpression="SalePrice" />
            <asp:BoundField DataField="DealerPrice" HeaderText="DealerPrice" SortExpression="DealerPrice" />
            <asp:BoundField DataField="Thumbnail" HeaderText="Thumbnail" SortExpression="Thumbnail" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
        </Columns>
    </asp:GridView>
    <h1>Use the from below if you want to add a new item to the sofa database:</h1>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:KFurnitureConnectionString1 %>" DeleteCommand="DELETE FROM [sofa] WHERE [SofaID] = @SofaID" InsertCommand="INSERT INTO [sofa] ([SofaName], [SofaColour], [SofaHeight], [SofaDepth], [SofaLength], [SalePrice], [DealerPrice], [Thumbnail], [Image]) VALUES (@SofaName, @SofaColour, @SofaHeight, @SofaDepth, @SofaLength, @SalePrice, @DealerPrice, @Thumbnail, @Image)" ProviderName="<%$ ConnectionStrings:KFurnitureConnectionString1.ProviderName %>" SelectCommand="SELECT [SofaID], [SofaName], [SofaColour], [SofaHeight], [SofaDepth], [SofaLength], [SalePrice], [DealerPrice], [Thumbnail], [Image] FROM [sofa]" UpdateCommand="UPDATE [sofa] SET [SofaName] = @SofaName, [SofaColour] = @SofaColour, [SofaHeight] = @SofaHeight, [SofaDepth] = @SofaDepth, [SofaLength] = @SofaLength, [SalePrice] = @SalePrice, [DealerPrice] = @DealerPrice, [Thumbnail] = @Thumbnail, [Image] = @Image WHERE [SofaID] = @SofaID">
        <DeleteParameters>
            <asp:Parameter Name="SofaID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SofaName" Type="String" />
            <asp:Parameter Name="SofaColour" Type="String" />
            <asp:Parameter Name="SofaHeight" Type="Int32" />
            <asp:Parameter Name="SofaDepth" Type="Int32" />
            <asp:Parameter Name="SofaLength" Type="Int32" />
            <asp:Parameter Name="SalePrice" Type="Int32" />
            <asp:Parameter Name="DealerPrice" Type="Int32" />
            <asp:Parameter Name="Thumbnail" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SofaName" Type="String" />
            <asp:Parameter Name="SofaColour" Type="String" />
            <asp:Parameter Name="SofaHeight" Type="Int32" />
            <asp:Parameter Name="SofaDepth" Type="Int32" />
            <asp:Parameter Name="SofaLength" Type="Int32" />
            <asp:Parameter Name="SalePrice" Type="Int32" />
            <asp:Parameter Name="DealerPrice" Type="Int32" />
            <asp:Parameter Name="Thumbnail" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="SofaID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="SofaID" DataSourceID="SqlDataSource2" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="SofaID" HeaderText="SofaID" InsertVisible="False" ReadOnly="True" SortExpression="SofaID" />
            <asp:BoundField DataField="SofaName" HeaderText="SofaName" SortExpression="SofaName" />
            <asp:BoundField DataField="SofaColour" HeaderText="SofaColour" SortExpression="SofaColour" />
            <asp:BoundField DataField="SofaHeight" HeaderText="SofaHeight" SortExpression="SofaHeight" />
            <asp:BoundField DataField="SofaDepth" HeaderText="SofaDepth" SortExpression="SofaDepth" />
            <asp:BoundField DataField="SofaLength" HeaderText="SofaLength" SortExpression="SofaLength" />
            <asp:BoundField DataField="SalePrice" HeaderText="SalePrice" SortExpression="SalePrice" />
            <asp:BoundField DataField="DealerPrice" HeaderText="DealerPrice" SortExpression="DealerPrice" />
            <asp:BoundField DataField="Thumbnail" HeaderText="Thumbnail" SortExpression="Thumbnail" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
    <br />

</asp:Content>
