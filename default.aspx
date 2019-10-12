<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KFurniture.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LoginView ID="LoginView1" runat="server"> 
        <AnonymousTemplate>
            <asp:Login ID="Login1" runat="server" CreateUserText="Register an account" CreateUserUrl="~/Register.ascx">
            </asp:Login>
         </AnonymousTemplate>
     </asp:Loginview>
     <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Path="~/Scripts/jquery-3.4.1.min.js" />
            </Scripts>
      </asp:ScriptManager>
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
    <p>
        Koala Furniture is Australia&#39;s Best Value Sofas and Bedding story.<br /> You can now shop and buy furniture online! View our sofas, and bedroom furniture Package Deals!<br />
        Our porduct are built to last. With 3 years standars warranty on all products and 30 days change of mind return guarantee.
    </p>
    <p>
        We also have the lowest prices and offer a range of delivery options.<br /> Browse our range of Sofas and Bedrooms now to buy Aussie made comfort at a budget that suits everyone.
    </p>
</asp:Content>
