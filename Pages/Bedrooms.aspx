<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Bedrooms.aspx.cs" Inherits="KFurniture.Pages.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
      Filter by material:    
      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Material" DataValueField="Material">
          <asp:ListItem Value="%">All</asp:ListItem>
          <asp:ListItem Value="wood">Wood</asp:ListItem>
      </asp:DropDownList>
    
          &nbsp;Filter by size:<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BedID" DataSourceID="SqlDataSource1" GridLines="None" HorizontalAlign="Center">
              <Columns>
                  <asp:BoundField DataField="BedID" HeaderText="BedID" SortExpression="BedID" InsertVisible="False" ReadOnly="True" />
                  <asp:BoundField DataField="Bedname" HeaderText="Bedname" SortExpression="Bedname" />
                  <asp:BoundField DataField="Bedcolour" HeaderText="Bedcolour" SortExpression="Bedcolour" />
                  <asp:BoundField DataField="Material" HeaderText="Material" SortExpression="Material" />
                  <asp:BoundField DataField="BedSize" HeaderText="BedSize" SortExpression="BedSize" />
                  <asp:BoundField DataField="SalePrice" HeaderText="SalePrice" SortExpression="SalePrice" />
                  <asp:BoundField DataField="DealerPrice" HeaderText="DealerPrice" SortExpression="DealerPrice" />
                  <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
              </Columns>
          </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KFurnitureConnectionString1 %>" SelectCommand="SELECT [BedID], [Bedname], [Bedcolour], [Material], [BedSize], [SalePrice], [DealerPrice], [Image] FROM [bedroom] ">
 <%--  <filterparameters>
      <asp:controlparameter controlid="MaterialDropDown" propertyname="Text" Name="Material"/>
   </filterparameters>--%>
        </asp:SqlDataSource>
      

</asp:Content>
