<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdminMenu.ascx.cs" 
    Inherits="NoveLandProject.UserControls.AdminMenu" %>


<asp:Menu ID="Menu1" runat="server" CssClass="menuStyle">
    <StaticMenuItemStyle CssClass="menuitemstyle" />
    <Items>
        
        <asp:MenuItem NavigateUrl="~/EditDeleteItems.aspx" Text="Edit &amp; Delete Novel" Value="Edit &amp; Delete Novels"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/AddNewItems.aspx" Text="Add New Novel" Value="Add New Novel"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/AdminAccount.aspx" Text="Edit User" Value="Administer Account"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/ViewOrder.aspx" Text="View Order" Value="View All Order"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/ViewEvaluation.aspx" Text="Evaluation" Value="View All Evaluation"></asp:MenuItem>

    </Items>
</asp:Menu>



