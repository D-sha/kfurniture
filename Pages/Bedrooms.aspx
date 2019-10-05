<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Bedrooms.aspx.cs" Inherits="KFurniture.Pages.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="fullImg">
        i<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BedID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
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
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="BedID" DataSourceID="SqlDataSource1" Height="50px" Width="229px">
            <Fields>
                <asp:BoundField DataField="BedID" HeaderText="BedID" InsertVisible="False" ReadOnly="True" SortExpression="BedID" />
                <asp:BoundField DataField="Bedname" HeaderText="Bedname" SortExpression="Bedname" />
                <asp:BoundField DataField="Bedcolour" HeaderText="Bedcolour" SortExpression="Bedcolour" />
                <asp:BoundField DataField="Material" HeaderText="Material" SortExpression="Material" />
                <asp:BoundField DataField="BedSize" HeaderText="BedSize" SortExpression="BedSize" />
                <asp:BoundField DataField="SalePrice" HeaderText="SalePrice" SortExpression="SalePrice" />
                <asp:BoundField DataField="DealerPrice" HeaderText="DealerPrice" SortExpression="DealerPrice" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            </Fields>
        </asp:DetailsView>
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
        <table>
            <tr>
                <td>
                    <img src="../Images/Bbedroom-1940169_1920.jpg" title="Fancy bed" /></td>
                <td>
                    <img src="../Images/Bapartment-2558277_1280.jpg" title="Bed and desk package" /></td>
            </tr>
            <tr>
                <td>Image by <a href="https://pixabay.com/users/shadowfirearts-3107153/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=1940169">Solomon Rodgers</a> from <a href="https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=1940169">Pixabay</a></td>
                <td>Image by <a href="https://pixabay.com/users/shadowfirearts-3107153/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=1940169">Solomon Rodgers</a> from <a href="https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=1940169">Pixabay</a></td>
            </tr>
            <tr>
                <td>
                    <img src="../Images/Bcreate-3532937_1280.jpg" /></td>
                <td>
                    <img src="../Images/Bbedroom-3185433_1280.jpg" title="bed" /></td>
            </tr>
            <tr>
                <td>Image by <a href="https://pixabay.com/users/u_jup1hbno-8566532/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=3532937">u_jup1hbno</a> from <a href="https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=3532937">Pixabay</a></td>
                <td>Image by <a href="https://pixabay.com/users/tomasines-6485733/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=3185433">tomasines</a> from <a href="https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=3185433">Pixabay</a></td>
                <td>Image by <a href="https://pixabay.com/users/tomasines-6485733/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=3185433">tomasines</a> from <a href="https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=3185433">Pixabay</a></td>

            </tr>
        </table>
    </div>
</asp:Content>
