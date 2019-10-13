<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ManageBed.aspx.cs" Inherits="KFurniture.Management.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Use the folowing controls to make changes the the bedroom database:</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BedID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="BedID" HeaderText="BedID" ReadOnly="True" SortExpression="BedID" />
            <asp:BoundField DataField="Bedname" HeaderText="Bedname" SortExpression="Bedname" />
            <asp:BoundField DataField="Bedcolour" HeaderText="Bedcolour" SortExpression="Bedcolour" />
            <asp:BoundField DataField="Material" HeaderText="Material" SortExpression="Material" />
            <asp:BoundField DataField="BedSize" HeaderText="BedSize" SortExpression="BedSize" />
            <asp:BoundField DataField="SalePrice" HeaderText="SalePrice" SortExpression="SalePrice" />
            <asp:BoundField DataField="DealerPrice" HeaderText="DealerPrice" SortExpression="DealerPrice" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
        </Columns>
    </asp:GridView>
    <br />
    <h1> Use the form below to add a new item to the bed database:</h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KFurnitureConnectionString1 %>" DeleteCommand="DELETE FROM [bedroom] WHERE [BedID] = @BedID" InsertCommand="INSERT INTO [bedroom] ([Bedname], [Bedcolour], [Material], [BedSize], [SalePrice], [DealerPrice], [Image]) VALUES (@Bedname, @Bedcolour, @Material, @BedSize, @SalePrice, @DealerPrice, @Image)" ProviderName="<%$ ConnectionStrings:KFurnitureConnectionString1.ProviderName %>" SelectCommand="SELECT [BedID], [Bedname], [Bedcolour], [Material], [BedSize], [SalePrice], [DealerPrice], [Image] FROM [bedroom]" UpdateCommand="UPDATE [bedroom] SET [Bedname] = @Bedname, [Bedcolour] = @Bedcolour, [Material] = @Material, [BedSize] = @BedSize, [SalePrice] = @SalePrice, [DealerPrice] = @DealerPrice, [Image] = @Image WHERE [BedID] = @BedID">
        <DeleteParameters>
            <asp:Parameter Name="BedID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Bedname" Type="String" />
            <asp:Parameter Name="Bedcolour" Type="String" />
            <asp:Parameter Name="Material" Type="String" />
            <asp:Parameter Name="BedSize" Type="String" />
            <asp:Parameter Name="SalePrice" Type="Int32" />
            <asp:Parameter Name="DealerPrice" Type="Int32" />
            <asp:Parameter Name="Image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Bedname" Type="String" />
            <asp:Parameter Name="Bedcolour" Type="String" />
            <asp:Parameter Name="Material" Type="String" />
            <asp:Parameter Name="BedSize" Type="String" />
            <asp:Parameter Name="SalePrice" Type="Int32" />
            <asp:Parameter Name="DealerPrice" Type="Int32" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="BedID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="BedID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="BedID" HeaderText="BedID" InsertVisible="False" ReadOnly="True" SortExpression="BedID" />
            <asp:BoundField DataField="Bedname" HeaderText="Bedname" SortExpression="Bedname" />
            <asp:BoundField DataField="Bedcolour" HeaderText="Bedcolour" SortExpression="Bedcolour" />
            <asp:BoundField DataField="Material" HeaderText="Material" SortExpression="Material" />
            <asp:BoundField DataField="BedSize" HeaderText="BedSize" SortExpression="BedSize" />
            <asp:BoundField DataField="SalePrice" HeaderText="SalePrice" SortExpression="SalePrice" />
            <asp:BoundField DataField="DealerPrice" HeaderText="DealerPrice" SortExpression="DealerPrice" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
    <br />
<br />
</asp:Content>
